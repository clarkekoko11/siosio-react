import React, { useContext } from 'react';
import { NavLink, Link, useNavigate } from 'react-router-dom';
import { AuthContext } from '../../contexts/AuthContext';
import { CartContext } from '../../contexts/CartContext';
import '../../styles/headfoot.css';

export default function Header() {
  const { user, profile, isAdmin, signOut } = useContext(AuthContext);
  const { cartCount } = useContext(CartContext);
  const navigate = useNavigate();

  const handleLogout = async (e) => {
    e.preventDefault();
    await signOut();
    navigate('/login');
  };

  return (
    <nav className="navbar navbar-expand-lg fixed-top p-0 border-0 shadow-none">
      <div className="container-fluid nav-container">
        
        {/* --- LEFT: Logo & Mobile Toggle --- */}
        <div className="nav-left d-flex justify-content-between align-items-center w-200 w-lg-auto flex-grow-1 flex-lg-grow-0">
          <Link className="text-decoration-none" to="/">
            <h1 className="logo mb-0">
              Welcome, mga ka-<span className="sio-highlight">Sio</span><span className="sio-highlight">Sio</span>!
            </h1>
          </Link>
          
          <button className="navbar-toggler border-0 shadow-none d-lg-none" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span className="navbar-toggler-icon" style={{ filter: 'invert(1)' }}></span>
          </button>
        </div>

        {/* --- COLLAPSIBLE MENU --- */}
        <div className="collapse navbar-collapse flex-grow-1" id="navbarNav">
          
          {/* --- CENTER: Main Links --- */}
  <div className="nav-center d-flex flex-grow-1 mt-3 mt-lg-0">
            <NavLink to="/" className="nav-link" end>Home</NavLink>
            <NavLink to="/shop" className="nav-link">Shop</NavLink>
            <NavLink to="/favorites" className="nav-link text-danger">
              <i className="bi bi-heart-fill me-1"></i>Favorites
            </NavLink>
            <NavLink to="/about" className="nav-link">About Us</NavLink>
            <NavLink to="/contact" className="nav-link">Contact Us</NavLink>
          </div>
          {/* --- RIGHT: User, Cart, Search --- */}
          <div className="nav-right d-flex mt-3 mt-lg-0 pb-3 pb-lg-0">
            
            {/* Menu Dropdown */}
            <div className="dropdown d-none d-lg-block">
              <a href="#" className="nav-link dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false" role="button">
                Menu
              </a>
              <ul className="dropdown-menu">
                <li><Link to="/shop#siomai-section" className="dropdown-item"><i className="bi bi-circle me-2"></i>Siomai</Link></li>
                <li><Link to="/shop#siopao-section" className="dropdown-item"><i className="bi bi-circle me-2"></i>Siopao</Link></li>
              </ul>
            </div>

            {/* Cart Icon */}
            <NavLink to="/cart" className="cart-link me-3 me-lg-0 text-decoration-none">
              <i className="bi bi-cart3"></i>
              <span className="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger" style={{ fontSize: '0.65rem' }}>
                {cartCount}
              </span>
            </NavLink>

            {/* User Auth Elements */}
            {user ? (
              <>
                <div className="dropdown">
                  <a href="#" className="btn Sign-In d-flex align-items-center justify-content-center" data-bs-toggle="dropdown" aria-expanded="false" role="button" style={{width: '38px', height: '38px', padding: '0'}}>
                    <i className="bi bi-person-fill"></i>
                  </a>
                  <ul className="dropdown-menu dropdown-menu-end">
                    {isAdmin && (
                      <>
                        <li><Link className="dropdown-item" to="/admin"><i className="bi bi-speedometer2 me-2"></i>Admin Dashboard</Link></li>
                        <li><hr className="dropdown-divider" /></li>
                      </>
                    )}
                    <li><a href="#" onClick={handleLogout} className="dropdown-item"><i className="bi bi-box-arrow-right me-2"></i> Log Out</a></li>
                    <li><Link to="/profile" className="dropdown-item"><i className="bi bi-bag-check me-2"></i> My Orders</Link></li>
                    <li><Link to="/profile" className="dropdown-item"><i className="bi bi-person-badge me-2"></i> Profile</Link></li>
                    <li><hr className="dropdown-divider" /></li>
                    <li><Link to="/contact" className="dropdown-item"><i className="bi bi-question-circle me-2"></i> Help & Support</Link></li>
                  </ul>
                </div>
                <span className="welcome-message d-none d-xl-block ms-1">Welcome, <strong>{profile?.name || user.email}</strong></span>
              </>
            ) : (
              <Link to="/login" className="btn Sign-In">
                Sign In
              </Link>
            )}

            {/* Custom Search Form */}
            <form className="search-form ms-lg-2 mt-3 mt-lg-0" role="search">
              <input type="text" className="search-input" placeholder="Search..." aria-label="Search" />
              <button className="search-btn" type="submit">Search</button>
            </form>

          </div>
        </div>
      </div>
    </nav>
  );
}