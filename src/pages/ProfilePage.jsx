import React, { useContext, useState, useEffect } from 'react';
import { AuthContext } from '../contexts/AuthContext';
import { supabase } from '../lib/supabase';
import { Link } from 'react-router-dom';

export default function ProfilePage() {
  const { user, profile } = useContext(AuthContext);
  const [activeTab, setActiveTab] = useState('personal');
  const [loading, setLoading] = useState(false);
  const [message, setMessage] = useState('');

  // Form states
  const [name, setName] = useState(profile?.name || '');
  const [phone, setPhone] = useState(profile?.phone || '');

  // Orders state
  const [orders, setOrders] = useState([]);
  const [loadingOrders, setLoadingOrders] = useState(false);

  useEffect(() => {
    if (activeTab === 'orders' && user) {
      fetchOrders();
    }
  }, [activeTab, user]);

  const fetchOrders = async () => {
    setLoadingOrders(true);
    try {
      const { data, error } = await supabase
        .from('orders')
        .select(`
          *,
          order_items (*)
        `)
        .eq('user_id', user.id)
        .order('created_at', { ascending: false });
        
      if (error) throw error;
      setOrders(data || []);
    } catch (err) {
      console.error('Error fetching orders:', err);
    } finally {
      setLoadingOrders(false);
    }
  };
  
  const handleCancelOrder = async (orderId) => {
    if (!window.confirm('Are you sure you want to cancel this order? This will permanently remove it from your history.')) return;
    
    try {
      const { error } = await supabase
        .from('orders')
        .delete()
        .eq('id', orderId)
        .eq('user_id', user.id);
        
      if (error) throw error;
      
      setOrders(orders.filter(order => order.id !== orderId));
      
    } catch (err) {
      alert(`Failed to cancel order: ${err.message}`);
    }
  };
  
  const handleProfileUpdate = async (e) => {
    e.preventDefault();
    setLoading(true);
    setMessage('');
    try {
      const { error } = await supabase
        .from('profiles')
        .update({ name, phone })
        .eq('id', user.id);
      
      if (error) throw error;
      setMessage('Profile updated successfully!');
    } catch (err) {
      setMessage(`Error: ${err.message}`);
    } finally {
      setLoading(false);
    }
  };

  return (
    <main className="min-h-screen bg-sio-bg pt-32 pb-32 font-sans text-sio-text selection:bg-sio-yellow selection:text-sio-dark">
      <div className="container-custom">
        <div className="flex flex-col lg:flex-row gap-8">
          
          {/* Sidebar */}
          <div className="lg:w-1/4">
            <div className="bg-sio-surface border-[0.5px] border-sio-border p-8 text-center sticky top-32">
              <div className="w-32 h-32 mx-auto rounded-full overflow-hidden border-[0.5px] border-sio-border mb-6 bg-sio-bg flex items-center justify-center">
                {profile?.profile_photo ? (
                  <img src={profile.profile_photo} alt="Profile" className="w-full h-full object-cover filter grayscale-[40%]" />
                ) : (
                  <i className="bi bi-person text-sio-text-muted text-4xl"></i>
                )}
              </div>
              <h5 className="text-xl font-heading italic text-sio-text mb-1">{profile?.name || 'User'}</h5>
              <p className="text-sio-yellow text-xs uppercase tracking-widest mb-8">{user?.email}</p>
              
              <nav className="flex flex-col space-y-2 mt-8">
                <button 
                  onClick={() => setActiveTab('personal')}
                  className={`flex items-center px-4 py-3 text-xs uppercase tracking-widest transition-colors ${activeTab === 'personal' ? 'bg-sio-bg text-sio-yellow border-l-[2px] border-sio-yellow' : 'text-sio-text-muted hover:bg-sio-bg hover:text-sio-text border-l-[2px] border-transparent'}`}
                >
                  <i className="bi bi-person mr-3 text-lg"></i> Personal Info
                </button>
                <button 
                  onClick={() => setActiveTab('orders')}
                  className={`flex items-center px-4 py-3 text-xs uppercase tracking-widest transition-colors ${activeTab === 'orders' ? 'bg-sio-bg text-sio-yellow border-l-[2px] border-sio-yellow' : 'text-sio-text-muted hover:bg-sio-bg hover:text-sio-text border-l-[2px] border-transparent'}`}
                >
                  <i className="bi bi-bag mr-3 text-lg"></i> Order History
                </button>
                <button 
                  onClick={() => setActiveTab('security')}
                  className={`flex items-center px-4 py-3 text-xs uppercase tracking-widest transition-colors ${activeTab === 'security' ? 'bg-sio-bg text-sio-yellow border-l-[2px] border-sio-yellow' : 'text-sio-text-muted hover:bg-sio-bg hover:text-sio-text border-l-[2px] border-transparent'}`}
                >
                  <i className="bi bi-shield mr-3 text-lg"></i> Security
                </button>
              </nav>
            </div>
          </div>

          {/* Content Area */}
          <div className="lg:w-3/4">
            <div className="bg-sio-surface border-[0.5px] border-sio-border h-full">
              <div className="p-10 md:p-16">
                
                {activeTab === 'personal' && (
                  <div className="animate-fade-in">
                    <h3 className="text-3xl font-heading italic text-sio-text mb-8 pb-4 border-b-[0.5px] border-sio-border">Personal Information</h3>
                    
                    {message && (
                      <div className={`p-4 mb-8 flex items-center font-medium text-xs uppercase tracking-widest border-[0.5px] ${message.includes('Error') ? 'bg-red-900/50 text-red-200 border-red-500' : 'bg-green-900/50 text-green-200 border-green-500'}`}>
                        {message}
                      </div>
                    )}

                    <form onSubmit={handleProfileUpdate} className="space-y-8">
                      <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
                        <div>
                          <label className="block text-xs uppercase tracking-widest text-sio-text-muted mb-3">Full Name</label>
                          <input type="text" className="input-field bg-transparent border-b border-sio-border rounded-none px-0 py-2 focus:ring-0 focus:border-sio-yellow" value={name} onChange={e => setName(e.target.value)} required />
                        </div>
                        <div>
                          <label className="block text-xs uppercase tracking-widest text-sio-text-muted mb-3">Phone Number</label>
                          <input type="tel" className="input-field bg-transparent border-b border-sio-border rounded-none px-0 py-2 focus:ring-0 focus:border-sio-yellow" value={phone} onChange={e => setPhone(e.target.value)} placeholder="+63 9xx xxx xxxx" />
                        </div>
                        <div className="md:col-span-2">
                          <label className="block text-xs uppercase tracking-widest text-sio-text-muted mb-3">Email Address</label>
                          <input type="email" className="input-field bg-transparent border-b border-sio-border rounded-none px-0 py-2 text-sio-text-muted cursor-not-allowed focus:ring-0" value={user?.email || ''} disabled />
                          <p className="text-[0.65rem] uppercase tracking-widest text-sio-text-muted mt-2">Email address cannot be changed here.</p>
                        </div>
                      </div>
                      
                      <div className="pt-8">
                        <button type="submit" className="btn-primary py-4 px-12 text-xs uppercase tracking-widest" disabled={loading}>
                          {loading ? 'Saving Changes...' : 'Save Changes'}
                        </button>
                      </div>
                    </form>
                  </div>
                )}

                {activeTab === 'orders' && (
                  <div className="animate-fade-in">
                    <h3 className="text-3xl font-heading italic text-sio-text mb-8 pb-4 border-b-[0.5px] border-sio-border">Order History</h3>
                    
                    {loadingOrders ? (
                      <div className="flex justify-center py-16">
                        <div className="animate-spin rounded-full h-8 w-8 border-t-[0.5px] border-b-[0.5px] border-sio-yellow"></div>
                      </div>
                    ) : orders.length === 0 ? (
                      <div className="text-center py-16 px-4">
                        <i className="bi bi-box-seam text-sio-text-muted text-4xl block mb-6"></i>
                        <h5 className="text-2xl font-heading italic text-sio-text mb-2">No orders found</h5>
                        <p className="text-sio-text-muted font-light">You haven't placed any orders yet. Try out our delicious menu!</p>
                      </div>
                    ) : (
                      <div className="space-y-8">
                        {orders.map(order => (
                          <div key={order.id} className="border-[0.5px] border-sio-border overflow-hidden group">
                            <div className="bg-sio-bg px-8 py-6 flex flex-wrap justify-between items-center gap-6 border-b-[0.5px] border-sio-border">
                              <div>
                                <p className="text-[0.65rem] text-sio-text-muted uppercase tracking-widest mb-1">Date</p>
                                <p className="font-medium text-sio-text">{new Date(order.created_at).toLocaleDateString()}</p>
                              </div>
                              <div className="text-right">
                                <p className="text-[0.65rem] text-sio-text-muted uppercase tracking-widest mb-1">Status</p>
                                <span className={`text-[0.65rem] font-medium tracking-widest uppercase px-3 py-1 ${
                                  order.status === 'pending' ? 'bg-amber-900/30 text-amber-500 border-[0.5px] border-amber-900' : 
                                  order.status === 'delivered' ? 'bg-green-900/30 text-green-500 border-[0.5px] border-green-900' : 
                                  order.status === 'cancelled' ? 'bg-red-900/30 text-red-500 border-[0.5px] border-red-900' : 'bg-blue-900/30 text-blue-500 border-[0.5px] border-blue-900'
                                }`}>
                                  {order.status}
                                </span>
                              </div>
                              <div className="text-right">
                                <p className="text-[0.65rem] text-sio-text-muted uppercase tracking-widest mb-1">Total</p>
                                <p className="font-medium tracking-wide text-sio-yellow">₱{order.total_amount.toFixed(2)}</p>
                              </div>
                            </div>
                            
                            <div className="bg-sio-surface">
                              <ul className="divide-y-[0.5px] divide-sio-border">
                                {order.order_items?.map(item => (
                                  <li key={item.id} className="px-8 py-5 flex justify-between items-center hover:bg-sio-bg transition-colors">
                                    <div className="flex items-center">
                                      <span className="text-sio-text-muted text-xs tracking-widest mr-4">{item.quantity}x</span>
                                      <span className="font-heading text-lg text-sio-text">{item.product_name}</span>
                                    </div>
                                    <span className="text-sio-text-muted font-light">₱{(item.price * item.quantity).toFixed(2)}</span>
                                  </li>
                                ))}
                              </ul>
                            </div>
                            
                            <div className="bg-sio-bg px-8 py-5 flex justify-between items-center border-t-[0.5px] border-sio-border">
                              <p className="text-xs text-sio-text-muted font-light tracking-wide">
                                <span className="uppercase tracking-widest text-sio-text-muted mr-2">Destination:</span> {order.full_name}, {order.address}
                              </p>
                              {order.status === 'pending' && (
                                <button 
                                  className="text-[0.65rem] uppercase tracking-widest text-red-500 hover:text-red-400 transition-colors"
                                  onClick={() => handleCancelOrder(order.id)}
                                >
                                  Cancel
                                </button>
                              )}
                            </div>
                          </div>
                        ))}
                      </div>
                    )}
                  </div>
                )}

                {activeTab === 'security' && (
                  <div className="animate-fade-in">
                    <h3 className="text-3xl font-heading italic text-sio-text mb-2 pb-4 border-b-[0.5px] border-sio-border">Security</h3>
                    <p className="text-sio-text-muted mb-8 pb-4 font-light text-sm">Manage your password and security preferences.</p>
                    
                    <div className="border-[0.5px] border-sio-border p-8 bg-sio-bg">
                      <div className="flex flex-col md:flex-row justify-between items-start md:items-center gap-6">
                        <div>
                          <h5 className="font-heading text-xl text-sio-text mb-1">Change Password</h5>
                          <p className="text-sm text-sio-text-muted font-light">We'll send a secure password reset link to your email address.</p>
                        </div>
                        <Link to="/forgot-password" className="btn-secondary px-8 py-3 text-xs uppercase tracking-widest shrink-0">
                          Reset
                        </Link>
                      </div>
                    </div>
                  </div>
                )}

              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
  );
}
