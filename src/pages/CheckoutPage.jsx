import React, { useState, useContext, useEffect } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { CartContext } from '../contexts/CartContext';
import { useCheckout } from '../hooks/useCheckout';
import '../styles/cart.css'; // Reuse cart styles for consistency

export default function CheckoutPage() {
  const navigate = useNavigate();
  const { cartItems, cartCount } = useContext(CartContext);
  const { submitOrder, loading, error } = useCheckout();
  
  const safeCartItems = Array.isArray(cartItems) ? cartItems : [];
  const subtotal = safeCartItems.reduce((acc, item) => acc + ((item?.price || 0) * (item?.quantity || 1)), 0);
  const deliveryFee = subtotal > 0 ? 50 : 0;
  const total = subtotal + deliveryFee;

  const [shippingDetails, setShippingDetails] = useState({
    fullName: '',
    phone: '',
    address: '',
    notes: ''
  });

  const [orderComplete, setOrderComplete] = useState(false);

  // Redirect if cart is empty and not completed
  useEffect(() => {
    if (safeCartItems.length === 0 && !orderComplete) {
      navigate('/cart');
    }
  }, [safeCartItems.length, orderComplete, navigate]);

  const handleChange = (e) => {
    const { name, value } = e.target;
    setShippingDetails(prev => ({ ...prev, [name]: value }));
  };

  const handleCheckout = async (e) => {
    e.preventDefault();
    const result = await submitOrder(shippingDetails, total);
    if (result.success) {
      setOrderComplete(true);
    }
  };

  if (orderComplete) {
    return (
      <div className="container py-5 mt-5 text-center">
        <div className="card shadow-sm mx-auto" style={{ maxWidth: '600px' }}>
          <div className="card-body py-5">
            <i className="bi bi-check-circle-fill text-success" style={{ fontSize: '5rem' }}></i>
            <h2 className="mt-4 mb-3 fw-bold text-success">Order Confirmed!</h2>
            <p className="lead mb-4">
              Thank you for ordering with SioSio! Your order has been placed successfully. 
              We'll start preparing your Siopao and Siomai right away!
            </p>
            <div className="d-grid gap-2 col-8 mx-auto">
              <Link to="/shop" className="btn btn-primary btn-lg">Back to Shop</Link>
              <Link to="/profile" className="btn btn-outline-secondary">View My Orders</Link>
            </div>
          </div>
        </div>
      </div>
    );
  }

  return (
    <div className="container py-5 cart-container">
      <div className="mb-4">
        <Link to="/cart" className="text-decoration-none text-secondary">
          <i className="bi bi-arrow-left me-2"></i>Back to Cart
        </Link>
        <h2 className="mt-3 mb-0 fw-bold">
          <i className="bi bi-bag-check me-2"></i>Checkout
        </h2>
      </div>

      <div className="row">
        <div className="col-lg-7 mb-4">
          <div className="card shadow-sm">
            <div className="card-header bg-white py-3">
              <h5 className="mb-0 fw-bold">Shipping Details</h5>
            </div>
            <div className="card-body p-4">
              {error && (
                <div className="alert alert-danger">
                  <i className="bi bi-exclamation-triangle-fill me-2"></i>
                  {error}
                </div>
              )}
              
              <form onSubmit={handleCheckout} id="checkout-form">
                <div className="mb-3">
                  <label className="form-label fw-bold">Full Name</label>
                  <input 
                    type="text" 
                    className="form-control" 
                    name="fullName"
                    value={shippingDetails.fullName}
                    onChange={handleChange}
                    required 
                    placeholder="Enter your complete name"
                  />
                </div>
                
                <div className="mb-3">
                  <label className="form-label fw-bold">Phone Number</label>
                  <input 
                    type="tel" 
                    className="form-control" 
                    name="phone"
                    value={shippingDetails.phone}
                    onChange={handleChange}
                    required 
                    placeholder="e.g. 09123456789"
                  />
                </div>
                
                <div className="mb-3">
                  <label className="form-label fw-bold">Delivery Address</label>
                  <textarea 
                    className="form-control" 
                    rows="3" 
                    name="address"
                    value={shippingDetails.address}
                    onChange={handleChange}
                    required 
                    placeholder="Enter your complete delivery address (House No., Street, Barangay, City)"
                  ></textarea>
                </div>

                <div className="mb-4">
                  <label className="form-label fw-bold">Delivery Notes (Optional)</label>
                  <textarea 
                    className="form-control" 
                    rows="2" 
                    name="notes"
                    value={shippingDetails.notes}
                    onChange={handleChange}
                    placeholder="Any special instructions for the rider?"
                  ></textarea>
                </div>
                
                <div className="alert alert-info">
                  <i className="bi bi-info-circle-fill me-2"></i>
                  <strong>Payment Method:</strong> Currently, we only accept Cash on Delivery (COD). Please prepare exact change if possible!
                </div>
              </form>
            </div>
          </div>
        </div>

        <div className="col-lg-5">
          <div className="card shadow-sm sticky-top" style={{ top: '100px' }}>
            <div className="card-header bg-white py-3">
              <h5 className="mb-0 fw-bold">Order Summary</h5>
            </div>
            <div className="card-body p-0">
              <div className="list-group list-group-flush mb-3">
                {safeCartItems.map((item, idx) => (
                  <div key={idx} className="list-group-item d-flex justify-content-between align-items-center py-3">
                    <div className="d-flex align-items-center">
                      <span className="badge bg-secondary me-3">{item.quantity}x</span>
                      <div>
                        <h6 className="mb-0 fw-bold">{item.name}</h6>
                        <small className="text-muted">₱{(item.price || 0).toFixed(2)} each</small>
                      </div>
                    </div>
                    <span className="fw-bold">₱{((item.price || 0) * (item.quantity || 1)).toFixed(2)}</span>
                  </div>
                ))}
              </div>
            </div>
            
            <div className="card-footer bg-white p-4">
              <div className="d-flex justify-content-between mb-2">
                <span className="text-muted">Subtotal ({cartCount} items)</span>
                <span>₱{subtotal.toFixed(2)}</span>
              </div>
              <div className="d-flex justify-content-between mb-3">
                <span className="text-muted">Delivery Fee</span>
                <span>₱{deliveryFee.toFixed(2)}</span>
              </div>
              <hr />
              <div className="d-flex justify-content-between mb-4">
                <span className="fs-5 fw-bold">Total to Pay</span>
                <span className="fs-5 fw-bold text-danger">₱{total.toFixed(2)}</span>
              </div>
              
              <button 
                type="submit" 
                form="checkout-form" 
                className="btn btn-danger w-100 py-3 fs-5 fw-bold checkout-btn" 
                disabled={loading || safeCartItems.length === 0}
              >
                {loading ? (
                  <><span className="spinner-border spinner-border-sm me-2" role="status" aria-hidden="true"></span> Processing...</>
                ) : (
                  <>Place Order (COD) <i className="bi bi-check2-circle ms-2"></i></>
                )}
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
