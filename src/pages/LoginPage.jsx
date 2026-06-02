import React, { useState, useContext } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { AuthContext } from '../contexts/AuthContext';
import '../styles/auth.css';

export default function LoginPage() {
  const [isLogin, setIsLogin] = useState(true);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState(null);
  const { signIn, signUp } = useContext(AuthContext);
  const navigate = useNavigate();

  // Form states
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [fname, setFname] = useState('');
  const [mname, setMname] = useState('');
  const [lname, setLname] = useState('');

  const [showPassword, setShowPassword] = useState(false);

  const handleSubmit = async (e) => {
    e.preventDefault();
    setLoading(true);
    setError(null);

    try {
      if (isLogin) {
        const { error: signInError } = await signIn(email, password);
        if (signInError) throw signInError;
        navigate('/');
      } else {
        const fullname = `${fname} ${mname} ${lname}`.replace(/\s+/g, ' ').trim();
        const username = `${fname}${lname}`.toLowerCase();
        
        const { data, error: signUpError } = await signUp(email, password, {
          data: {
            full_name: fullname,
            username: username
          }
        });
        
        if (signUpError) throw signUpError;
        
        // If email confirmation is disabled in Supabase, a session is returned immediately
        if (data?.session) {
          navigate('/');
        } else {
          // Otherwise, redirect to verify page
          navigate('/verify', { state: { email } });
        }
      }
    } catch (err) {
      setError(err.message || 'An error occurred.');
    } finally {
      setLoading(false);
    }
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
          <button className={`toggle-btn ${isLogin ? 'active' : ''}`} onClick={() => { setIsLogin(true); setError(null); }}>
            <i className="bi bi-box-arrow-in-right me-2"></i>
            Login
          </button>
          <button className={`toggle-btn ${!isLogin ? 'active' : ''}`} onClick={() => { setIsLogin(false); setError(null); }}>
            <i className="bi bi-person-plus me-2"></i>
            Register
          </button>
        </div>

        {error && (
          <div className="alert alert-danger mb-4">
            <i className="bi bi-exclamation-triangle-fill me-2"></i>
            {error}
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
                <input type="email" required value={email} onChange={(e) => setEmail(e.target.value)} />
                <label className="floating-label">Email Address</label>
              </div>
            </div>
            
            <div className="form-group">
              <label className="input-label">Password</label>
              <div className={`input-container ${password ? 'has-value' : ''}`}>
                <i className="bi bi-lock input-icon"></i>
                <input type={showPassword ? 'text' : 'password'} required value={password} onChange={(e) => setPassword(e.target.value)} />
                <label className="floating-label">Password</label>
                <button type="button" className="password-toggle" onClick={() => setShowPassword(!showPassword)}>
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
            
            <button type="submit" className={`auth-btn ${loading ? 'loading' : ''}`} disabled={loading}>
              <i className="bi bi-box-arrow-in-right me-2"></i>
              <span style={{ opacity: loading ? 0 : 1 }}>Sign In</span>
              <div className="btn-loader" style={{ display: loading ? 'block' : 'none' }}></div>
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
            
            <div className="form-group">
              <label className="input-label">Password</label>
              <div className={`input-container ${password ? 'has-value' : ''}`}>
                <i className="bi bi-lock input-icon"></i>
                <input type={showPassword ? 'text' : 'password'} required minLength="6" value={password} onChange={(e) => setPassword(e.target.value)} />
                <label className="floating-label">Password (min. 6 characters)</label>
                <button type="button" className="password-toggle" onClick={() => setShowPassword(!showPassword)}>
                  <i className={`bi bi-eye${showPassword ? '-slash' : ''}`}></i>
                </button>
              </div>
            </div>
            
            <button type="submit" className={`auth-btn ${loading ? 'loading' : ''}`} disabled={loading}>
              <i className="bi bi-person-plus me-2"></i>
              <span style={{ opacity: loading ? 0 : 1 }}>Create Account</span>
              <div className="btn-loader" style={{ display: loading ? 'block' : 'none' }}></div>
            </button>
          </form>
        )}
      </div>
    </section>
  );
}
