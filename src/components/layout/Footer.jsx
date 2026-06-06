import React from 'react';
import { Link } from 'react-router-dom';

export default function Footer() {
  return (
    <footer className="bg-sio-bg text-gray-300 py-12 border-t-[0.5px] border-sio-border">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="grid grid-cols-1 md:grid-cols-4 gap-12 md:gap-8">

          {/* Brand */}
          <div className="col-span-1 md:col-span-1">
            <Link to="/" className="text-3xl font-heading font-semibold tracking-tight text-sio-text mb-4 block transition-opacity hover:opacity-80">
              Sio<span className="text-sio-yellow italic">Sio</span>
            </Link>
            <p className="text-sm text-sio-text-muted mb-6 leading-relaxed">
              Authentic, premium dimsum delivered straight to your door. Experience the taste of tradition in every bite.
            </p>
            <p className="text-sm text-sio-text-muted">
              © {new Date().getFullYear()} SioSio. All rights reserved.
            </p>
          </div>

          {/* Quick Links */}
          <div>
            <h3 className="text-sio-text font-sans font-bold mb-4 uppercase tracking-wider text-sm">Quick Links</h3>
            <ul className="space-y-3">
              <li><Link to="/" className="hover:text-sio-yellow transition-colors text-sm">Home</Link></li>
              <li><Link to="/shop" className="hover:text-sio-yellow transition-colors text-sm">Our Menu</Link></li>
              <li><Link to="/about" className="hover:text-sio-yellow transition-colors text-sm">Our Story</Link></li>
              <li><Link to="/contact" className="hover:text-sio-yellow transition-colors text-sm">Contact Us</Link></li>
            </ul>
          </div>

          {/* Categories */}
          <div>
            <h3 className="text-sio-text font-sans font-bold mb-4 uppercase tracking-wider text-sm">Categories</h3>
            <ul className="space-y-3">
              <li><Link to="/shop" className="hover:text-sio-yellow transition-colors text-sm">Signature Siomai</Link></li>
              <li><Link to="/shop" className="hover:text-sio-yellow transition-colors text-sm">Premium Siopao</Link></li>
              <li><Link to="/shop" className="hover:text-sio-yellow transition-colors text-sm">Value Meals</Link></li>
            </ul>
          </div>

          {/* Contact & Social */}
          <div>
            <h3 className="text-sio-text font-sans font-bold mb-4 uppercase tracking-wider text-sm">Connect With Us</h3>
            <ul className="space-y-3 mb-6">
              <li className="flex items-start text-sm">
                <i className="bi bi-geo-alt me-2 mt-0.5 text-sio-yellow"></i>
                <span>123 Culinary Ave, Metro Manila, PH</span>
              </li>
              <li className="flex items-center text-sm">
                <i className="bi bi-envelope me-2 text-sio-yellow"></i>
                <span>hello@siosio.com.ph</span>
              </li>
              <li className="flex items-center text-sm">
                <i className="bi bi-telephone me-2 text-sio-yellow"></i>
                <span>+63 912 345 6789</span>
              </li>
            </ul>

            <div className="flex space-x-4">
              <a href="#" className="w-10 h-10 rounded-full bg-sio-surface flex items-center justify-center hover:bg-sio-yellow hover:text-sio-dark transition-colors">
                <i className="bi bi-facebook"></i>
              </a>
              <a href="#" className="w-10 h-10 rounded-full bg-sio-surface flex items-center justify-center hover:bg-sio-yellow hover:text-sio-dark transition-colors">
                <i className="bi bi-instagram"></i>
              </a>
              <a href="#" className="w-10 h-10 rounded-full bg-sio-surface flex items-center justify-center hover:bg-sio-yellow hover:text-sio-dark transition-colors">
                <i className="bi bi-twitter-x"></i>
              </a>
            </div>
          </div>

        </div>
      </div>
    </footer>
  );
}
