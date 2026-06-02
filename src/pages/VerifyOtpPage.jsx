import React, { useState } from 'react';
import { Link, useLocation, useNavigate } from 'react-router-dom';
import { supabase } from '../lib/supabase';
import '../styles/auth.css';

export default function VerifyOtpPage() {
  const location = useLocation();
  const navigate = useNavigate();
  const email = location.state?.email || '';

  const [otp, setOtp] = useState('');
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState(null);
  const [message, setMessage] = useState('');

  const handleVerify = async (e) => {
    e.preventDefault();
    if (otp.length !== 6) {
      setError('Please enter a 6-digit OTP');
      return;
    }

    setLoading(true);
    setError(null);
    try {
      const { error: verifyError } = await supabase.auth.verifyOtp({
        email,
        token: otp,
        type: 'signup' // or 'email' depending on Supabase config
      });
      
      if (verifyError) throw verifyError;
      
      // Successfully verified, user should now be logged in
      navigate('/');
    } catch (err) {
      setError(err.message || 'Verification failed');
    } finally {
      setLoading(false);
    }
  };

  const handleResend = async (e) => {
    e.preventDefault();
    try {
      const { error } = await supabase.auth.resend({
        type: 'signup',
        email
      });
      if (error) throw error;
      setMessage('A new OTP has been sent to your email.');
    } catch (err) {
      setError(err.message || 'Failed to resend OTP');
    }
  };

  if (!email) {
    return (
      <div className="container mt-5 text-center">
        <h3>Invalid Session</h3>
        <Link to="/login" className="btn btn-primary mt-3">Back to Login</Link>
      </div>
    );
  }

  return (
    <section className="auth-section loaded">
      <div className="bg-pattern"></div>
      <div className="floating-elements">
        <div className="floating-siomai"></div>
        <div className="floating-siopao"></div>
      </div>

      <div className="auth-container">
        <div className="back-button-container">
          <Link to="/login" className="back-btn">
            <i className="bi bi-arrow-left me-2"></i>
            Back to Registration
          </Link>
        </div>

        <div className="brand-section">
          <h1 className="brand-title">
            Verify Your <span className="sio-highlight">Account</span>
          </h1>
          <p className="brand-subtitle">We sent a 6-digit OTP to <strong>{email}</strong></p>
        </div>

        <form className="auth-form" onSubmit={handleVerify}>
          <div className="form-header">
            <h2>Enter Verification Code</h2>
            <p>Please enter the OTP code to complete your registration</p>
          </div>

          {error && (
            <div className="alert alert-danger mb-4">
              <i className="bi bi-exclamation-triangle-fill me-2"></i>
              {error}
            </div>
          )}

          {message && (
            <div className="alert alert-success mb-4">
              <i className="bi bi-check-circle-fill me-2"></i>
              {message}
            </div>
          )}

          <div className="form-group">
            <label className="input-label">6-Digit OTP Code</label>
            <div className={`input-container ${otp ? 'has-value' : ''}`}>
              <i className="bi bi-key input-icon"></i>
              <input 
                type="text" 
                maxLength="6" 
                required 
                value={otp} 
                onChange={(e) => setOtp(e.target.value.replace(/[^0-9]/g, ''))} 
              />
              <label className="floating-label">6-Digit OTP Code</label>
            </div>
          </div>

          <button type="submit" className={`auth-btn ${loading ? 'loading' : ''}`} disabled={loading}>
            <i className="bi bi-check-circle me-2"></i>
            <span style={{ opacity: loading ? 0 : 1 }}>Verify OTP</span>
            <div className="btn-loader" style={{ display: loading ? 'block' : 'none' }}></div>
          </button>
        </form>

        <div className="resend-otp mt-4 text-center">
          <p className="mb-2">Didn't receive the code?</p>
          <button onClick={handleResend} className="btn btn-link p-0 text-decoration-none">Resend OTP</button>
        </div>
      </div>
    </section>
  );
}
