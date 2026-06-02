import React, { useContext } from 'react';
import { CartContext } from '../contexts/CartContext';
import { AuthContext } from '../contexts/AuthContext';
import { useProducts } from '../hooks/useProducts';
import { useNavigate } from 'react-router-dom';
import '../styles/products.css';

export default function ShopPage() {
  const { addToCart } = useContext(CartContext);
  const { user } = useContext(AuthContext);
  const { products, loading } = useProducts();
  const navigate = useNavigate();

  const handleFavoriteClick = (e) => {
    e.preventDefault();
    if (!user) {
      navigate('/login');
      return;
    }
  };

  // Only display active products
  const activeProducts = products.filter(p => p.status !== 'inactive');
  
  // Group products dynamically by their category
  const categories = [...new Set(activeProducts.map(p => p.category))];

  const ProductCard = ({ product }) => (
    <div className="col-lg-3 col-md-4 col-sm-6 mb-4">
      <div className="card h-100 shadow-sm product-item border-0">
        <div className="card-img-top overflow-hidden bg-light" style={{ height: '220px' }}>
          <img 
            src={product.image || 'https://via.placeholder.com/400x300?text=No+Image'} 
            alt={product.name} 
            className="img-fluid w-100 h-100" 
            style={{ objectFit: 'cover' }} 
            onError={(e) => { e.target.src = 'https://via.placeholder.com/400x300?text=Image+Not+Found' }}
          />
        </div>
        <div className="card-body d-flex flex-column">
          <h5 className="card-title fw-bold fs-6">
            {product.name}
          </h5>
          <div className="d-flex justify-content-between align-items-center mb-2">
            <button className="btn btn-outline-danger favorite-btn border-0 p-1" onClick={handleFavoriteClick}>
              <i className="bi bi-heart"></i>
            </button>
            <p className="text-danger fw-bold fs-5 mb-0">₱{product.price.toFixed(2)}</p>
          </div>
          <p className="card-text text-muted small flex-grow-1" style={{ display: '-webkit-box', WebkitLineClamp: 3, WebkitBoxOrient: 'vertical', overflow: 'hidden' }}>
            {product.description}
          </p>
          <button className="btn btn-danger w-100 mt-2 fw-bold" onClick={() => addToCart(product)}>
            <i className="bi bi-cart-plus me-2"></i>Add to Cart
          </button>
        </div>
      </div>
    </div>
  );

  return (
    <>
      <section className="page-header bg-dark text-white py-5 text-center">
        <div className="container">
          <h1 className="display-4 fw-bold mb-3">Our Menu</h1>
          <p className="lead">Choose from our delicious selection of authentic Filipino favorites</p>
        </div>
      </section>

      {loading ? (
        <div className="text-center py-5 my-5">
          <div className="spinner-border text-danger" role="status"></div>
        </div>
      ) : (
        <div className="container py-5">
          {categories.length === 0 ? (
            <div className="text-center py-5">
              <i className="bi bi-shop display-1 text-muted mb-3 d-block"></i>
              <h3 className="text-muted">No products available at the moment.</h3>
              <p className="text-muted">Please check back later!</p>
            </div>
          ) : (
            categories.map((category, index) => {
              const categoryProducts = activeProducts.filter(p => p.category === category);
              return (
                <div key={category} className={`mb-5 pb-4 ${index !== categories.length - 1 ? 'border-bottom' : ''}`}>
                  <h2 className="display-6 fw-bold text-capitalize mb-4">
                    {category} <span className="text-danger fs-3">•</span>
                  </h2>
                  <div className="row justify-content-center justify-content-md-start">
                    {categoryProducts.map(product => <ProductCard key={product.id} product={product} />)}
                  </div>
                </div>
              );
            })
          )}
        </div>
      )}
    </>
  );
}
