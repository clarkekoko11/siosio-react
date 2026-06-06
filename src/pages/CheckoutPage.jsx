import React, { useState, useContext, useEffect } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { CartContext } from '../contexts/CartContext';
import { useCheckout } from '../hooks/useCheckout';

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
      <main className="pt-32 pb-32 min-h-screen bg-sio-bg flex items-center justify-center font-sans text-sio-text selection:bg-sio-yellow selection:text-sio-dark">
        <div className="container-custom flex justify-center">
          <div className="bg-sio-surface border-[0.5px] border-sio-border p-12 md:p-20 max-w-2xl text-center w-full shadow-2xl">
            <div className="w-20 h-20 bg-sio-bg text-sio-yellow rounded-full flex items-center justify-center mx-auto mb-10 border-[0.5px] border-sio-yellow">
              <i className="bi bi-check-lg text-4xl"></i>
            </div>
            <h2 className="text-4xl font-heading italic text-sio-text mb-6">Order Confirmed</h2>
            <p className="text-sm font-light text-sio-text-muted mb-12 leading-relaxed max-w-md mx-auto">
              Your culinary selection has been received. We will begin preparation immediately to ensure the finest quality.
            </p>
            <div className="flex flex-col sm:flex-row justify-center gap-6">
              <Link to="/shop" className="btn-primary py-4 px-10 text-xs uppercase tracking-widest w-full sm:w-auto">Return to Menu</Link>
              <Link to="/profile" className="py-4 px-10 text-xs uppercase tracking-widest w-full sm:w-auto bg-transparent border-[0.5px] border-sio-border text-sio-text hover:border-sio-yellow hover:text-sio-yellow transition-colors">View History</Link>
            </div>
          </div>
        </div>
      </main>
    );
  }

  return (
    <main className="pt-32 pb-32 bg-sio-bg min-h-screen font-sans text-sio-text selection:bg-sio-yellow selection:text-sio-dark">
      <div className="container-custom mx-auto max-w-6xl">
        <div className="mb-12 pb-6 border-b-[0.5px] border-sio-border">
          <Link to="/cart" className="text-[0.65rem] uppercase tracking-widest text-sio-text-muted hover:text-sio-yellow transition-colors mb-6 inline-flex items-center">
            <i className="bi bi-arrow-left mr-3"></i>Return to Cart
          </Link>
          <h2 className="text-4xl font-heading italic text-sio-text">
            Secure Checkout
          </h2>
        </div>

        <div className="grid grid-cols-1 lg:grid-cols-12 gap-12 lg:gap-16">
          <div className="lg:col-span-7 xl:col-span-8">
            <div className="bg-sio-surface border-[0.5px] border-sio-border mb-8">
              <div className="px-10 py-8 border-b-[0.5px] border-sio-border bg-sio-surface">
                <h5 className="text-2xl font-heading italic text-sio-text">Delivery Details</h5>
              </div>
              <div className="p-10">
                {error && (
                  <div className="bg-red-900/50 text-red-200 p-5 border-[0.5px] border-red-500 flex items-center mb-8">
                    <i className="bi bi-exclamation-triangle mr-4 text-lg"></i>
                    <p className="text-sm font-light tracking-wide">{error}</p>
                  </div>
                )}
                
                <form onSubmit={handleCheckout} id="checkout-form" className="space-y-8">
                  <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
                    <div>
                      <label className="block text-[0.65rem] uppercase tracking-widest text-sio-text-muted mb-2">Full Name</label>
                      <input 
                        type="text" 
                        name="fullName"
                        value={shippingDetails.fullName}
                        onChange={handleChange}
                        required 
                        className="w-full bg-transparent border-b border-sio-border rounded-none px-0 py-3 focus:ring-0 focus:border-sio-yellow text-sio-text text-sm transition-colors"
                        placeholder="Juan Dela Cruz"
                      />
                    </div>
                    
                    <div>
                      <label className="block text-[0.65rem] uppercase tracking-widest text-sio-text-muted mb-2">Phone Number</label>
                      <input 
                        type="tel" 
                        name="phone"
                        value={shippingDetails.phone}
                        onChange={handleChange}
                        required 
                        className="w-full bg-transparent border-b border-sio-border rounded-none px-0 py-3 focus:ring-0 focus:border-sio-yellow text-sio-text text-sm transition-colors"
                        placeholder="0912 345 6789"
                      />
                    </div>
                  </div>
                  
                  <div>
                    <label className="block text-[0.65rem] uppercase tracking-widest text-sio-text-muted mb-2">Delivery Address</label>
                    <textarea 
                      rows="2" 
                      name="address"
                      value={shippingDetails.address}
                      onChange={handleChange}
                      required 
                      className="w-full bg-transparent border-b border-sio-border rounded-none px-0 py-3 focus:ring-0 focus:border-sio-yellow text-sio-text text-sm transition-colors resize-none"
                      placeholder="House No., Street, Barangay, City"
                    ></textarea>
                  </div>

                  <div>
                    <label className="block text-[0.65rem] uppercase tracking-widest text-sio-text-muted mb-2 flex justify-between">
                      <span>Delivery Notes</span>
                      <span className="text-sio-text-muted font-light tracking-wide">Optional</span>
                    </label>
                    <textarea 
                      rows="1" 
                      name="notes"
                      value={shippingDetails.notes}
                      onChange={handleChange}
                      className="w-full bg-transparent border-b border-sio-border rounded-none px-0 py-3 focus:ring-0 focus:border-sio-yellow text-sio-text text-sm transition-colors resize-none"
                      placeholder="Special instructions for the courier"
                    ></textarea>
                  </div>
                  
                  <div className="bg-sio-bg border-[0.5px] border-sio-border text-gray-300 p-6 flex items-start mt-10">
                    <i className="bi bi-wallet2 text-sio-yellow mt-0.5 mr-4 text-lg"></i>
                    <div>
                      <strong className="block mb-2 text-[0.65rem] uppercase tracking-widest text-sio-text">Cash on Delivery (COD)</strong>
                      <span className="text-sm font-light leading-relaxed">Currently, we only accept cash upon delivery. Please prepare the exact amount to expedite the process.</span>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>

          <div className="lg:col-span-5 xl:col-span-4">
            <div className="bg-sio-surface border-[0.5px] border-sio-border sticky top-32">
              <div className="px-8 py-8 border-b-[0.5px] border-sio-border bg-sio-surface">
                <h5 className="text-2xl font-heading font-bold text-sio-text">Order Summary</h5>
              </div>
              <div className="p-0">
                <div className="divide-y-[0.5px] divide-sio-border max-h-96 overflow-y-auto px-8">
                  {safeCartItems.map((item, idx) => (
                    <div key={idx} className="py-6 flex justify-between items-center">
                      <div className="flex items-center">
                        <span className="text-[0.65rem] uppercase tracking-widest text-sio-yellow mr-5 w-4">{item.quantity}x</span>
                        <div>
                          <h6 className="font-heading text-lg text-sio-text">{item.name}</h6>
                          <span className="font-light text-sio-text-muted text-xs tracking-wide">₱{(item.price || 0).toFixed(2)} each</span>
                        </div>
                      </div>
                      <span className="font-medium text-sio-yellow tracking-wide">₱{((item.price || 0) * (item.quantity || 1)).toFixed(2)}</span>
                    </div>
                  ))}
                </div>
              </div>
              
              <div className="bg-sio-bg p-8 border-t-[0.5px] border-sio-border">
                <div className="flex justify-between mb-4 text-sm font-light text-sio-text-muted tracking-wide">
                  <span>Subtotal ({cartCount} items)</span>
                  <span className="text-sio-text font-medium">₱{subtotal.toFixed(2)}</span>
                </div>
                <div className="flex justify-between mb-6 text-sm font-light text-sio-text-muted tracking-wide">
                  <span>Delivery Fee</span>
                  <span className="text-sio-text font-medium">₱{deliveryFee.toFixed(2)}</span>
                </div>
                <div className="h-[0.5px] bg-sio-gray w-full mb-6"></div>
                <div className="flex justify-between mb-8">
                  <span className="text-[0.65rem] uppercase tracking-[0.2em] text-sio-text flex items-center">Total Amount</span>
                  <span className="text-2xl font-sans font-black text-sio-yellow tracking-wide">₱{total.toFixed(2)}</span>
                </div>
                
                <button 
                  type="submit" 
                  form="checkout-form" 
                  className="w-full btn-primary py-4 text-xs uppercase tracking-widest flex justify-center items-center gap-3 transition-all hover:bg-black" 
                  disabled={loading || safeCartItems.length === 0}
                >
                  {loading ? (
                    <><div className="w-4 h-4 border-2 border-white/30 border-t-white rounded-full animate-spin"></div> Processing...</>
                  ) : (
                    <>Confirm Purchase <i className="bi bi-arrow-right"></i></>
                  )}
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
  );
}
