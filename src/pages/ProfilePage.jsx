import React, { useContext, useState, useEffect } from 'react';
import { AuthContext } from '../contexts/AuthContext';
import { supabase } from '../lib/supabase';
import '../styles/profile.css';

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
        .eq('user_id', user.id); // Extra safety
        
      if (error) throw error;
      
      // Remove from local state instantly
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
    <div className="container py-5 profile-container">
      <div className="row">
        {/* Sidebar */}
        <div className="col-lg-3 mb-4">
          <div className="card shadow-sm border-0 profile-sidebar">
            <div className="card-body text-center p-4">
              <div className="profile-img-container mx-auto mb-3">
                {profile?.profile_photo ? (
                  <img src={profile.profile_photo} alt="Profile" className="rounded-circle img-fluid shadow-sm" style={{ width: '120px', height: '120px', objectFit: 'cover' }} />
                ) : (
                  <div className="rounded-circle bg-light d-flex align-items-center justify-content-center mx-auto shadow-sm" style={{ width: '120px', height: '120px' }}>
                    <i className="bi bi-person text-secondary" style={{ fontSize: '4rem' }}></i>
                  </div>
                )}
              </div>
              <h5 className="fw-bold mb-1">{profile?.name || 'User'}</h5>
              <p className="text-muted small mb-3">{user?.email}</p>
              
              <div className="nav flex-column nav-pills mt-4" role="tablist">
                <button className={`nav-link text-start ${activeTab === 'personal' ? 'active' : ''}`} onClick={() => setActiveTab('personal')}>
                  <i className="bi bi-person-lines-fill me-2"></i> Personal Info
                </button>
                <button className={`nav-link text-start ${activeTab === 'orders' ? 'active' : ''}`} onClick={() => setActiveTab('orders')}>
                  <i className="bi bi-bag-check me-2"></i> My Orders
                </button>
                <button className={`nav-link text-start ${activeTab === 'security' ? 'active' : ''}`} onClick={() => setActiveTab('security')}>
                  <i className="bi bi-shield-lock me-2"></i> Security
                </button>
              </div>
            </div>
          </div>
        </div>

        {/* Content Area */}
        <div className="col-lg-9">
          <div className="card shadow-sm border-0 h-100">
            <div className="card-body p-4 p-md-5">
              
              {activeTab === 'personal' && (
                <div className="tab-pane fade show active">
                  <h3 className="fw-bold mb-4 border-bottom pb-3">Personal Information</h3>
                  
                  {message && (
                    <div className={`alert ${message.includes('Error') ? 'alert-danger' : 'alert-success'}`}>
                      {message}
                    </div>
                  )}

                  <form onSubmit={handleProfileUpdate}>
                    <div className="row g-4 mb-4">
                      <div className="col-md-6">
                        <label className="form-label text-muted small fw-bold text-uppercase">Full Name</label>
                        <input type="text" className="form-control" value={name} onChange={e => setName(e.target.value)} required />
                      </div>
                      <div className="col-md-6">
                        <label className="form-label text-muted small fw-bold text-uppercase">Email Address</label>
                        <input type="email" className="form-control" value={user?.email || ''} disabled />
                        <div className="form-text">Email address cannot be changed here.</div>
                      </div>
                      <div className="col-md-6">
                        <label className="form-label text-muted small fw-bold text-uppercase">Phone Number</label>
                        <input type="tel" className="form-control" value={phone} onChange={e => setPhone(e.target.value)} placeholder="+63 9xx xxx xxxx" />
                      </div>
                    </div>
                    
                    <button type="submit" className="btn btn-primary px-4 py-2" disabled={loading}>
                      {loading ? 'Saving...' : 'Save Changes'}
                    </button>
                  </form>
                </div>
              )}

              {activeTab === 'orders' && (
                <div className="tab-pane fade show active">
                  <h3 className="fw-bold mb-4 border-bottom pb-3">My Orders</h3>
                  
                  {loadingOrders ? (
                    <div className="text-center py-5">
                      <div className="spinner-border text-danger" role="status"></div>
                    </div>
                  ) : orders.length === 0 ? (
                    <div className="text-center py-5">
                      <i className="bi bi-box-seam text-muted opacity-50" style={{ fontSize: '4rem' }}></i>
                      <h5 className="mt-3">No orders found</h5>
                      <p className="text-muted">You haven't placed any orders yet.</p>
                    </div>
                  ) : (
                    <div className="orders-list">
                      {orders.map(order => (
                        <div key={order.id} className="card border mb-4 shadow-sm">
                          <div className="card-header bg-light d-flex justify-content-between align-items-center py-3">
                            <div>
                              <small className="text-muted d-block">Order Placed</small>
                              <span className="fw-bold">{new Date(order.created_at).toLocaleDateString()}</span>
                            </div>
                            <div className="text-end">
                              <small className="text-muted d-block">Status</small>
                              <span className={`badge ${
                                order.status === 'pending' ? 'bg-warning text-dark' : 
                                order.status === 'delivered' ? 'bg-success' : 
                                order.status === 'cancelled' ? 'bg-danger' : 'bg-primary'
                              }`}>
                                {order.status.toUpperCase()}
                              </span>
                            </div>
                            <div className="text-end">
                              <small className="text-muted d-block">Total</small>
                              <span className="fw-bold text-danger">₱{order.total_amount.toFixed(2)}</span>
                            </div>
                          </div>
                          <div className="card-body p-0">
                            <ul className="list-group list-group-flush">
                              {order.order_items?.map(item => (
                                <li key={item.id} className="list-group-item d-flex justify-content-between align-items-center py-3 px-4">
                                  <div>
                                    <span className="fw-bold me-2">{item.quantity}x</span>
                                    {item.product_name}
                                  </div>
                                  <span className="text-muted">₱{(item.price * item.quantity).toFixed(2)}</span>
                                </li>
                              ))}
                            </ul>
                          </div>
                          <div className="card-footer bg-white px-4 py-3 d-flex justify-content-between align-items-center">
                            <small className="text-muted">
                              <strong>Delivering to:</strong> {order.full_name}, {order.address}
                            </small>
                            {order.status === 'pending' && (
                              <button 
                                className="btn btn-outline-danger btn-sm"
                                onClick={() => handleCancelOrder(order.id)}
                              >
                                Cancel Order
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
                <div className="tab-pane fade show active">
                  <h3 className="fw-bold mb-4 border-bottom pb-3">Security Settings</h3>
                  <p className="text-muted mb-4">Manage your password and security preferences.</p>
                  
                  <div className="card border bg-light">
                    <div className="card-body">
                      <h5 className="card-title fw-bold">Change Password</h5>
                      <p className="card-text text-muted small">We'll send a password reset link to your email address.</p>
                      <button className="btn btn-outline-danger" onClick={() => window.location.href = '/forgot-password'}>
                        Reset Password
                      </button>
                    </div>
                  </div>
                </div>
              )}

            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
