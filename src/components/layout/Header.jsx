import React, { useContext } from 'react';
import { NavLink, Link, useNavigate } from 'react-router-dom';
import { AuthContext } from '../../contexts/AuthContext';
import { CartContext } from '../../contexts/CartContext';
import '../../styles/headfoot.css';

export default function Header() {
  const { user, profile, signOut } = useContext(AuthContext);
  const { cartCount } = useContext(CartContext);
  const navigate = useNavigate();

  const handleLogout = async (e) => {
    e.preventDefault();
    await signOut();
    navigate('/login');
  };

  return (
    <>
      <nav className="navbar navbar-expand-lg navbar-dark fixed-top header-navbar">
        <div className="container-fluid nav-container">
          <Link className="navbar-brand mx-auto" to="/">
            <h1 className="logo mb-0">
              Welcome, mga ka-<span className="sio-highlight">Sio</span><span className="sio-highlight">Sio</span>!
            </h1>
          </Link>
          
          <button className="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span className="navbar-toggler-icon"></span>
          </button>
          
          <div className="nav-left d-none d-lg-flex">
            <NavLink to="/" className="nav-link fw-bold" end>Home</NavLink>
            <NavLink to="/shop" className="nav-link fw-bold">Shop</NavLink>
            <NavLink to="/favorites" className="nav-link text-danger fw-bold">
              <i className="bi bi-heart-fill"></i> Favorites
            </NavLink>
            <NavLink to="/about" className="nav-link fw-bold">About Us</NavLink>
            <NavLink to="/contact" className="nav-link fw-bold">Contact Us</NavLink>
          </div>
          
          <div className="collapse navbar-collapse" id="navbarNav">
            <ul className="navbar-nav d-lg-none">
              <li className="nav-item">
                <NavLink to="/" className="nav-link" end>Home</NavLink>
              </li>
              <li className="nav-item">
                <NavLink to="/shop" className="nav-link">Shop</NavLink>
              </li>
              <li className="nav-item">
                <NavLink to="/favorites" className="nav-link">Favorites</NavLink>
              </li>
              <li className="nav-item">
                <NavLink to="/about" className="nav-link">About Us</NavLink>
              </li>
              <li className="nav-item">
                <NavLink to="/contact" className="nav-link">Contact Us</NavLink>
              </li>
            </ul>
        
            <div className="nav-right d-flex align-items-center ms-auto gap-3">
              <div className="dropdown d-none d-lg-block">
                <a href="#" className="nav-link dropdown-toggle px-3 py-2 rounded hover-effect text-light" data-bs-toggle="dropdown" aria-expanded="false" role="button">
                  Menu
                </a>
                <ul className="dropdown-menu shadow">
                  <li><Link to="/shop#siomai-section" className="dropdown-item"><i className="bi bi-circle"></i> Siomai</Link></li>
                  <li><Link to="/shop#siopao-section" className="dropdown-item"><i className="bi bi-circle"></i> Siopao</Link></li>
                </ul>
              </div>

              <NavLink to="/cart" className={({ isActive }) => `btn btn-outline-light position-relative rounded-circle hover-scale ${isActive ? 'active' : ''}`}>
                <i className="bi bi-cart3"></i>
                <span className="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                  {cartCount}
                </span>
              </NavLink>

              {user ? (
                <>
                  <div className="dropdown">
                    <a href="#" className="btn btn-outline-light rounded-circle hover-scale" data-bs-toggle="dropdown" aria-expanded="false" role="button">
                      <i className="bi bi-person-fill"></i>
                    </a>
                    <ul className="dropdown-menu dropdown-menu-end shadow">
                      <li><a href="#" onClick={handleLogout} className="dropdown-item"><i className="bi bi-box-arrow-right"></i> Log Out</a></li>
                      <li><Link to="/profile" className="dropdown-item"><i className="bi bi-bag-check"></i> My Orders</Link></li>
                      <li><Link to="/profile" className="dropdown-item"><i className="bi bi-person-badge"></i> Profile</Link></li>
                      <li><hr className="dropdown-divider" /></li>
                      <li><Link to="/contact" className="dropdown-item"><i className="bi bi-question-circle"></i> Help & Support</Link></li>
                    </ul>
                  </div>
                  <span className="text-light small">Welcome, <strong>{profile?.name || user.email}</strong></span>
                </>
              ) : (
                <Link to="/login" className="btn btn-outline-light px-3 py-2 rounded hover-scale">
                  Sign In
                </Link>
              )}
              
              <form className="d-flex" role="search">
                <div className="input-group">
                  <input type="text" className="form-control" placeholder="Search..." aria-label="Search" />
                  <button className="btn btn-danger" type="submit">Search</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </nav>
      {/* We can add the login notification modal component here or inside Favorites check later */}
    </>
  );
}
