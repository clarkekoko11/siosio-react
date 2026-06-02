import React from 'react';
import { Link } from 'react-router-dom';
import '../../styles/headfoot.css';

export default function Footer() {
  return (
    <footer className="footer">
      <div className="container">
        <div className="footer-content">
          <div className="footer-logo-section">
            <div className="footer-logo">
              <img src="/images/siosiologo.png" alt="SioSio Logo" className="logo-img" />
            </div>
            <p className="footer-copyright">©2025 <span className="sio-highlight">Sio</span><span className="sio-highlight">Sio</span></p>
          </div>
          
          <div className="footer-links">
            <div className="footer-column">
              <h3 className="footer-title">Quick Links</h3>
              <ul className="footer-list">
                <li><Link to="/" className="footer-link">Home</Link></li>
                <li><Link to="/shop" className="footer-link">Shop</Link></li>
                <li><Link to="/about" className="footer-link">About Us</Link></li>
                <li><Link to="/contact" className="footer-link">Contact Us</Link></li>
              </ul>
            </div>
            
            <div className="footer-column">
              <h3 className="footer-title">Menu</h3>
              <ul className="footer-list">
                <li><Link to="/shop#siomai-section" className="footer-link"> <span className="sio-highlight">Sio</span>mai</Link></li>
                <li><Link to="/shop#siopao-section" className="footer-link"><span className="sio-highlight">Sio</span>pao</Link></li>
              </ul>
            </div>
            
            <div className="footer-column">
              <h3 className="footer-title">Follow us:</h3>
              <div className="social-links">
                <a href="#" className="social-link facebook" target="_blank" rel="noopener noreferrer">
                  <span className="social-icon">f</span>
                </a>
                <a href="#" className="social-link instagram" target="_blank" rel="noopener noreferrer">
                  <span className="social-icon">📷</span>
                </a>
                <a href="#" className="social-link twitter" target="_blank" rel="noopener noreferrer">
                  <span className="social-icon">𝕏</span>
                </a>
              </div>
            </div>
          </div>
        </div>
        
        <div className="footer-bottom">
          <div className="footer-legal">
            <a href="#" className="legal-link"></a>
            <a href="#" className="legal-link"></a>
          </div>
        </div>
      </div>
    </footer>
  );
}
