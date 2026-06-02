import React, { useContext } from 'react';
import { CartContext } from '../contexts/CartContext';
import { AuthContext } from '../contexts/AuthContext';
import { PRODUCTS } from '../utils/constants';
import { useNavigate } from 'react-router-dom';
import '../styles/products.css';

export default function ShopPage() {
  const { addToCart } = useContext(CartContext);
  const { user } = useContext(AuthContext);
  const navigate = useNavigate();

  const handleFavoriteClick = (e) => {
    e.preventDefault();
    if (!user) {
      // In real app, trigger login modal. For now navigate to login.
      navigate('/login');
      return;
    }
    // Handle toggle favorite logic later with Supabase
  };

  const siomaiProducts = PRODUCTS.filter(p => p.category === 'siomai');
  const siopaoProducts = PRODUCTS.filter(p => p.category === 'siopao');

  const ProductCard = ({ product }) => (
    <div className="col-lg-4 col-md-6 col-sm-6">
      <div className="card h-100 shadow-sm product-item">
        <div className="card-img-top overflow-hidden" style={{ height: '200px' }}>
          <img src={product.image} alt={product.name} className="img-fluid w-100 h-100" style={{ objectFit: 'cover' }} />
        </div>
        <div className="card-body d-flex flex-column">
          <h5 className="card-title">
            {product.name.split('Sio')[0]}<span className="sio-highlight">Sio</span>{product.name.split('Sio')[1]}
          </h5>
          <div className="d-flex justify-content-between align-items-center mb-2">
            <button className="btn btn-outline-danger favorite-btn" onClick={handleFavoriteClick}>
              <i className="bi bi-heart"></i>
            </button>
            <p className="text-primary fw-bold fs-5 mb-0">₱{product.price.toFixed(2)}</p>
          </div>
          <p className="card-text text-muted">{product.description}</p>
          <button className="btn btn-primary mt-auto add-to-cart-btn" onClick={() => addToCart(product)}>
            <i className="bi bi-cart-plus me-2"></i>Add to Cart
          </button>
        </div>
      </div>
    </div>
  );

  return (
    <>
      <section className="page-header bg-dark text-white py-5">
        <div className="container text-center">
          <h1 className="display-4 fw-bold mb-3">
            Our <span className="sio-highlight">Sio</span>mai & <span className="sio-highlight">Sio</span>pao Products
          </h1>
          <p className="lead">Choose from our delicious selection of authentic Filipino favorites</p>
        </div>
      </section>

      <section id="siomai-section" className="py-5">
        <div className="container">
          <div className="row g-4">
            {siomaiProducts.map(product => <ProductCard key={product.id} product={product} />)}
          </div>
        </div>
      </section>

      <section id="siopao-section" className="py-5 bg-light">
        <div className="container">
          <div className="row">
            <div className="col-12">
              <h2 className="text-center mb-5 display-5 fw-bold"><span className="sio-highlight">Sio</span>pao Flavors</h2>
            </div>
          </div>
          <div className="row g-4">
            {siopaoProducts.map(product => <ProductCard key={product.id} product={product} />)}
          </div>
        </div>
      </section>
    </>
  );
}
