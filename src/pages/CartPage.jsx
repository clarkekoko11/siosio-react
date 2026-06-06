import React, { useContext } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { CartContext } from '../contexts/CartContext';

export default function CartPage() {
  const navigate = useNavigate();
  const { cartItems, cartCount, updateQuantity, removeFromCart } = useContext(CartContext);
  
  const safeCartItems = Array.isArray(cartItems) ? cartItems : [];
  const total = safeCartItems.reduce((acc, item) => acc + ((item?.price || 0) * (item?.quantity || 1)), 0);

  return (
    <main className="pt-32 pb-32 bg-sio-bg min-h-screen font-sans text-sio-text selection:bg-sio-yellow selection:text-sio-dark">
      <div className="container-custom">
        <div className="flex flex-col sm:flex-row justify-between items-start sm:items-end mb-12 border-b-[0.5px] border-sio-border pb-6 gap-4">
          <div>
            <span className="text-xs uppercase tracking-[0.2em] text-sio-yellow mb-2 block">Your Selection</span>
            <h2 className="text-4xl font-heading font-bold text-sio-text flex items-center">
              Reservation Cart 
              <span className="ml-4 font-sans bg-sio-red text-white font-bold text-[0.65rem] uppercase tracking-widest px-3 py-1.5 rounded-md not-italic">{cartCount} items</span>
            </h2>
          </div>
          <Link to="/shop" className="text-xs uppercase tracking-widest text-sio-text-muted hover:text-sio-yellow transition-colors flex items-center">
            <i className="bi bi-arrow-left mr-2"></i>Continue Browsing
          </Link>
        </div>

        <div className="grid grid-cols-1 lg:grid-cols-3 gap-8">
          <div className="lg:col-span-2">
            <div className="bg-sio-surface border-[0.5px] border-sio-border">
              {cartItems.length === 0 ? (
                <div className="text-center py-24 px-4">
                  <i className="bi bi-bag text-sio-text-muted text-4xl block mb-6"></i>
                  <h4 className="text-2xl font-heading italic text-sio-text mb-2">Your cart is empty</h4>
                  <p className="text-sio-text-muted mb-8 font-light">You have not made any selections yet.</p>
                  <Link to="/shop" className="btn-primary text-xs uppercase tracking-widest px-8 py-3 inline-block">View Menu</Link>
                </div>
              ) : (
                <div className="overflow-x-auto">
                  <table className="w-full text-left border-collapse">
                    <thead>
                      <tr className="bg-sio-bg text-sio-text-muted text-[0.65rem] uppercase tracking-[0.2em] border-b-[0.5px] border-sio-border">
                        <th className="py-4 px-6 font-medium">Product</th>
                        <th className="py-4 px-6 font-medium">Price</th>
                        <th className="py-4 px-6 font-medium text-center">Quantity</th>
                        <th className="py-4 px-6 font-medium text-right">Subtotal</th>
                        <th className="py-4 px-6 font-medium text-center"></th>
                      </tr>
                    </thead>
                    <tbody className="divide-y-[0.5px] divide-sio-border">
                      {safeCartItems.map((item, idx) => (
                        <tr key={idx} className="hover:bg-sio-gray/20 transition-colors">
                          <td className="py-6 px-6">
                            <div className="flex items-center">
                              <img src={item.image} alt={item.name} className="w-20 h-20 object-cover border-[0.5px] border-sio-border mr-6 filter grayscale-[20%]" />
                              <div>
                                <h6 className="font-heading text-lg text-sio-text">{item.name}</h6>
                              </div>
                            </div>
                          </td>
                          <td className="py-6 px-6 text-sio-text-muted font-light">₱{(item.price || 0).toFixed(2)}</td>
                          <td className="py-6 px-6">
                            <div className="flex items-center justify-between border-[0.5px] border-sio-border w-28 mx-auto bg-sio-bg">
                              <button className="w-8 h-10 flex items-center justify-center text-sio-text-muted hover:text-sio-yellow transition-colors" type="button" onClick={() => updateQuantity(item.id, item.quantity - 1)}><i className="bi bi-dash"></i></button>
                              <input type="text" className="w-10 h-10 text-center text-sio-text text-sm font-medium border-none focus:outline-none focus:ring-0 bg-transparent p-0" value={item.quantity} readOnly />
                              <button className="w-8 h-10 flex items-center justify-center text-sio-text-muted hover:text-sio-yellow transition-colors" type="button" onClick={() => updateQuantity(item.id, item.quantity + 1)}><i className="bi bi-plus"></i></button>
                            </div>
                          </td>
                          <td className="py-6 px-6 font-medium text-sio-yellow text-right tracking-wide">₱{((item.price || 0) * (item.quantity || 1)).toFixed(2)}</td>
                          <td className="py-6 px-6 text-center">
                            <button className="w-8 h-8 rounded-full flex items-center justify-center text-sio-text-muted hover:text-sio-red mx-auto transition-colors" onClick={() => removeFromCart(item.id)}>
                              <i className="bi bi-x-lg text-sm"></i>
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

          <div className="lg:col-span-1">
            <div className="bg-sio-surface border-[0.5px] border-sio-border sticky top-32">
              <div className="p-8 border-b-[0.5px] border-sio-border">
                <h5 className="text-xl font-heading font-bold text-sio-text">Summary</h5>
              </div>
              <div className="p-8">
                <div className="flex justify-between mb-4 text-sio-text-muted text-sm font-light">
                  <span>Subtotal</span>
                  <span className="text-sio-text font-medium tracking-wide">₱{total.toFixed(2)}</span>
                </div>
                <div className="flex justify-between mb-8 text-sio-text-muted text-sm font-light">
                  <span>Delivery</span>
                  <span className="text-sio-yellow font-medium">Complimentary</span>
                </div>
                <div className="h-[1px] bg-sio-gray w-full mb-8"></div>
                <div className="flex justify-between mb-10 items-end">
                  <span className="text-xs uppercase tracking-widest text-sio-text-muted">Total</span>
                  <span className="text-2xl font-sans font-black tracking-wide text-sio-yellow">₱{total.toFixed(2)}</span>
                </div>
                <button 
                  className="w-full btn-primary py-4 text-xs uppercase tracking-widest flex items-center justify-center" 
                  disabled={safeCartItems.length === 0} 
                  onClick={() => navigate('/checkout')}
                >
                  Proceed to Checkout <i className="bi bi-arrow-right ml-3 text-lg"></i>
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
  );
}
