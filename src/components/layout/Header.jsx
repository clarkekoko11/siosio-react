import React, { useContext, useState, useRef, useEffect } from 'react';
import { NavLink, Link, useNavigate } from 'react-router-dom';
import { AuthContext } from '../../contexts/AuthContext';
import { CartContext } from '../../contexts/CartContext';
import { motion, AnimatePresence } from 'framer-motion';

export default function Header() {
  const { user, profile, isAdmin, signOut } = useContext(AuthContext);
  const { cartCount } = useContext(CartContext);
  const navigate = useNavigate();

  const [isMobileMenuOpen, setIsMobileMenuOpen] = useState(false);
  const [isUserMenuOpen, setIsUserMenuOpen] = useState(false);
  const userMenuRef = useRef(null);

  const handleLogout = async (e) => {
    e.preventDefault();
    await signOut();
    setIsUserMenuOpen(false);
    navigate('/login');
  };

  useEffect(() => {
    function handleClickOutside(event) {
      if (userMenuRef.current && !userMenuRef.current.contains(event.target)) {
        setIsUserMenuOpen(false);
      }
    }
    document.addEventListener("mousedown", handleClickOutside);
    return () => document.removeEventListener("mousedown", handleClickOutside);
  }, []);

  const navLinkClass = ({ isActive }) =>
    `relative px-4 py-2 text-sm uppercase tracking-widest transition-all duration-300 ease-in-out ${isActive ? 'text-sio-yellow font-semibold' : 'text-sio-text-muted hover:text-sio-text'
    }`;

  const mobileNavLinkClass = ({ isActive }) =>
    `block px-4 py-3 text-sm uppercase tracking-widest border-b-[0.5px] border-sio-border transition-colors duration-300 ${isActive ? 'text-sio-yellow font-semibold bg-sio-bg' : 'text-sio-text-muted hover:text-sio-text hover:bg-sio-bg'
    }`;

  return (
    <header className="fixed top-0 w-full bg-sio-bg/95 backdrop-blur-md shadow-sm z-50 border-b-[0.5px] border-sio-border">
      <div className="max-w-7xl mx-auto px-6 sm:px-8 lg:px-12">
        <div className="flex justify-between items-center h-24">

          {/* LEFT: Logo */}
          <div className="flex-shrink-0 flex items-center">
            <Link to="/" className="text-3xl font-heading font-semibold tracking-tight text-sio-text transition-opacity hover:opacity-80">
              Sio<span className="text-sio-yellow italic">Sio</span>
            </Link>
          </div>

          {/* CENTER: Desktop Navigation */}
          <nav className="hidden md:flex space-x-6">
            <NavLink to="/" className={navLinkClass} end>Home</NavLink>
            <NavLink to="/shop" className={navLinkClass}>Menu</NavLink>
            <NavLink to="/about" className={navLinkClass}>Story</NavLink>
            <NavLink to="/contact" className={navLinkClass}>Contact</NavLink>
          </nav>

          {/* RIGHT: Actions */}
          <div className="flex items-center space-x-6">

            {/* Cart Icon */}
            <NavLink to="/cart" className="relative p-2 text-sio-text hover:text-sio-yellow transition-colors duration-300">
              <i className="bi bi-bag text-xl"></i>
              {cartCount > 0 && (
                <span className="absolute top-0 right-0 inline-flex items-center justify-center px-[0.4rem] py-[0.1rem] text-[0.65rem] font-bold text-sio-dark transform translate-x-1/4 -translate-y-1/4 bg-sio-yellow rounded-full">
                  {cartCount}
                </span>
              )}
            </NavLink>

            {/* User Menu */}
            {user ? (
              <div className="relative" ref={userMenuRef}>
                <button
                  onClick={() => setIsUserMenuOpen(!isUserMenuOpen)}
                  className="flex items-center gap-2 p-2 focus:outline-none group"
                >
                  <div className="w-9 h-9 rounded-full border-[0.5px] border-sio-border text-sio-text-muted flex items-center justify-center group-hover:border-sio-yellow group-hover:text-sio-yellow transition-all duration-300">
                    <i className="bi bi-person text-lg"></i>
                  </div>
                  <span className="hidden lg:block text-xs uppercase tracking-wider font-medium text-sio-text-muted group-hover:text-sio-text transition-colors">
                    {profile?.name ? profile.name.split(' ')[0] : 'Account'}
                  </span>
                </button>

                <AnimatePresence>
                  {isUserMenuOpen && (
                    <motion.div
                      initial={{ opacity: 0, y: 10 }}
                      animate={{ opacity: 1, y: 0 }}
                      exit={{ opacity: 0, y: 10 }}
                      transition={{ duration: 0.2, ease: "easeOut" }}
                      className="absolute right-0 mt-3 w-56 bg-sio-surface shadow-xl border-[0.5px] border-sio-border py-2 rounded-sm"
                    >
                      <div className="px-5 py-3 border-b-[0.5px] border-sio-border">
                        <p className="text-xs uppercase tracking-wider text-sio-text-muted mb-1">Signed in as</p>
                        <p className="text-sm font-medium text-sio-text truncate">{user.email}</p>
                      </div>

                      {isAdmin && (
                        <Link to="/admin" onClick={() => setIsUserMenuOpen(false)} className="block px-5 py-3 text-sm text-sio-yellow hover:bg-sio-bg font-medium transition-colors">
                          Admin Dashboard
                        </Link>
                      )}

                      <Link to="/profile" onClick={() => setIsUserMenuOpen(false)} className="block px-5 py-3 text-sm text-sio-text-muted hover:text-sio-text hover:bg-sio-bg transition-colors">
                        My Profile
                      </Link>
                      <Link to="/profile" onClick={() => setIsUserMenuOpen(false)} className="block px-5 py-3 text-sm text-sio-text-muted hover:text-sio-text hover:bg-sio-bg transition-colors">
                        Order History
                      </Link>

                      <div className="border-t-[0.5px] border-sio-border my-1"></div>

                      <button onClick={handleLogout} className="block w-full text-left px-5 py-3 text-sm text-sio-text-muted hover:text-sio-yellow hover:bg-sio-bg transition-colors">
                        Sign Out
                      </button>
                    </motion.div>
                  )}
                </AnimatePresence>
              </div>
            ) : (
              <div className="hidden md:flex items-center space-x-6">
                <Link to="/login" className="text-xs uppercase tracking-widest font-medium text-sio-text-muted hover:text-sio-text transition-colors">
                  Log In
                </Link>
                <Link to="/login" className="btn-primary py-2.5 px-6 text-xs uppercase tracking-widest">
                  Reserve
                </Link>
              </div>
            )}

            {/* Mobile Menu Button */}
            <div className="md:hidden flex items-center">
              <button
                onClick={() => setIsMobileMenuOpen(!isMobileMenuOpen)}
                className="p-2 text-sio-text hover:text-sio-yellow focus:outline-none transition-colors"
              >
                <i className={`bi ${isMobileMenuOpen ? 'bi-x-lg' : 'bi-list'} text-2xl`}></i>
              </button>
            </div>

          </div>
        </div>
      </div>

      {/* Mobile Menu */}
      <AnimatePresence>
        {isMobileMenuOpen && (
          <motion.div
            initial={{ height: 0, opacity: 0 }}
            animate={{ height: 'auto', opacity: 1 }}
            exit={{ height: 0, opacity: 0 }}
            className="md:hidden border-t-[0.5px] border-sio-border bg-sio-surface overflow-hidden shadow-xl"
          >
            <div className="px-0 py-0 flex flex-col">
              <NavLink to="/" onClick={() => setIsMobileMenuOpen(false)} className={mobileNavLinkClass} end>Home</NavLink>
              <NavLink to="/shop" onClick={() => setIsMobileMenuOpen(false)} className={mobileNavLinkClass}>Menu</NavLink>
              <NavLink to="/about" onClick={() => setIsMobileMenuOpen(false)} className={mobileNavLinkClass}>Story</NavLink>
              <NavLink to="/contact" onClick={() => setIsMobileMenuOpen(false)} className={mobileNavLinkClass}>Contact</NavLink>

              {!user && (
                <div className="p-6 bg-sio-bg flex flex-col space-y-4">
                  <Link to="/login" onClick={() => setIsMobileMenuOpen(false)} className="btn-secondary w-full text-center py-3 text-xs uppercase tracking-widest">
                    Log In
                  </Link>
                  <Link to="/login" onClick={() => setIsMobileMenuOpen(false)} className="btn-primary w-full text-center py-3 text-xs uppercase tracking-widest">
                    Reserve
                  </Link>
                </div>
              )}
            </div>
          </motion.div>
        )}
      </AnimatePresence>
    </header>
  );
}