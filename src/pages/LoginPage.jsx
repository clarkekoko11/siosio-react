import React, { useState, useContext, useEffect } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { AuthContext } from '../contexts/AuthContext';
import { supabase } from '../lib/supabase';
import { processInput } from '../utils/formatters';
import { motion, AnimatePresence } from 'framer-motion';

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

        setShowSuccessModal(true);
      }
    } catch (err) {
      setError(err.message || 'An error occurred.');
    } finally {
      setLoading(false);
    }
  };

  const getStrengthColor = () => {
    if (passwordStrength.score <= 2) return 'bg-red-500';
    if (passwordStrength.score <= 4) return 'bg-yellow-500';
    return 'bg-green-500';
  };

  return (
    <div className="min-h-screen bg-sio-bg flex items-center justify-center py-20 px-4 sm:px-6 lg:px-8 relative overflow-hidden font-sans text-sio-text selection:bg-sio-yellow selection:text-sio-dark">
      
      <div className="absolute inset-0 bg-[url('/images/Homebg.jpg')] bg-cover bg-center opacity-10 z-0 mix-blend-multiply"></div>

      <div className="max-w-md w-full relative z-10">
        
        {/* Navigation */}
        <div className="mb-10 text-center">
          <Link to="/" className="text-xs uppercase tracking-widest text-sio-text-muted hover:text-sio-yellow inline-flex items-center transition-colors">
            <i className="bi bi-arrow-left mr-2"></i> Return to Menu
          </Link>
        </div>

        {/* Card */}
        <motion.div layout className="bg-sio-surface border-[0.5px] border-sio-border overflow-hidden shadow-2xl">
          
          <motion.div layout="position" className="p-10 pb-6 text-center border-b-[0.5px] border-sio-border">
            <h1 className="text-4xl font-heading font-semibold tracking-tight text-sio-text">Sio<span className="text-sio-yellow italic">Sio</span></h1>
          </motion.div>

          <motion.div layout className="p-10 pt-8">
            
            {/* Toggle */}
            <div className="flex p-1 mb-10 bg-sio-bg rounded-lg border-[0.5px] border-sio-border">
              <button 
                onClick={() => handleToggleForm(true)}
                className={`flex-1 py-3 rounded-md text-xs uppercase tracking-widest transition-all ${isLogin ? 'bg-white text-sio-yellow shadow-sm font-bold' : 'text-sio-text-muted hover:text-sio-text font-medium'}`}
              >
                Sign In
              </button>
              <button 
                onClick={() => handleToggleForm(false)}
                className={`flex-1 py-3 rounded-md text-xs uppercase tracking-widest transition-all ${!isLogin ? 'bg-white text-sio-yellow shadow-sm font-bold' : 'text-sio-text-muted hover:text-sio-text font-medium'}`}
              >
                Register
              </button>
            </div>

            {(error || lockoutMessage) && (
              <div className="bg-red-50 text-red-600 p-4 rounded-lg flex items-center mb-6 text-sm font-medium">
                <i className="bi bi-exclamation-triangle-fill mr-3 text-lg"></i>
                {lockoutMessage || error}
              </div>
            )}

            <AnimatePresence mode="popLayout" initial={false}>
              {isLogin ? (
                <motion.form 
                  key="login"
                  initial={{ opacity: 0, x: -20 }} animate={{ opacity: 1, x: 0 }} exit={{ opacity: 0, x: 20 }} transition={{ duration: 0.2 }}
                  onSubmit={handleSubmit} className="space-y-5 w-full"
                >
                  <div>
                    <label className="block text-xs uppercase tracking-widest text-sio-text-muted mb-3">Email Address</label>
                    <div className="relative">
                      <input type="email" required className="input-field bg-transparent border-b border-sio-border rounded-none px-0 py-2 focus:ring-0 focus:border-sio-yellow text-sio-text text-sm" value={email} onChange={(e) => setEmail(e.target.value)} disabled={!!lockoutEndTime} placeholder="Email" />
                    </div>
                  </div>

                  <div>
                    <div className="flex justify-between items-end mb-3">
                      <label className="block text-xs uppercase tracking-widest text-sio-text-muted">Password</label>
                      <Link to="/forgot-password" className="text-xs uppercase tracking-widest text-sio-yellow hover:text-white transition-colors">Forgot?</Link>
                    </div>
                    <div className="relative">
                      <input type={showPassword ? 'text' : 'password'} required className="input-field bg-transparent border-b border-sio-border rounded-none px-0 py-2 pr-10 focus:ring-0 focus:border-sio-yellow text-sio-text text-sm" value={password} onChange={handlePasswordChange} disabled={!!lockoutEndTime} placeholder="Password" />
                      <button type="button" className="absolute inset-y-0 right-0 pr-2 flex items-center text-sio-text-muted hover:text-sio-yellow transition-colors" onClick={() => setShowPassword(!showPassword)} disabled={!!lockoutEndTime}>
                        <i className={`bi bi-eye${showPassword ? '-slash' : ''}`}></i>
                      </button>
                    </div>
                  </div>

                  <div className="pt-6">
                    <button type="submit" className="w-full btn-primary py-4 text-xs uppercase tracking-widest flex justify-center items-center" disabled={loading || !!lockoutEndTime}>
                      {loading || lockoutEndTime ? <svg className="animate-spin h-4 w-4 text-white" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"><circle className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4"></circle><path className="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path></svg> : "Sign In"}
                    </button>
                  </div>
                </motion.form>
              ) : (
                <motion.form 
                  key="register"
                  initial={{ opacity: 0, x: 20 }} animate={{ opacity: 1, x: 0 }} exit={{ opacity: 0, x: -20 }} transition={{ duration: 0.2 }}
                  onSubmit={handleSubmit} className="space-y-5 w-full"
                >
                  <div className="grid grid-cols-2 gap-6">
                    <div>
                      <label className="block text-xs uppercase tracking-widest text-sio-text-muted mb-3">First Name</label>
                      <input type="text" required className="input-field bg-transparent border-b border-sio-border rounded-none px-0 py-2 focus:ring-0 focus:border-sio-yellow text-sio-text text-sm" value={fname} onChange={(e) => setFname(e.target.value)} placeholder="Juan" />
                    </div>
                    <div>
                      <label className="block text-xs uppercase tracking-widest text-sio-text-muted mb-3">Middle Name</label>
                      <input type="text" className="input-field bg-transparent border-b border-sio-border rounded-none px-0 py-2 focus:ring-0 focus:border-sio-yellow text-sio-text text-sm" value={mname} onChange={(e) => setMname(e.target.value)} placeholder="(Optional)" />
                    </div>
                  </div>

                  <div>
                    <label className="block text-xs uppercase tracking-widest text-sio-text-muted mb-3">Last Name</label>
                    <input type="text" required className="input-field bg-transparent border-b border-sio-border rounded-none px-0 py-2 focus:ring-0 focus:border-sio-yellow text-sio-text text-sm" value={lname} onChange={(e) => setLname(e.target.value)} placeholder="Dela Cruz" />
                  </div>

                  <div>
                    <label className="block text-xs uppercase tracking-widest text-sio-text-muted mb-3">Email Address</label>
                    <input type="email" required className="input-field bg-transparent border-b border-sio-border rounded-none px-0 py-2 focus:ring-0 focus:border-sio-yellow text-sio-text text-sm" value={email} onChange={(e) => setEmail(e.target.value)} placeholder="juan@example.com" />
                  </div>

                  <div>
                    <label className="block text-xs uppercase tracking-widest text-sio-text-muted mb-3">Password</label>
                    <div className="relative">
                      <input type={showPassword ? 'text' : 'password'} required className="input-field bg-transparent border-b border-sio-border rounded-none px-0 py-2 pr-10 focus:ring-0 focus:border-sio-yellow text-sio-text text-sm" value={password} onChange={handlePasswordChange} placeholder="Password" />
                      <button type="button" className="absolute inset-y-0 right-0 pr-2 flex items-center text-sio-text-muted hover:text-sio-yellow transition-colors" onClick={() => setShowPassword(!showPassword)}>
                        <i className={`bi bi-eye${showPassword ? '-slash' : ''}`}></i>
                      </button>
                    </div>
                    {password && (
                      <div className="mt-2">
                        <div className="w-full bg-gray-200 rounded-full h-1.5 mb-1 overflow-hidden">
                          <div className={`h-1.5 rounded-full ${getStrengthColor()} transition-all duration-300`} style={{ width: `${(passwordStrength.score / 5) * 100}%` }}></div>
                        </div>
                        <p className={`text-xs font-semibold ${passwordStrength.score === 5 ? 'text-green-600' : 'text-red-500'}`}>{passwordStrength.feedback}</p>
                      </div>
                    )}
                  </div>

                  <div className="pt-6">
                    <button type="submit" className="w-full btn-primary py-4 text-xs uppercase tracking-widest flex justify-center items-center" disabled={loading || (password && passwordStrength.score < 5)}>
                      {loading ? <svg className="animate-spin h-4 w-4 text-white" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"><circle className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4"></circle><path className="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path></svg> : "Create Account"}
                    </button>
                  </div>
                </motion.form>
              )}
            </AnimatePresence>
          </motion.div>
        </motion.div>
      </div>

      {/* Success Modal */}
      <AnimatePresence>
        {showSuccessModal && (
          <motion.div 
            initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            className="fixed inset-0 z-50 flex items-center justify-center bg-black bg-opacity-70 p-4"
          >
            <motion.div 
              initial={{ scale: 0.9, opacity: 0 }} animate={{ scale: 1, opacity: 1 }} exit={{ scale: 0.9, opacity: 0 }}
              className="bg-sio-surface rounded-2xl shadow-2xl border-[0.5px] border-sio-border p-8 max-w-sm w-full text-center"
            >
              <div className="w-20 h-20 bg-sio-bg text-sio-yellow rounded-full flex items-center justify-center mx-auto mb-6 border-[0.5px] border-sio-yellow">
                <i className="bi bi-check-lg text-4xl"></i>
              </div>
              <h3 className="text-2xl font-bold text-sio-text mb-3">Account Created!</h3>
              <p className="text-sio-text-muted mb-8 text-sm font-light">Welcome to the SioSio family. Your account has been successfully created.</p>
              <button
                className="w-full btn-primary py-3 font-bold"
                onClick={() => {
                  setShowSuccessModal(false);
                  setIsLogin(true);
                  setPassword('');
                }}
              >
                Go to Login
              </button>
            </motion.div>
          </motion.div>
        )}
      </AnimatePresence>
    </div>
  );
}
