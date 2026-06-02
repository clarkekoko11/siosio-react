import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import { supabase } from '../lib/supabase';
import '../styles/auth.css';

export default function ForgotPasswordPage() {
  const [email, setEmail] = useState('');
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState(null);
  const [message, setMessage] = useState('');

  const handleReset = async (e) => {
    e.preventDefault();
    setLoading(true);
    setError(null);
    setMessage('');

    try {
      const { error } = await supabase.auth.resetPasswordForEmail(email, {
        redirectTo: `${window.location.origin}/profile`, // Needs actual reset password page in real app
      });
      if (error) throw error;
      setMessage('Password reset link has been sent to your email.');
    } catch (err) {
      setError(err.message || 'Failed to send reset link');
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
          <Link to="/login" className="back-btn">
            <i className="bi bi-arrow-left me-2"></i>
            Back to Login
          </Link>
        </div>

        <div className="brand-section">
          <h1 className="brand-title">
            Reset <span className="sio-highlight">Password</span>
          </h1>
          <p className="brand-subtitle">We'll send you a link to reset your password</p>
        </div>

        <form className="auth-form" onSubmit={handleReset}>
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
            <label className="input-label">Email Address</label>
            <div className={`input-container ${email ? 'has-value' : ''}`}>
              <i className="bi bi-envelope input-icon"></i>
              <input type="email" required value={email} onChange={(e) => setEmail(e.target.value)} />
              <label className="floating-label">Email Address</label>
            </div>
          </div>

          <button type="submit" className={`auth-btn ${loading ? 'loading' : ''}`} disabled={loading}>
            <i className="bi bi-envelope me-2"></i>
            <span style={{ opacity: loading ? 0 : 1 }}>Send Reset Link</span>
            <div className="btn-loader" style={{ display: loading ? 'block' : 'none' }}></div>
          </button>
        </form>
      </div>
    </section>
  );
}
