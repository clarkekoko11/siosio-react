import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import { supabase } from '../lib/supabase';

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
    <div className="min-h-screen bg-sio-bg flex items-center justify-center py-32 px-4 sm:px-6 lg:px-8 font-sans text-sio-text selection:bg-sio-yellow selection:text-sio-dark">
      
      <div className="max-w-md w-full relative z-10">
        
        {/* Navigation */}
        <div className="mb-10 text-center">
          <Link to="/login" className="text-[0.65rem] uppercase tracking-widest text-sio-text-muted hover:text-sio-yellow font-medium inline-flex items-center transition-colors">
            <i className="bi bi-arrow-left mr-3"></i> Back to Login
          </Link>
        </div>

        {/* Card */}
        <div className="bg-sio-surface border-[0.5px] border-sio-border overflow-hidden shadow-2xl">
          
          <div className="p-10 border-b-[0.5px] border-sio-border text-center bg-sio-surface">
            <h1 className="text-4xl font-heading italic text-sio-text mb-4">Reset Access</h1>
            <p className="text-xs font-light tracking-wide text-sio-text-muted">Provide your email address to securely regain access to your account.</p>
          </div>

          <div className="p-10">
            <form onSubmit={handleReset} className="space-y-8">
              
              {error && (
                <div className="bg-red-900/50 text-red-200 p-5 border-[0.5px] border-red-500 flex items-center text-sm font-light tracking-wide">
                  <i className="bi bi-exclamation-triangle mr-4 text-lg"></i>
                  {error}
                </div>
              )}

              {message && (
                <div className="bg-green-900/50 text-green-200 p-5 border-[0.5px] border-green-500 flex items-center text-sm font-light tracking-wide">
                  <i className="bi bi-check-lg mr-4 text-lg"></i>
                  {message}
                </div>
              )}

              <div>
                <label className="block text-[0.65rem] uppercase tracking-widest text-sio-text-muted mb-2">Email Address</label>
                <div className="relative">
                  <div className="absolute inset-y-0 left-0 pl-1 flex items-center pointer-events-none text-sio-text-muted">
                    <i className="bi bi-envelope"></i>
                  </div>
                  <input 
                    type="email" 
                    required 
                    className="w-full bg-transparent border-b border-sio-border rounded-none pl-8 pr-0 py-3 focus:ring-0 focus:border-sio-yellow text-sio-text text-sm transition-colors" 
                    value={email} 
                    onChange={(e) => setEmail(e.target.value)} 
                    placeholder="name@example.com" 
                  />
                </div>
              </div>

              <button type="submit" className="w-full btn-primary py-4 flex justify-center items-center mt-6 text-xs uppercase tracking-widest transition-all hover:bg-black" disabled={loading}>
                {loading ? (
                  <div className="w-4 h-4 border-2 border-white/30 border-t-white rounded-full animate-spin"></div>
                ) : (
                  <>Send Reset Link <i className="bi bi-arrow-right ml-3 text-lg"></i></>
                )}
              </button>
            </form>
          </div>
        </div>
      </div>
    </div>
  );
}
