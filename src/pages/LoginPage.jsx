import React, { useState, useContext, useEffect } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { AuthContext } from '../contexts/AuthContext';
import { supabase } from '../lib/supabase';
import { processInput } from '../utils/formatters';
import '../styles/auth.css';

export default function LoginPage() {
  const [isLogin, setIsLogin] = useState(true);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState(null);
  const [showSuccessModal, setShowSuccessModal] = useState(false);
  const { signIn, signUp } = useContext(AuthContext);
  const navigate = useNavigate();

  // Form states
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [fname, setFname] = useState('');
  const [mname, setMname] = useState('');
  const [lname, setLname] = useState('');

  const [showPassword, setShowPassword] = useState(false);

  // Security states
  const [failedAttempts, setFailedAttempts] = useState(0);
  const [lockoutEndTime, setLockoutEndTime] = useState(null);
  const [lockoutMessage, setLockoutMessage] = useState('');
  const [passwordStrength, setPasswordStrength] = useState({ score: 0, feedback: '' });

  // Lockout timer effect
  useEffect(() => {
    let timer;
    if (lockoutEndTime) {
      timer = setInterval(() => {
        const now = new Date().getTime();
        const remaining = Math.ceil((lockoutEndTime - now) / 1000);
        if (remaining <= 0) {
          setLockoutEndTime(null);
          setLockoutMessage('');
          setFailedAttempts(0);
        } else {
          setLockoutMessage(`Too many failed attempts. Try again in ${remaining}s`);
        }
      }, 1000);
    }
    return () => clearInterval(timer);
  }, [lockoutEndTime]);

  const checkPasswordStrength = (pass) => {
    let score = 0;
    let feedback = [];
    if (pass.length >= 8) score += 1;
    else feedback.push('8+ chars');
    if (/[A-Z]/.test(pass)) score += 1;
    else feedback.push('1 uppercase');
    if (/[a-z]/.test(pass)) score += 1;
    else feedback.push('1 lowercase');
    if (/[0-9]/.test(pass)) score += 1;
    else feedback.push('1 number');
    if (/[^A-Za-z0-9]/.test(pass)) score += 1;
    else feedback.push('1 special char');
    
    setPasswordStrength({ 
      score, 
      feedback: score === 5 ? 'Strong password!' : `Needs: ${feedback.join(', ')}` 
    });
  };

  const handlePasswordChange = (e) => {
    const val = e.target.value;
    setPassword(val);
    if (!isLogin) {
      checkPasswordStrength(val);
    }
  };

  const handleToggleForm = (loginState) => {
    setIsLogin(loginState);
    setError(null);
    setPassword('');
    setPasswordStrength({ score: 0, feedback: '' });
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    
    if (lockoutEndTime) {
      setError(lockoutMessage);
      return;
    }

    setLoading(true);
    setError(null);

    try {
      if (isLogin) {
        const { _v1: loginEmail, _v2: loginPassword } = processInput(email, password);
        const { error: signInError } = await signIn(loginEmail, loginPassword);
        
        if (signInError) {
          const newFailed = failedAttempts + 1;
          setFailedAttempts(newFailed);
          if (newFailed >= 3) {
            setLockoutEndTime(new Date().getTime() + 30000); // 30s lockout
            throw new Error('Too many failed attempts. Account locked for 30 seconds.');
          }
          throw signInError;
        }
        
        setFailedAttempts(0);
        navigate('/');
      } else {
        if (passwordStrength.score < 5) {
          throw new Error('Please meet all password requirements.');
        }

        const fullname = `${fname} ${mname} ${lname}`.replace(/\s+/g, ' ').trim();
        const username = `${fname}${lname}`.toLowerCase();

        const { data, error: signUpError } = await signUp(email, password, {
          data: {
            full_name: fullname,
            username: username
          }
        });

        if (signUpError) throw signUpError;

        // Regardless of whether a session is returned or if confirmation is needed,
        // we show the success modal. The text can be generic.
        setShowSuccessModal(true);
      }
    } catch (err) {
      setError(err.message || 'An error occurred.');
    } finally {
      setLoading(false);
    }
  };

  // Get color based on password strength
  const getStrengthColor = () => {
    if (passwordStrength.score <= 2) return 'bg-danger';
    if (passwordStrength.score <= 4) return 'bg-warning';
    return 'bg-success';
  };

  return (
    <section className="auth-section loaded">
      <div className="bg-pattern"></div>
      <div className="floating-elements">
        <div className="floating-siomai"></div>
        <div className="floating-siopao"></div>
      </div>

      <div className="auth-container">
        <div className="back-button-container">
          <Link to="/" className="back-btn">
            <i className="bi bi-arrow-left me-2"></i>
            Back to Homepage
          </Link>
        </div>

        <div className="brand-section">
          <h1 className="brand-title">
            Welcome to <span className="sio-highlight">Sio</span><span className="sio-highlight">Sio</span>
          </h1>
          <p className="brand-subtitle">Your favorite Siomai and Siopao store</p>
        </div>

        <div className="form-toggle">
          <button className={`toggle-btn ${isLogin ? 'active' : ''}`} onClick={() => handleToggleForm(true)}>
            <i className="bi bi-box-arrow-in-right me-2"></i>
            Login
          </button>
          <button className={`toggle-btn ${!isLogin ? 'active' : ''}`} onClick={() => handleToggleForm(false)}>
            <i className="bi bi-person-plus me-2"></i>
            Register
          </button>
        </div>

        {(error || lockoutMessage) && (
          <div className="alert alert-danger mb-4">
            <i className="bi bi-exclamation-triangle-fill me-2"></i>
            {lockoutMessage || error}
          </div>
        )}

        {isLogin ? (
          <form className="auth-form" onSubmit={handleSubmit}>
            <div className="form-header">
              <h2>Welcome Back!</h2>
              <p>Sign in to access your favorites and orders</p>
            </div>

            <div className="form-group">
              <label className="input-label">Email Address</label>
              <div className={`input-container ${email ? 'has-value' : ''}`}>
                <i className="bi bi-envelope input-icon"></i>
                <input type="text" required value={email} onChange={(e) => setEmail(e.target.value)} disabled={!!lockoutEndTime} />
                <label className="floating-label">Email Address</label>
              </div>
            </div>

            <div className="form-group">
              <label className="input-label">Password</label>
              <div className={`input-container ${password ? 'has-value' : ''}`}>
                <i className="bi bi-lock input-icon"></i>
                <input type={showPassword ? 'text' : 'password'} required value={password} onChange={handlePasswordChange} disabled={!!lockoutEndTime} />
                <label className="floating-label">Password</label>
                <button type="button" className="password-toggle" onClick={() => setShowPassword(!showPassword)} disabled={!!lockoutEndTime}>
                  <i className={`bi bi-eye${showPassword ? '-slash' : ''}`}></i>
                </button>
              </div>
            </div>

            <div className="forgot-password">
              <Link to="/forgot-password">
                <i className="bi bi-key me-2"></i>
                Forgot Password?
              </Link>
            </div>

            <button type="submit" className={`auth-btn ${loading || lockoutEndTime ? 'loading' : ''}`} disabled={loading || !!lockoutEndTime}>
              <i className="bi bi-box-arrow-in-right me-2"></i>
              <span style={{ opacity: (loading || lockoutEndTime) ? 0 : 1 }}>Sign In</span>
              <div className="btn-loader" style={{ display: (loading || lockoutEndTime) ? 'block' : 'none' }}></div>
            </button>
          </form>
        ) : (
          <form className="auth-form" onSubmit={handleSubmit}>
            <div className="form-header">
              <h2>Create Account</h2>
              <p>Join the SioSio family today!</p>
            </div>

            <div className="form-row">
              <div className="form-group">
                <label className="input-label">First Name</label>
                <div className={`input-container ${fname ? 'has-value' : ''}`}>
                  <i className="bi bi-person input-icon"></i>
                  <input type="text" required value={fname} onChange={(e) => setFname(e.target.value)} />
                  <label className="floating-label">First Name</label>
                </div>
              </div>
              <div className="form-group">
                <label className="input-label">Middle Name</label>
                <div className={`input-container ${mname ? 'has-value' : ''}`}>
                  <i className="bi bi-person input-icon"></i>
                  <input type="text" value={mname} onChange={(e) => setMname(e.target.value)} />
                  <label className="floating-label">Middle Name</label>
                </div>
              </div>
            </div>

            <div className="form-group">
              <label className="input-label">Last Name</label>
              <div className={`input-container ${lname ? 'has-value' : ''}`}>
                <i className="bi bi-person input-icon"></i>
                <input type="text" required value={lname} onChange={(e) => setLname(e.target.value)} />
                <label className="floating-label">Last Name</label>
              </div>
            </div>

            <div className="form-group">
              <label className="input-label">Email Address</label>
              <div className={`input-container ${email ? 'has-value' : ''}`}>
                <i className="bi bi-envelope input-icon"></i>
                <input type="email" required value={email} onChange={(e) => setEmail(e.target.value)} />
                <label className="floating-label">Email Address</label>
              </div>
            </div>

            <div className="form-group mb-2">
              <label className="input-label">Password</label>
              <div className={`input-container ${password ? 'has-value' : ''}`}>
                <i className="bi bi-lock input-icon"></i>
                <input type={showPassword ? 'text' : 'password'} required value={password} onChange={handlePasswordChange} />
                <label className="floating-label">Password</label>
                <button type="button" className="password-toggle" onClick={() => setShowPassword(!showPassword)}>
                  <i className={`bi bi-eye${showPassword ? '-slash' : ''}`}></i>
                </button>
              </div>
              {/* Password Strength Meter */}
              {password && (
                <div className="mt-2">
                  <div className="progress" style={{ height: '6px' }}>
                    <div 
                      className={`progress-bar ${getStrengthColor()}`} 
                      role="progressbar" 
                      style={{ width: `${(passwordStrength.score / 5) * 100}%` }}
                    ></div>
                  </div>
                  <small className={`d-block mt-1 ${passwordStrength.score === 5 ? 'text-success' : 'text-danger'}`}>
                    {passwordStrength.feedback}
                  </small>
                </div>
              )}
            </div>

            <button type="submit" className={`auth-btn mt-3 ${loading ? 'loading' : ''}`} disabled={loading || (password && passwordStrength.score < 5)}>
              <i className="bi bi-person-plus me-2"></i>
              <span style={{ opacity: loading ? 0 : 1 }}>Create Account</span>
              <div className="btn-loader" style={{ display: loading ? 'block' : 'none' }}></div>
            </button>
          </form>
        )}
      </div>

      {/* Success Modal */}
      {showSuccessModal && (
        <div className="position-fixed top-0 start-0 w-100 h-100 d-flex align-items-center justify-content-center bg-dark bg-opacity-75" style={{ zIndex: 9999 }}>
          <div className="card shadow-lg border-0 text-center p-4 animate__animated animate__zoomIn" style={{ maxWidth: '400px', borderRadius: '1rem' }}>
            <div className="card-body">
              <div className="mb-4">
                <i className="bi bi-check-circle-fill text-success" style={{ fontSize: '4rem' }}></i>
              </div>
              <h3 className="fw-bold mb-3">Account Created!</h3>
              <p className="text-muted mb-4">Welcome to the SioSio family. Your account has been successfully created. If email confirmation is enabled, please check your inbox before logging in.</p>
              <button
                className="btn btn-danger btn-lg w-100 rounded-pill fw-bold"
                onClick={() => {
                  setShowSuccessModal(false);
                  setIsLogin(true);
                  setPassword('');
                }}
              >
                Go to Login <i className="bi bi-arrow-right ms-2"></i>
              </button>
            </div>
          </div>
        </div>
      )}
    </section>
  );
}
