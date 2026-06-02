import React, { useContext } from 'react';
import { Link } from 'react-router-dom';
import { AuthContext } from '../contexts/AuthContext';
import { CartContext } from '../contexts/CartContext';
import '../styles/favorites.css';

export default function FavoritesPage() {
  const { user } = useContext(AuthContext);
  const { addToCart } = useContext(CartContext);
  
  // Mock favorites for now
  const favorites = [];

  return (
    <div className="container py-5 favorites-container">
      <div className="d-flex justify-content-between align-items-center mb-4">
        <h2 className="mb-0 text-danger">
          <i className="bi bi-heart-fill me-2"></i>My Favorites
        </h2>
        <Link to="/shop" className="btn btn-outline-secondary">
          <i className="bi bi-arrow-left me-2"></i>Back to Shop
        </Link>
      </div>

      {favorites.length === 0 ? (
        <div className="card shadow-sm border-0 bg-light">
          <div className="card-body text-center py-5">
            <i className="bi bi-heart text-danger opacity-50" style={{ fontSize: '5rem' }}></i>
            <h3 className="mt-4 mb-3">No favorites yet</h3>
            <p className="text-muted mb-4">Looks like you haven't added any products to your favorites.</p>
            <Link to="/shop" className="btn btn-primary px-4 py-2 rounded-pill">
              <i className="bi bi-bag-plus me-2"></i>Explore Products
            </Link>
          </div>
        </div>
      ) : (
        <div className="row g-4">
          {favorites.map((product, idx) => (
            <div className="col-lg-3 col-md-4 col-sm-6" key={idx}>
              <div className="card h-100 shadow-sm border-0 fav-card">
                <div className="position-relative">
                  <img src={product.image} className="card-img-top" alt={product.name} style={{ height: '200px', objectFit: 'cover' }} />
                  <button className="btn btn-light btn-sm position-absolute top-0 end-0 m-2 rounded-circle text-danger shadow-sm remove-fav-btn" title="Remove from favorites">
                    <i className="bi bi-x-lg"></i>
                  </button>
                </div>
                <div className="card-body d-flex flex-column">
                  <h5 className="card-title fw-bold text-truncate">{product.name}</h5>
                  <p className="card-text text-primary fw-bold fs-5 mb-3">₱{product.price.toFixed(2)}</p>
                  <button className="btn btn-outline-primary mt-auto add-cart-btn" onClick={() => addToCart(product)}>
                    <i className="bi bi-cart-plus me-2"></i>Add to Cart
                  </button>
                </div>
              </div>
            </div>
          ))}
        </div>
      )}
    </div>
  );
}
