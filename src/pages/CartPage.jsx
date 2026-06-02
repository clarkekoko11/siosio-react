import React, { useContext } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { CartContext } from '../contexts/CartContext';
import '../styles/cart.css';

export default function CartPage() {
  const navigate = useNavigate();
  const { cartItems, cartCount, updateQuantity, removeFromCart } = useContext(CartContext);
  
  // Basic total calculation from mock state
  const safeCartItems = Array.isArray(cartItems) ? cartItems : [];
  const total = safeCartItems.reduce((acc, item) => acc + ((item?.price || 0) * (item?.quantity || 1)), 0);

  return (
    <div className="container py-5 cart-container">
      <div className="d-flex justify-content-between align-items-center mb-4">
        <h2 className="mb-0">
          <i className="bi bi-cart3 me-2"></i>Your Cart 
          <span className="badge bg-danger rounded-pill ms-2">{cartCount} items</span>
        </h2>
        <Link to="/shop" className="btn btn-outline-secondary">
          <i className="bi bi-arrow-left me-2"></i>Continue Shopping
        </Link>
      </div>

      <div className="row">
        <div className="col-lg-8">
          <div className="card shadow-sm mb-4">
            <div className="card-body p-0">
              {cartItems.length === 0 ? (
                <div className="text-center py-5">
                  <i className="bi bi-cart-x text-muted" style={{ fontSize: '4rem' }}></i>
                  <h4 className="mt-3">Your cart is empty</h4>
                  <p className="text-muted">Looks like you haven't added any SioSio treats yet.</p>
                  <Link to="/shop" className="btn btn-primary mt-2">Go to Shop</Link>
                </div>
              ) : (
                <div className="table-responsive">
                  <table className="table table-hover align-middle mb-0">
                    <thead className="table-light">
                      <tr>
                        <th>Product</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Subtotal</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      {safeCartItems.map((item, idx) => (
                        <tr key={idx}>
                          <td>
                            <div className="d-flex align-items-center">
                              <img src={item.image} alt={item.name} className="img-thumbnail me-3" style={{ width: '60px', height: '60px', objectFit: 'cover' }} />
                              <div>
                                <h6 className="mb-0 fw-bold">{item.name}</h6>
                              </div>
                            </div>
                          </td>
                          <td>₱{(item.price || 0).toFixed(2)}</td>
                          <td>
                            <div className="input-group input-group-sm" style={{ width: '120px' }}>
                              <button className="btn btn-outline-secondary" type="button" onClick={() => updateQuantity(item.id, item.quantity - 1)}><i className="bi bi-dash"></i></button>
                              <input type="text" className="form-control text-center" value={item.quantity} readOnly />
                              <button className="btn btn-outline-secondary" type="button" onClick={() => updateQuantity(item.id, item.quantity + 1)}><i className="bi bi-plus"></i></button>
                            </div>
                          </td>
                          <td className="fw-bold">₱{((item.price || 0) * (item.quantity || 1)).toFixed(2)}</td>
                          <td>
                            <button className="btn btn-sm btn-outline-danger" onClick={() => removeFromCart(item.id)}>
                              <i className="bi bi-trash"></i>
                            </button>
                          </td>
                        </tr>
                      ))}
                    </tbody>
                  </table>
                </div>
              )}
            </div>
          </div>
        </div>

        <div className="col-lg-4">
          <div className="card shadow-sm sticky-top" style={{ top: '100px' }}>
            <div className="card-header bg-white py-3">
              <h5 className="mb-0 fw-bold">Order Summary</h5>
            </div>
            <div className="card-body">
              <div className="d-flex justify-content-between mb-3">
                <span>Subtotal</span>
                <strong>₱{total.toFixed(2)}</strong>
              </div>
              <div className="d-flex justify-content-between mb-3">
                <span>Shipping</span>
                <span className="text-success">Free</span>
              </div>
              <hr />
              <div className="d-flex justify-content-between mb-4">
                <span className="fs-5 fw-bold">Total</span>
                <span className="fs-5 fw-bold text-danger">₱{total.toFixed(2)}</span>
              </div>
              <button className="btn btn-primary w-100 py-2 fs-5 checkout-btn" disabled={safeCartItems.length === 0} onClick={() => navigate('/checkout')}>
                Proceed to Checkout <i className="bi bi-arrow-right ms-2"></i>
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
