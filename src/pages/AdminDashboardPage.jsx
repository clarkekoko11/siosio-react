import React, { useContext, useState, useEffect } from 'react';
import { AuthContext } from '../contexts/AuthContext';
import { supabase } from '../lib/supabase';

export default function AdminDashboardPage() {
  const { user, isAdmin } = useContext(AuthContext);
  const [activeTab, setActiveTab] = useState('orders');
  const [orders, setOrders] = useState([]);
  const [users, setUsers] = useState([]);
  const [products, setProducts] = useState([]);
  const [loading, setLoading] = useState(true);

  // Form states for new user
  const [newUserEmail, setNewUserEmail] = useState('');
  const [newUserPassword, setNewUserPassword] = useState('');
  const [newUserName, setNewUserName] = useState('');
  const [newUserRole, setNewUserRole] = useState('customer');

  // Form states for new product
  const [newProductName, setNewProductName] = useState('');
  const [newProductCategory, setNewProductCategory] = useState('siomai');
  const [newProductDesc, setNewProductDesc] = useState('');
  const [newProductPrice, setNewProductPrice] = useState('');
  const [newProductImage, setNewProductImage] = useState('');

  // Editing product states
  const [editingProductId, setEditingProductId] = useState(null);
  const [editProductForm, setEditProductForm] = useState({ name: '', category: '', description: '', price: '', image: '', status: '' });

  useEffect(() => {
    if (isAdmin) {
      if (activeTab === 'orders') fetchOrders();
      if (activeTab === 'users') fetchUsers();
      if (activeTab === 'products') fetchProducts();
    }
  }, [activeTab, isAdmin]);

  const fetchOrders = async () => {
    setLoading(true);
    try {
      const { data, error } = await supabase.from('orders').select('*, order_items(*)').order('created_at', { ascending: false });
      if (error) throw error;
      setOrders(data || []);
    } catch (err) { console.error(err); } finally { setLoading(false); }
  };

  const fetchUsers = async () => {
    setLoading(true);
    try {
      const { data, error } = await supabase.from('profiles').select('*').order('created_at', { ascending: false });
      if (error) throw error;
      setUsers(data || []);
    } catch (err) { console.error(err); } finally { setLoading(false); }
  };

  const fetchProducts = async () => {
    setLoading(true);
    try {
      const { data, error } = await supabase.from('products').select('*').order('id', { ascending: false });
      if (error) throw error;
      setProducts(data || []);
    } catch (err) { console.error(err); } finally { setLoading(false); }
  };

  // --- ORDER ACTIONS ---
  const updateOrderStatus = async (orderId, newStatus) => {
    try {
      const { error } = await supabase.from('orders').update({ status: newStatus }).eq('id', orderId);
      if (error) throw error;
      setOrders(orders.map(o => o.id === orderId ? { ...o, status: newStatus } : o));
    } catch (err) { alert(`Error: ${err.message}`); }
  };
  const deleteOrder = async (orderId) => {
    if (!window.confirm("Permanently delete this order?")) return;
    try {
      const { error } = await supabase.from('orders').delete().eq('id', orderId);
      if (error) throw error;
      setOrders(orders.filter(o => o.id !== orderId));
    } catch (err) { alert(`Error: ${err.message}`); }
  };

  // --- USER ACTIONS ---
  const handleCreateUser = async (e) => {
    e.preventDefault();
    try {
      const { data, error } = await supabase.rpc('create_user_admin', {
        new_email: newUserEmail,
        new_password: newUserPassword,
        new_name: newUserName,
        new_role: newUserRole
      });
      if (error) throw error;
      alert("User created successfully!");
      setNewUserEmail(''); setNewUserPassword(''); setNewUserName('');
      fetchUsers();
    } catch (err) { alert(`Failed to create user: ${err.message}`); }
  };

  const updateUserRole = async (userId, newRole) => {
    try {
      const { error } = await supabase.from('profiles').update({ role: newRole }).eq('id', userId);
      if (error) throw error;
      setUsers(users.map(u => u.id === userId ? { ...u, role: newRole } : u));
    } catch (err) { alert(`Error: ${err.message}`); }
  };

  const deleteUser = async (userId) => {
    if (!window.confirm("Permanently delete this user and all their data?")) return;
    try {
      const { error } = await supabase.rpc('delete_user_admin', { target_user_id: userId });
      if (error) throw error;
      setUsers(users.filter(u => u.id !== userId));
    } catch (err) { alert(`Error: ${err.message}`); }
  };

  // --- PRODUCT ACTIONS ---
  const handleCreateProduct = async (e) => {
    e.preventDefault();
    try {
      const { error } = await supabase.from('products').insert([{
        name: newProductName,
        category: newProductCategory,
        description: newProductDesc,
        price: parseFloat(newProductPrice),
        image: newProductImage
      }]);
      if (error) throw error;
      alert("Product created successfully!");
      setNewProductName(''); setNewProductDesc(''); setNewProductPrice(''); setNewProductImage('');
      fetchProducts();
    } catch (err) { alert(`Failed to create product: ${err.message}`); }
  };

  const deleteProduct = async (productId) => {
    if (!window.confirm("Delete this product?")) return;
    try {
      const { error } = await supabase.from('products').delete().eq('id', productId);
      if (error) throw error;
      setProducts(products.filter(p => p.id !== productId));
    } catch (err) { alert(`Error: ${err.message}`); }
  };

  const handleEditProduct = (product) => {
    setEditingProductId(product.id);
    setEditProductForm({
      name: product.name,
      category: product.category,
      description: product.description,
      price: product.price,
      image: product.image,
      status: product.status || 'active'
    });
  };

  const saveEditedProduct = async () => {
    try {
      const { error } = await supabase.from('products').update({
        name: editProductForm.name,
        category: editProductForm.category,
        description: editProductForm.description,
        price: parseFloat(editProductForm.price),
        image: editProductForm.image,
        status: editProductForm.status
      }).eq('id', editingProductId);
      
      if (error) throw error;
      setEditingProductId(null);
      fetchProducts();
    } catch (err) { alert(`Error: ${err.message}`); }
  };

  if (!isAdmin) {
    return (
      <div className="container py-5 text-center">
        <h2>Access Denied</h2>
        <p>You do not have permission to view this page.</p>
      </div>
    );
  }

  return (
    <div className="container py-5">
      <h2 className="fw-bold mb-4">Admin Dashboard</h2>
      
      <div className="row">
        {/* Sidebar */}
        <div className="col-md-3 mb-4">
          <div className="list-group shadow-sm">
            <button className={`list-group-item list-group-item-action ${activeTab === 'orders' ? 'active bg-danger border-danger' : ''}`} onClick={() => setActiveTab('orders')}>
              <i className="bi bi-box-seam me-2"></i> Orders
            </button>
            <button className={`list-group-item list-group-item-action ${activeTab === 'users' ? 'active bg-danger border-danger' : ''}`} onClick={() => setActiveTab('users')}>
              <i className="bi bi-people me-2"></i> Users
            </button>
            <button className={`list-group-item list-group-item-action ${activeTab === 'products' ? 'active bg-danger border-danger' : ''}`} onClick={() => setActiveTab('products')}>
              <i className="bi bi-bag me-2"></i> Products
            </button>
          </div>
        </div>

        {/* Main Content */}
        <div className="col-md-9">
          <div className="card shadow-sm border-0">
            <div className="card-body p-4">
              
              {loading ? (
                <div className="text-center py-5">
                  <div className="spinner-border text-danger" role="status"></div>
                </div>
              ) : (
                <>
                  {/* ORDERS TAB */}
                  {activeTab === 'orders' && (
                    <div>
                      <h4 className="fw-bold mb-4">Store Orders</h4>
                      {orders.length === 0 ? <p className="text-muted text-center py-4">No orders found.</p> : (
                        <div className="table-responsive">
                          <table className="table table-hover align-middle">
                            <thead className="table-light">
                              <tr>
                                <th>Order ID</th>
                                <th>Customer</th>
                                <th>Total</th>
                                <th>Status</th>
                                <th>Actions</th>
                              </tr>
                            </thead>
                            <tbody>
                              {orders.map(order => (
                                <tr key={order.id}>
                                  <td>
                                    <small className="text-muted">{order.id.split('-')[0]}</small><br/>
                                    <small>{new Date(order.created_at).toLocaleDateString()}</small>
                                  </td>
                                  <td>
                                    <strong>{order.full_name}</strong><br/>
                                    <small className="text-muted">{order.phone}</small>
                                  </td>
                                  <td><strong className="text-danger">₱{order.total_amount.toFixed(2)}</strong></td>
                                  <td>
                                    <select 
                                      className={`form-select form-select-sm fw-bold ${order.status === 'pending' ? 'text-warning' : order.status === 'delivered' ? 'text-success' : order.status === 'cancelled' ? 'text-danger' : 'text-primary'}`}
                                      value={order.status}
                                      onChange={(e) => updateOrderStatus(order.id, e.target.value)}
                                    >
                                      <option value="pending">Pending</option>
                                      <option value="preparing">Preparing</option>
                                      <option value="delivering">Delivering</option>
                                      <option value="delivered">Delivered</option>
                                      <option value="cancelled">Cancelled</option>
                                    </select>
                                  </td>
                                  <td>
                                    <button className="btn btn-outline-danger btn-sm" onClick={() => deleteOrder(order.id)} title="Delete Order"><i className="bi bi-trash"></i></button>
                                  </td>
                                </tr>
                              ))}
                            </tbody>
                          </table>
                        </div>
                      )}
                    </div>
                  )}

                  {/* USERS TAB */}
                  {activeTab === 'users' && (
                    <div>
                      <h4 className="fw-bold mb-4">User Directory</h4>
                      
                      <div className="card bg-light border-0 mb-4">
                        <div className="card-body">
                          <h6 className="fw-bold mb-3">Add New User</h6>
                          <form onSubmit={handleCreateUser} className="row g-2">
                            <div className="col-md-3">
                              <input type="email" placeholder="Email" className="form-control form-control-sm" required value={newUserEmail} onChange={e => setNewUserEmail(e.target.value)} />
                            </div>
                            <div className="col-md-2">
                              <input type="password" placeholder="Password" className="form-control form-control-sm" required value={newUserPassword} onChange={e => setNewUserPassword(e.target.value)} />
                            </div>
                            <div className="col-md-3">
                              <input type="text" placeholder="Full Name" className="form-control form-control-sm" required value={newUserName} onChange={e => setNewUserName(e.target.value)} />
                            </div>
                            <div className="col-md-2">
                              <select className="form-select form-select-sm" value={newUserRole} onChange={e => setNewUserRole(e.target.value)}>
                                <option value="customer">Customer</option>
                                <option value="admin">Admin</option>
                              </select>
                            </div>
                            <div className="col-md-2">
                              <button type="submit" className="btn btn-primary btn-sm w-100">Add User</button>
                            </div>
                          </form>
                        </div>
                      </div>

                      {users.length === 0 ? <p className="text-muted text-center py-4">No users found.</p> : (
                        <div className="table-responsive">
                          <table className="table table-hover align-middle">
                            <thead className="table-light">
                              <tr>
                                <th>Name</th>
                                <th>Phone</th>
                                <th>Role</th>
                                <th>Joined</th>
                                <th>Actions</th>
                              </tr>
                            </thead>
                            <tbody>
                              {users.map(profile => (
                                <tr key={profile.id}>
                                  <td>
                                    <div className="d-flex align-items-center">
                                      <div className="rounded-circle bg-light d-flex align-items-center justify-content-center me-3" style={{width: '40px', height: '40px'}}><i className="bi bi-person text-secondary"></i></div>
                                      <strong>{profile.name || 'Anonymous'}</strong>
                                    </div>
                                  </td>
                                  <td>{profile.phone || '-'}</td>
                                  <td>
                                    <select 
                                      className={`form-select form-select-sm w-auto ${profile.role === 'admin' ? 'bg-danger text-white border-danger' : 'bg-secondary text-white border-secondary'}`}
                                      value={profile.role}
                                      onChange={(e) => updateUserRole(profile.id, e.target.value)}
                                      disabled={profile.id === user.id} // Prevents admin from demoting themselves by accident
                                    >
                                      <option value="customer">Customer</option>
                                      <option value="admin">Admin</option>
                                    </select>
                                  </td>
                                  <td>{new Date(profile.created_at).toLocaleDateString()}</td>
                                  <td>
                                    <button 
                                      className="btn btn-outline-danger btn-sm" 
                                      onClick={() => deleteUser(profile.id)}
                                      disabled={profile.id === user.id} // Don't delete self
                                    >
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
                  )}

                  {/* PRODUCTS TAB */}
                  {activeTab === 'products' && (
                    <div>
                      <h4 className="fw-bold mb-4">Store Products</h4>

                      <div className="card bg-light border-0 mb-4">
                        <div className="card-body">
                          <h6 className="fw-bold mb-3">Add New Product</h6>
                          <form onSubmit={handleCreateProduct} className="row g-2">
                            <div className="col-md-3">
                              <input type="text" placeholder="Product Name" className="form-control form-control-sm" required value={newProductName} onChange={e => setNewProductName(e.target.value)} />
                            </div>
                            <div className="col-md-2">
                              <select className="form-select form-select-sm" value={newProductCategory} onChange={e => setNewProductCategory(e.target.value)}>
                                <option value="siomai">Siomai</option>
                                <option value="siopao">Siopao</option>
                                <option value="drinks">Drinks</option>
                              </select>
                            </div>
                            <div className="col-md-2">
                              <input type="number" step="0.01" placeholder="Price (₱)" className="form-control form-control-sm" required value={newProductPrice} onChange={e => setNewProductPrice(e.target.value)} />
                            </div>
                            <div className="col-md-5">
                              <input type="text" placeholder="Image URL" className="form-control form-control-sm" value={newProductImage} onChange={e => setNewProductImage(e.target.value)} />
                            </div>
                            <div className="col-12 mt-2">
                              <div className="d-flex gap-2">
                                <input type="text" placeholder="Description" className="form-control form-control-sm" value={newProductDesc} onChange={e => setNewProductDesc(e.target.value)} />
                                <button type="submit" className="btn btn-primary btn-sm px-4">Add</button>
                              </div>
                            </div>
                          </form>
                        </div>
                      </div>

                      {products.length === 0 ? <p className="text-muted text-center py-4">No products found.</p> : (
                        <div className="table-responsive">
                          <table className="table table-hover align-middle">
                            <thead className="table-light">
                              <tr>
                                <th>Item</th>
                                <th>Category</th>
                                <th>Price</th>
                                <th>Status</th>
                                <th>Actions</th>
                              </tr>
                            </thead>
                            <tbody>
                              {products.map(product => (
                                <tr key={product.id}>
                                  <td>
                                    <div className="d-flex align-items-center">
                                      {product.image && <img src={product.image} alt="product" className="rounded me-3" style={{width: '40px', height: '40px', objectFit: 'cover'}} />}
                                      <div>
                                        <strong>{product.name}</strong><br/>
                                        <small className="text-muted d-block text-truncate" style={{maxWidth: '200px'}}>{product.description}</small>
                                      </div>
                                    </div>
                                  </td>
                                  <td><span className="badge bg-secondary text-capitalize">{product.category}</span></td>
                                  <td><strong className="text-danger">₱{product.price.toFixed(2)}</strong></td>
                                  <td>
                                    <span className={`badge ${product.status === 'active' ? 'bg-success' : 'bg-warning text-dark'}`}>
                                      {product.status.toUpperCase()}
                                    </span>
                                  </td>
                                  <td>
                                    <button className="btn btn-outline-primary btn-sm me-2" onClick={() => handleEditProduct(product)} title="Edit Product">
                                      <i className="bi bi-pencil"></i>
                                    </button>
                                    <button className="btn btn-outline-danger btn-sm" onClick={() => deleteProduct(product.id)} title="Delete Product">
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
                  )}
                </>
              )}
              
            </div>
          </div>
        </div>
      </div>
      
      {/* Edit Product Modal */}
      {editingProductId && (
        <div className="position-fixed top-0 start-0 w-100 h-100 d-flex align-items-center justify-content-center bg-dark bg-opacity-50" style={{ zIndex: 1050 }}>
          <div className="card shadow-lg border-0 w-100 mx-3" style={{ maxWidth: '600px' }}>
            <div className="card-header bg-white border-bottom-0 pt-4 pb-0 d-flex justify-content-between align-items-center">
              <h5 className="fw-bold mb-0">Edit Product</h5>
              <button className="btn-close" onClick={() => setEditingProductId(null)}></button>
            </div>
            <div className="card-body p-4">
              <div className="row">
                <div className="col-md-4 text-center mb-3 mb-md-0">
                  {editProductForm.image ? (
                    <img src={editProductForm.image} alt="Preview" className="img-fluid rounded shadow-sm mb-2" style={{ maxHeight: '150px', objectFit: 'cover' }} />
                  ) : (
                    <div className="bg-light rounded d-flex align-items-center justify-content-center h-100 mb-2" style={{ minHeight: '150px' }}>
                      <span className="text-muted"><i className="bi bi-image fs-1"></i></span>
                    </div>
                  )}
                  <small className="text-muted d-block">Image Preview</small>
                </div>
                <div className="col-md-8">
                  <div className="row g-3">
                    <div className="col-12">
                      <label className="form-label small fw-bold mb-1">Product Name</label>
                      <input type="text" className="form-control form-control-sm" value={editProductForm.name} onChange={e => setEditProductForm({...editProductForm, name: e.target.value})} />
                    </div>
                    <div className="col-md-6">
                      <label className="form-label small fw-bold mb-1">Category</label>
                      <select className="form-select form-select-sm" value={editProductForm.category} onChange={e => setEditProductForm({...editProductForm, category: e.target.value})}>
                        <option value="siomai">Siomai</option>
                        <option value="siopao">Siopao</option>
                        <option value="drinks">Drinks</option>
                      </select>
                    </div>
                    <div className="col-md-6">
                      <label className="form-label small fw-bold mb-1">Price (₱)</label>
                      <input type="number" step="0.01" className="form-control form-control-sm" value={editProductForm.price} onChange={e => setEditProductForm({...editProductForm, price: e.target.value})} />
                    </div>
                    <div className="col-md-6">
                      <label className="form-label small fw-bold mb-1">Image URL</label>
                      <input type="text" className="form-control form-control-sm" value={editProductForm.image} onChange={e => setEditProductForm({...editProductForm, image: e.target.value})} />
                    </div>
                    <div className="col-md-6">
                      <label className="form-label small fw-bold mb-1">Status</label>
                      <select className="form-select form-select-sm" value={editProductForm.status} onChange={e => setEditProductForm({...editProductForm, status: e.target.value})}>
                        <option value="active">Active</option>
                        <option value="inactive">Inactive</option>
                      </select>
                    </div>
                    <div className="col-12">
                      <label className="form-label small fw-bold mb-1">Description</label>
                      <textarea className="form-control form-control-sm" rows="2" value={editProductForm.description} onChange={e => setEditProductForm({...editProductForm, description: e.target.value})}></textarea>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div className="card-footer bg-light border-top-0 py-3 text-end">
              <button className="btn btn-secondary btn-sm me-2 px-4" onClick={() => setEditingProductId(null)}>Cancel</button>
              <button className="btn btn-success btn-sm px-4" onClick={saveEditedProduct}>Save Changes</button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
