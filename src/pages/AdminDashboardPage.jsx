import React, { useContext, useState, useEffect } from 'react';
import { AuthContext } from '../contexts/AuthContext';
import { supabase } from '../lib/supabase';
import { createClient } from '@supabase/supabase-js';

export default function AdminDashboardPage() {
  const { user, isAdmin } = useContext(AuthContext);
  const [activeTab, setActiveTab] = useState('analytics');
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

  // Editing user states
  const [editingUserId, setEditingUserId] = useState(null);
  const [editUserForm, setEditUserForm] = useState({ name: '', phone: '', profile_photo: '', role: '' });
  const [isAddUserModalOpen, setIsAddUserModalOpen] = useState(false);
  const [isAddProductModalOpen, setIsAddProductModalOpen] = useState(false);

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
      const tempClient = createClient(
        import.meta.env.VITE_SUPABASE_URL,
        import.meta.env.VITE_SUPABASE_ANON_KEY,
        { auth: { persistSession: false, autoRefreshToken: false } }
      );

      const { data, error } = await tempClient.auth.signUp({
        email: newUserEmail,
        password: newUserPassword,
        options: {
          data: { full_name: newUserName }
        }
      });
      if (error) throw error;
      
      await new Promise(resolve => setTimeout(resolve, 1000));

      if (data?.user?.id) {
        const { error: roleError } = await supabase.rpc('update_user_admin', {
          target_user_id: data.user.id,
          new_name: null,
          new_phone: null,
          new_role: newUserRole,
          new_photo: null
        });
        if (roleError) console.error("Failed to set role:", roleError);
      }

      alert("User created successfully!");
      setNewUserEmail(''); setNewUserPassword(''); setNewUserName('');
      setIsAddUserModalOpen(false);
      fetchUsers();
    } catch (err) { alert(`Failed to create user: ${err.message}`); }
  };

  const updateUserRole = async (userId, newRole) => {
    try {
      const { error } = await supabase.rpc('update_user_admin', {
        target_user_id: userId,
        new_name: null,
        new_phone: null,
        new_role: newRole,
        new_photo: null
      });
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

  const handleEditUser = (profile) => {
    setEditingUserId(profile.id);
    setEditUserForm({
      name: profile.name || '',
      phone: profile.phone || '',
      profile_photo: profile.profile_photo || '',
      role: profile.role || 'customer'
    });
  };

  const saveEditedUser = async () => {
    try {
      const { error } = await supabase.rpc('update_user_admin', {
        target_user_id: editingUserId,
        new_name: editUserForm.name,
        new_phone: editUserForm.phone,
        new_role: editUserForm.role,
        new_photo: editUserForm.profile_photo
      });
      if (error) throw error;
      setEditingUserId(null);
      fetchUsers();
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
      setIsAddProductModalOpen(false);
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
      <main className="min-h-screen pt-32 pb-32 bg-sio-bg flex items-center justify-center font-sans text-sio-text selection:bg-sio-yellow selection:text-sio-dark">
        <div className="bg-sio-surface p-16 border-[0.5px] border-sio-border text-center max-w-md shadow-xl">
          <div className="w-16 h-16 bg-red-100 text-sio-red rounded-full flex items-center justify-center mx-auto mb-8 border-[0.5px] border-red-200">
            <i className="bi bi-shield-lock text-2xl"></i>
          </div>
          <h2 className="text-3xl font-sans font-bold tracking-tight text-sio-text mb-4">Restricted Area</h2>
          <p className="text-sio-text-muted font-light text-sm leading-relaxed">Admin privileges are required to access this dashboard.</p>
        </div>
      </main>
    );
  }

  // --- CALCULATED METRICS ---
  const totalRevenue = orders.reduce((sum, o) => sum + (o.total_amount || 0), 0);
  const pendingOrders = orders.filter(o => o.status === 'pending').length;
  const deliveredOrders = orders.filter(o => o.status === 'delivered').length;

  const adminUsers = users.filter(u => u.role === 'admin').length;
  const newUsersThisMonth = users.filter(u => new Date(u.created_at).getMonth() === new Date().getMonth() && new Date(u.created_at).getFullYear() === new Date().getFullYear()).length;

  const activeProducts = products.filter(p => p.status === 'active' || !p.status).length;
  const avgProductPrice = products.length ? products.reduce((sum, p) => sum + p.price, 0) / products.length : 0;

  // --- ANALYTICS DATA ---
  const analyticsData = React.useMemo(() => {
    // 1. Status Breakdown
    const statusCounts = orders.reduce((acc, o) => {
      acc[o.status] = (acc[o.status] || 0) + 1;
      return acc;
    }, {});
    
    // 2. Top Products
    const productSales = {};
    orders.forEach(o => {
      if(o.order_items) {
        o.order_items.forEach(item => {
          productSales[item.product_name] = (productSales[item.product_name] || 0) + item.quantity;
        });
      }
    });
    const topProducts = Object.entries(productSales)
      .map(([name, qty]) => ({ name, qty }))
      .sort((a, b) => b.qty - a.qty)
      .slice(0, 5);

    // 3. Revenue Trend (last 14 days)
    const revenueByDay = {};
    const fourteenDaysAgo = new Date();
    fourteenDaysAgo.setDate(fourteenDaysAgo.getDate() - 14);
    
    orders.forEach(o => {
      const d = new Date(o.created_at);
      if (d >= fourteenDaysAgo) {
        const dateStr = d.toISOString().split('T')[0];
        revenueByDay[dateStr] = (revenueByDay[dateStr] || 0) + parseFloat(o.total_amount || 0);
      }
    });

    const sortedDates = Object.keys(revenueByDay).sort();
    const trendData = sortedDates.map(date => ({
      date: new Date(date).toLocaleDateString('en-US', { month: 'short', day: 'numeric' }),
      revenue: revenueByDay[date]
    }));

    return { statusCounts, topProducts, trendData };
  }, [orders]);

  return (
    <main className="min-h-screen bg-sio-bg pt-32 pb-32 font-sans text-sio-text selection:bg-sio-yellow selection:text-sio-text">
      <div className="container-custom mx-auto max-w-7xl">
        <div className="mb-12 pb-6 border-b-[0.5px] border-sio-border flex items-center justify-between">
          <div>
            <span className="text-[0.65rem] uppercase tracking-[0.2em] text-sio-yellow mb-2 block">Management</span>
            <h2 className="text-4xl font-sans font-bold tracking-tight text-sio-text">
              Admin Dashboard
            </h2>
          </div>
        </div>
        
        <div className="flex flex-col md:flex-row gap-10">
          {/* Sidebar */}
          <div className="md:w-64 shrink-0">
            <div className="bg-sio-surface border border-gray-200 rounded-xl shadow-sm sticky top-32 overflow-hidden">
              <nav className="flex flex-col">
                                <button 
                  onClick={() => setActiveTab('analytics')}
                  className={`flex items-center px-6 py-4 text-xs font-semibold tracking-wider transition-colors border-l-4 ${activeTab === 'analytics' ? 'bg-sio-bg text-sio-yellow border-sio-yellow' : 'border-transparent text-sio-text-muted hover:bg-gray-50 hover:text-sio-text'}`}
                >
                  <i className="bi bi-graph-up-arrow mr-4 text-lg w-6 text-center"></i> Analytics
                </button>
                <button 
                  onClick={() => setActiveTab('orders')}
                  className={`flex items-center px-6 py-4 text-xs font-semibold tracking-wider transition-colors border-l-4 border-t border-gray-100 ${activeTab === 'orders' ? 'bg-sio-bg text-sio-yellow border-l-sio-yellow' : 'border-l-transparent text-sio-text-muted hover:bg-gray-50 hover:text-sio-text'}`}
                >
                  <i className="bi bi-box-seam mr-4 text-lg w-6 text-center"></i> Orders
                </button>
                <button 
                  onClick={() => setActiveTab('users')}
                  className={`flex items-center px-6 py-4 text-xs font-semibold tracking-wider transition-colors border-l-4 border-t border-gray-100 ${activeTab === 'users' ? 'bg-sio-bg text-sio-yellow border-l-sio-yellow' : 'border-l-transparent text-sio-text-muted hover:bg-gray-50 hover:text-sio-text'}`}
                >
                  <i className="bi bi-people mr-4 text-lg w-6 text-center"></i> Directory
                </button>
                <button 
                  onClick={() => setActiveTab('products')}
                  className={`flex items-center px-6 py-4 text-xs font-semibold tracking-wider transition-colors border-l-4 border-t border-gray-100 ${activeTab === 'products' ? 'bg-sio-bg text-sio-yellow border-l-sio-yellow' : 'border-l-transparent text-sio-text-muted hover:bg-gray-50 hover:text-sio-text'}`}
                >
                  <i className="bi bi-bag mr-4 text-lg w-6 text-center"></i> Menu
                </button>
              </nav>
            </div>
          </div>

          {/* Main Content */}
          <div className="flex-grow min-w-0">
            <div className="bg-white border border-gray-200 rounded-xl shadow-sm min-h-[600px]">
              <div className="p-6 md:p-8">
                
                {loading ? (
                  <div className="flex justify-center items-center h-64">
                    <div className="animate-spin rounded-full h-10 w-10 border-t-2 border-b-2 border-sio-yellow"></div>
                  </div>
                ) : (
                  <>
                                        
                    {/* ANALYTICS TAB */}
                    {activeTab === 'analytics' && (
                      <div className="animate-fade-in space-y-8">
                        <div className="flex justify-between items-end pb-4 border-b border-gray-200">
                          <h4 className="text-2xl font-sans font-bold tracking-tight text-sio-text">Analytics Overview</h4>
                        </div>
                        
                        {/* Summary Cards */}
                        <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                          
                          {/* Pie Chart: Order Status */}
                          <div className="bg-white border border-gray-200 rounded-xl p-6 shadow-sm flex flex-col">
                            <h5 className="text-sm font-sans font-bold uppercase tracking-widest text-gray-500 mb-6">Order Status Distribution</h5>
                            <div className="flex-grow flex items-center justify-center relative">
                              <div className="w-48 h-48 rounded-full" 
                                style={{
                                  background: `conic-gradient(
                                    #10B981 0% ${(analyticsData.statusCounts.delivered || 0) / (orders.length || 1) * 100}%, 
                                    #F59E0B ${(analyticsData.statusCounts.delivered || 0) / (orders.length || 1) * 100}% ${((analyticsData.statusCounts.delivered || 0) + (analyticsData.statusCounts.pending || 0)) / (orders.length || 1) * 100}%, 
                                    #3B82F6 ${((analyticsData.statusCounts.delivered || 0) + (analyticsData.statusCounts.pending || 0)) / (orders.length || 1) * 100}% ${((analyticsData.statusCounts.delivered || 0) + (analyticsData.statusCounts.pending || 0) + (analyticsData.statusCounts.preparing || 0) + (analyticsData.statusCounts.delivering || 0)) / (orders.length || 1) * 100}%, 
                                    #EF4444 ${((analyticsData.statusCounts.delivered || 0) + (analyticsData.statusCounts.pending || 0) + (analyticsData.statusCounts.preparing || 0) + (analyticsData.statusCounts.delivering || 0)) / (orders.length || 1) * 100}% 100%)`
                                }}>
                              </div>
                              <div className="absolute inset-0 flex items-center justify-center pointer-events-none">
                                <div className="w-32 h-32 bg-white rounded-full flex flex-col items-center justify-center shadow-inner">
                                  <span className="text-4xl font-sans font-bold text-sio-text">{orders.length}</span>
                                  <span className="text-[0.65rem] font-sans text-gray-500 uppercase tracking-widest mt-1">Total Orders</span>
                                </div>
                              </div>
                            </div>
                            <div className="mt-8 grid grid-cols-2 gap-4 text-xs font-sans font-semibold text-gray-600">
                              <div className="flex items-center"><div className="w-3 h-3 rounded-full bg-emerald-500 mr-2 shadow-sm"></div>Delivered ({analyticsData.statusCounts.delivered || 0})</div>
                              <div className="flex items-center"><div className="w-3 h-3 rounded-full bg-amber-500 mr-2 shadow-sm"></div>Pending ({analyticsData.statusCounts.pending || 0})</div>
                              <div className="flex items-center"><div className="w-3 h-3 rounded-full bg-blue-500 mr-2 shadow-sm"></div>Active ({(analyticsData.statusCounts.preparing || 0) + (analyticsData.statusCounts.delivering || 0)})</div>
                              <div className="flex items-center"><div className="w-3 h-3 rounded-full bg-red-500 mr-2 shadow-sm"></div>Cancelled ({analyticsData.statusCounts.cancelled || 0})</div>
                            </div>
                          </div>

                          {/* Bar Chart: Top Products */}
                          <div className="bg-white border border-gray-200 rounded-xl p-6 shadow-sm flex flex-col">
                            <h5 className="text-sm font-sans font-bold uppercase tracking-widest text-gray-500 mb-6">Top 5 Bestsellers</h5>
                            <div className="flex-grow flex flex-col justify-center space-y-6">
                              {analyticsData.topProducts.map((p, i) => {
                                const maxQty = analyticsData.topProducts[0]?.qty || 1;
                                const pct = (p.qty / maxQty) * 100;
                                return (
                                  <div key={i} className="flex items-center text-sm group">
                                    <div className="w-40 font-sans truncate pr-4 text-gray-700 font-semibold text-sm group-hover:text-sio-red transition-colors">{p.name}</div>
                                    <div className="flex-grow bg-gray-100 rounded-full h-2.5 overflow-hidden relative shadow-inner">
                                      <div className="bg-sio-yellow h-full rounded-full transition-all duration-1000 ease-out" style={{ width: `${pct}%` }}></div>
                                    </div>
                                    <div className="w-16 font-sans text-right font-bold text-sio-text ml-4 text-xs">{p.qty} <span className="text-gray-400 font-normal ml-1">sold</span></div>
                                  </div>
                                );
                              })}
                            </div>
                          </div>
                          
                        </div>

                        {/* Revenue CSS Bar Chart */}
                        <div className="bg-white border border-gray-200 rounded-xl p-6 shadow-sm w-full">
                           <div className="flex justify-between items-center mb-6">
                             <h5 className="text-sm font-sans font-bold uppercase tracking-widest text-gray-500">14-Day Revenue Trend</h5>
                             <span className="text-[0.65rem] font-bold text-emerald-600 bg-emerald-50 px-3 py-1 rounded-full border border-emerald-200 uppercase tracking-widest shadow-sm"><i className="bi bi-arrow-up-right mr-1"></i>Strong Growth</span>
                           </div>
                           
                           <div className="w-full h-64 flex items-end justify-between relative pt-10 pb-8 border-b border-gray-200">
                              {/* Horizontal Grid lines */}
                              <div className="absolute inset-0 flex flex-col justify-between pointer-events-none pb-8">
                                <div className="border-t border-dashed border-gray-200 w-full"></div>
                                <div className="border-t border-dashed border-gray-200 w-full"></div>
                                <div className="border-t border-dashed border-gray-200 w-full"></div>
                                <div className="border-t border-dashed border-gray-200 w-full"></div>
                              </div>

                              {/* Bars */}
                              {analyticsData.trendData.length > 0 ? analyticsData.trendData.map((day, i) => {
                                const maxRev = Math.max(...analyticsData.trendData.map(d => d.revenue), 100);
                                const hPct = (day.revenue / maxRev) * 100;
                                return (
                                  <div key={i} className="flex flex-col items-center justify-end h-full w-full relative group cursor-pointer">
                                    {/* Tooltip */}
                                    <div className="absolute -top-10 bg-gray-800 text-white text-[0.65rem] px-3 py-1 rounded opacity-0 group-hover:opacity-100 transition-opacity z-10 whitespace-nowrap shadow-xl font-bold">
                                      ₱{day.revenue.toFixed(2)}
                                    </div>
                                    {/* Bar */}
                                    <div className="w-3 md:w-5 bg-sio-red rounded-t-full shadow-sm transition-all duration-500 ease-out z-0 border-b-0 group-hover:brightness-110" style={{ height: `${hPct}%` }}></div>
                                    {/* Date */}
                                    <div className="text-[0.60rem] font-sans text-gray-400 mt-3 absolute -bottom-6 w-full text-center truncate uppercase tracking-widest font-semibold">{day.date}</div>
                                  </div>
                                );
                              }) : (
                                <div className="w-full h-full flex items-center justify-center text-gray-400 text-sm italic z-10 bg-white/50 backdrop-blur-sm">Awaiting enough order data to generate trends.</div>
                              )}
                           </div>
                        </div>

                      </div>
                    )}

                    {/* ORDERS TAB */}
                    {activeTab === 'orders' && (
                      <div className="animate-fade-in space-y-8">
                        <div className="flex justify-between items-end pb-4 border-b border-gray-200">
                          <h4 className="text-2xl font-sans font-bold tracking-tight text-sio-text">Store Orders</h4>
                        </div>
                        
                        {/* KPI Metrics */}
                        <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
                          <div className="bg-gray-50 rounded-xl p-6 border border-gray-200">
                            <span className="text-gray-500 text-xs font-bold uppercase tracking-wider block mb-2">Total Revenue</span>
                            <div className="text-2xl font-bold text-sio-text">₱{totalRevenue.toFixed(2)}</div>
                          </div>
                          <div className="bg-gray-50 rounded-xl p-6 border border-gray-200">
                            <span className="text-gray-500 text-xs font-bold uppercase tracking-wider block mb-2">Total Orders</span>
                            <div className="text-2xl font-bold text-sio-text">{orders.length}</div>
                          </div>
                          <div className="bg-amber-50 rounded-xl p-6 border border-amber-200">
                            <span className="text-amber-700 text-xs font-bold uppercase tracking-wider block mb-2">Pending Actions</span>
                            <div className="text-2xl font-bold text-amber-900">{pendingOrders}</div>
                          </div>
                          <div className="bg-green-50 rounded-xl p-6 border border-green-200">
                            <span className="text-green-700 text-xs font-bold uppercase tracking-wider block mb-2">Completed</span>
                            <div className="text-2xl font-bold text-green-900">{deliveredOrders}</div>
                          </div>
                        </div>

                        {orders.length === 0 ? (
                          <div className="text-center py-20 border border-gray-200 rounded-xl bg-gray-50">
                            <i className="bi bi-inbox text-gray-400 text-4xl mb-4 block"></i>
                            <p className="text-gray-500 font-medium text-sm">No orders found.</p>
                          </div>
                        ) : (
                          <div className="space-y-4">
                            {orders.map(order => (
                              <div key={order.id} className="bg-white rounded-xl border border-gray-200 shadow-sm p-6 flex flex-col md:flex-row md:items-center justify-between gap-6 hover:shadow-md transition-shadow">
                                <div className="flex-grow">
                                  <div className="flex items-center gap-4 mb-2">
                                    <span className="font-mono text-[0.65rem] uppercase tracking-widest text-gray-500 bg-gray-100 px-2 py-1 rounded-md">{order.id.split('-')[0]}</span>
                                    <span className="text-sm font-medium text-gray-500">{new Date(order.created_at).toLocaleDateString()}</span>
                                  </div>
                                  <div className="font-sans font-bold text-lg text-sio-text">{order.full_name}</div>
                                  <div className="text-sm text-gray-500">{order.phone}</div>
                                </div>
                                <div className="shrink-0 text-left md:text-right">
                                  <div className="text-xl font-bold text-sio-text mb-2">₱{order.total_amount.toFixed(2)}</div>
                                  <div className="flex items-center gap-3 md:justify-end">
                                    <select 
                                      className={`text-xs font-bold px-4 py-2 rounded-full cursor-pointer focus:ring-2 focus:ring-offset-1 focus:outline-none transition-colors ${
                                        order.status === 'pending' ? 'bg-amber-100 text-amber-800 hover:bg-amber-200' : 
                                        order.status === 'delivered' ? 'bg-green-100 text-green-800 hover:bg-green-200' : 
                                        order.status === 'cancelled' ? 'bg-red-100 text-red-800 hover:bg-red-200' : 
                                        'bg-blue-100 text-blue-800 hover:bg-blue-200'
                                      }`}
                                      value={order.status}
                                      onChange={(e) => updateOrderStatus(order.id, e.target.value)}
                                    >
                                      <option value="pending" className="bg-white text-gray-800">Pending</option>
                                      <option value="preparing" className="bg-white text-gray-800">Preparing</option>
                                      <option value="delivering" className="bg-white text-gray-800">Delivering</option>
                                      <option value="delivered" className="bg-white text-gray-800">Delivered</option>
                                      <option value="cancelled" className="bg-white text-gray-800">Cancelled</option>
                                    </select>
                                    <button 
                                      className="w-8 h-8 flex items-center justify-center rounded-full bg-gray-100 text-gray-500 hover:bg-red-100 hover:text-red-600 transition-colors" 
                                      onClick={() => deleteOrder(order.id)} 
                                      title="Delete Order"
                                    >
                                      <i className="bi bi-trash3 text-xs"></i>
                                    </button>
                                  </div>
                                </div>
                              </div>
                            ))}
                          </div>
                        )}
                      </div>
                    )}

                    {/* USERS TAB */}
                    {activeTab === 'users' && (
                      <div className="animate-fade-in space-y-8">
                        <div className="flex justify-between items-end pb-4 border-b border-gray-200">
                          <h4 className="text-2xl font-sans font-bold tracking-tight text-sio-text">User Directory</h4>
                          <button onClick={() => setIsAddUserModalOpen(true)} className="btn-primary py-2 px-4 rounded-lg font-bold text-xs uppercase tracking-widest shadow-sm">
                            <i className="bi bi-plus-lg mr-2"></i>Add User
                          </button>
                        </div>

                        {/* KPI Metrics */}
                        <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
                          <div className="bg-gray-50 rounded-xl p-6 border border-gray-200">
                            <span className="text-gray-500 text-xs font-bold uppercase tracking-wider block mb-2">Total Members</span>
                            <div className="text-2xl font-bold text-sio-text">{users.length}</div>
                          </div>
                          <div className="bg-indigo-50 rounded-xl p-6 border border-indigo-200">
                            <span className="text-indigo-700 text-xs font-bold uppercase tracking-wider block mb-2">Admin Staff</span>
                            <div className="text-2xl font-bold text-indigo-900">{adminUsers}</div>
                          </div>
                          <div className="bg-blue-50 rounded-xl p-6 border border-blue-200">
                            <span className="text-blue-700 text-xs font-bold uppercase tracking-wider block mb-2">New This Month</span>
                            <div className="text-2xl font-bold text-blue-900">{newUsersThisMonth}</div>
                          </div>
                        </div>
                        
                        

                        {users.length === 0 ? (
                          <div className="text-center py-20 border border-gray-200 rounded-xl bg-gray-50">
                            <i className="bi bi-people text-gray-400 text-4xl mb-4 block"></i>
                            <p className="text-gray-500 font-medium text-sm">No users found.</p>
                          </div>
                        ) : (
                          <div className="space-y-4">
                            {users.map(profile => (
                              <div key={profile.id} className="bg-white rounded-xl border border-gray-200 shadow-sm p-6 flex flex-col md:flex-row md:items-center justify-between gap-6 hover:shadow-md transition-shadow">
                                <div className="flex items-center gap-6">
                                  <div className="w-16 h-16 rounded-full bg-gray-100 ring-4 ring-white shadow-sm flex items-center justify-center shrink-0">
                                    <i className="bi bi-person text-gray-400 text-2xl"></i>
                                  </div>
                                  <div>
                                    <div className="font-sans font-bold text-lg text-sio-text">{profile.name || 'Anonymous'}</div>
                                    <div className="text-sm text-gray-500 mb-2">{profile.phone || 'No phone number'}</div>
                                    <div className="text-xs text-gray-400">Joined {new Date(profile.created_at).toLocaleDateString()}</div>
                                  </div>
                                </div>
                                <div className="flex items-center gap-3">
                                  <select 
                                    className={`text-xs font-bold px-4 py-2 rounded-full cursor-pointer focus:ring-2 focus:ring-offset-1 focus:outline-none transition-colors ${
                                      profile.role === 'admin' ? 'bg-indigo-100 text-indigo-800 hover:bg-indigo-200' : 'bg-gray-100 text-gray-700 hover:bg-gray-200'
                                    }`}
                                    value={profile.role}
                                    onChange={(e) => updateUserRole(profile.id, e.target.value)}
                                    disabled={profile.id === user.id}
                                  >
                                    <option value="customer" className="bg-white text-gray-800">Customer</option>
                                    <option value="admin" className="bg-white text-gray-800">Admin</option>
                                  </select>
                                  <button 
                                    className="w-10 h-10 flex items-center justify-center rounded-full bg-gray-100 text-gray-500 hover:bg-blue-100 hover:text-blue-600 transition-colors" 
                                    onClick={() => handleEditUser(profile)}
                                    title="Edit User"
                                  >
                                    <i className="bi bi-pencil text-sm"></i>
                                  </button>
                                  <button 
                                    className="w-10 h-10 flex items-center justify-center rounded-full bg-gray-100 text-gray-500 hover:bg-red-100 hover:text-red-600 transition-colors disabled:opacity-30 disabled:cursor-not-allowed" 
                                    onClick={() => deleteUser(profile.id)}
                                    disabled={profile.id === user.id}
                                    title="Delete User"
                                  >
                                    <i className="bi bi-trash3 text-sm"></i>
                                  </button>
                                </div>
                              </div>
                            ))}
                          </div>
                        )}
                      </div>
                    )}

                    {/* PRODUCTS TAB */}
                    {activeTab === 'products' && (
                      <div className="animate-fade-in space-y-8">
                        <div className="flex justify-between items-end pb-4 border-b border-gray-200">
                          <h4 className="text-2xl font-sans font-bold tracking-tight text-sio-text">Culinary Menu</h4>
                          <button onClick={() => setIsAddProductModalOpen(true)} className="btn-primary py-2 px-4 rounded-lg font-bold text-xs uppercase tracking-widest shadow-sm">
                            <i className="bi bi-plus-lg mr-2"></i>Add Item
                          </button>
                        </div>

                        {/* KPI Metrics */}
                        <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
                          <div className="bg-gray-50 rounded-xl p-6 border border-gray-200">
                            <span className="text-gray-500 text-xs font-bold uppercase tracking-wider block mb-2">Total Menu Items</span>
                            <div className="text-2xl font-bold text-sio-text">{products.length}</div>
                          </div>
                          <div className="bg-green-50 rounded-xl p-6 border border-green-200">
                            <span className="text-green-700 text-xs font-bold uppercase tracking-wider block mb-2">Active Items</span>
                            <div className="text-2xl font-bold text-green-900">{activeProducts}</div>
                          </div>
                          <div className="bg-blue-50 rounded-xl p-6 border border-blue-200">
                            <span className="text-blue-700 text-xs font-bold uppercase tracking-wider block mb-2">Average Price</span>
                            <div className="text-2xl font-bold text-blue-900">₱{avgProductPrice.toFixed(2)}</div>
                          </div>
                        </div>

                        

                        {products.length === 0 ? (
                          <div className="text-center py-20 border border-gray-200 rounded-xl bg-gray-50">
                            <i className="bi bi-bag text-gray-400 text-4xl mb-4 block"></i>
                            <p className="text-gray-500 font-medium text-sm">No culinary items found.</p>
                          </div>
                        ) : (
                          <div className="grid grid-cols-1 lg:grid-cols-2 gap-4">
                            {products.map(product => (
                              <div key={product.id} className="bg-white rounded-xl border border-gray-200 shadow-sm p-6 flex flex-col sm:flex-row gap-6 hover:shadow-md transition-shadow">
                                <div className="w-24 h-24 rounded-xl overflow-hidden shrink-0 bg-gray-100 border border-gray-200 shadow-sm">
                                  {product.image ? (
                                    <img src={product.image} alt={product.name} className="w-full h-full object-cover filter grayscale-[10%]" />
                                  ) : (
                                    <div className="flex items-center justify-center h-full w-full"><i className="bi bi-image text-gray-400 text-2xl"></i></div>
                                  )}
                                </div>
                                <div className="flex-grow flex flex-col justify-between">
                                  <div>
                                    <div className="flex justify-between items-start mb-1">
                                      <div className="font-sans font-bold text-lg text-sio-text">{product.name}</div>
                                      <strong className="text-sio-yellow font-bold text-lg">₱{product.price.toFixed(2)}</strong>
                                    </div>
                                    <span className="inline-block text-[0.65rem] uppercase tracking-widest text-gray-500 bg-gray-100 px-2 py-1 rounded-md mb-2">{product.category}</span>
                                    <div className="text-sm text-gray-500 line-clamp-2 mb-4">{product.description || 'No description provided.'}</div>
                                  </div>
                                  <div className="flex items-center justify-between mt-auto">
                                    <span className={`text-xs font-bold px-3 py-1 rounded-full ${
                                      product.status === 'active' ? 'bg-green-100 text-green-800' : 'bg-gray-100 text-gray-700'
                                    }`}>
                                      {(product.status || 'active').toUpperCase()}
                                    </span>
                                    <div className="flex gap-2">
                                      <button 
                                        className="w-8 h-8 flex items-center justify-center rounded-full bg-gray-100 text-gray-500 hover:bg-blue-100 hover:text-blue-600 transition-colors" 
                                        onClick={() => handleEditProduct(product)} 
                                        title="Edit Product"
                                      >
                                        <i className="bi bi-pencil text-xs"></i>
                                      </button>
                                      <button 
                                        className="w-8 h-8 flex items-center justify-center rounded-full bg-gray-100 text-gray-500 hover:bg-red-100 hover:text-red-600 transition-colors" 
                                        onClick={() => deleteProduct(product.id)} 
                                        title="Delete Product"
                                      >
                                        <i className="bi bi-trash3 text-xs"></i>
                                      </button>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            ))}
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
      </div>
      
      {/* Modals overlay rendering */}
      {(editingProductId || editingUserId || isAddUserModalOpen || isAddProductModalOpen) && (
        <div className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-black/80 backdrop-blur-sm animate-fade-in">
          
          {/* Add User Modal */}
          {isAddUserModalOpen && (
            <div className="bg-white rounded-xl border border-gray-200 shadow-2xl w-full max-w-md overflow-hidden animate-slide-up">
              <div className="px-8 py-6 border-b border-gray-200 flex justify-between items-center bg-gray-50">
                <h5 className="font-sans font-bold tracking-tight text-2xl text-sio-text">Invite Member</h5>
                <button className="text-sio-text-muted hover:text-sio-yellow transition-colors" onClick={() => setIsAddUserModalOpen(false)}>
                  <i className="bi bi-x-lg text-lg"></i>
                </button>
              </div>
              <div className="p-8 space-y-6">
                <form id="addUserForm" onSubmit={handleCreateUser} className="space-y-4">
                  <div>
                    <label className="block text-[0.65rem] uppercase tracking-widest text-gray-500 mb-2">Email Address</label>
                    <input type="email" className="input-field bg-white border border-gray-200 rounded-lg px-4 py-2 focus:ring-2 focus:ring-sio-yellow w-full text-sio-text text-sm" required value={newUserEmail} onChange={e => setNewUserEmail(e.target.value)} />
                  </div>
                  <div>
                    <label className="block text-[0.65rem] uppercase tracking-widest text-gray-500 mb-2">Password</label>
                    <input type="password" className="input-field bg-white border border-gray-200 rounded-lg px-4 py-2 focus:ring-2 focus:ring-sio-yellow w-full text-sio-text text-sm" required value={newUserPassword} onChange={e => setNewUserPassword(e.target.value)} />
                  </div>
                  <div>
                    <label className="block text-[0.65rem] uppercase tracking-widest text-gray-500 mb-2">Full Name</label>
                    <input type="text" className="input-field bg-white border border-gray-200 rounded-lg px-4 py-2 focus:ring-2 focus:ring-sio-yellow w-full text-sio-text text-sm" required value={newUserName} onChange={e => setNewUserName(e.target.value)} />
                  </div>
                  <div>
                    <label className="block text-[0.65rem] uppercase tracking-widest text-gray-500 mb-2">Role</label>
                    <select className="input-field bg-white border border-gray-200 rounded-lg px-4 py-2 focus:ring-2 focus:ring-sio-yellow w-full text-sio-text text-sm" value={newUserRole} onChange={e => setNewUserRole(e.target.value)}>
                      <option value="customer">Customer</option>
                      <option value="admin">Admin</option>
                    </select>
                  </div>
                </form>
              </div>
              <div className="px-8 py-6 border-t border-gray-200 bg-gray-50 flex justify-end gap-4">
                <button className="px-6 py-2 rounded-lg text-xs font-bold uppercase tracking-widest text-gray-500 hover:bg-gray-200 hover:text-gray-700 transition-colors" onClick={() => setIsAddUserModalOpen(false)}>Cancel</button>
                <button type="submit" form="addUserForm" className="btn-primary px-8 py-2 rounded-lg text-xs font-bold uppercase tracking-widest shadow-sm">Add User</button>
              </div>
            </div>
          )}

          {/* Add Product Modal */}
          {isAddProductModalOpen && (
            <div className="bg-white rounded-xl border border-gray-200 shadow-2xl w-full max-w-2xl overflow-hidden animate-slide-up">
              <div className="px-8 py-6 border-b border-gray-200 flex justify-between items-center bg-gray-50">
                <h5 className="font-sans font-bold tracking-tight text-2xl text-sio-text">Curate Menu Item</h5>
                <button className="text-sio-text-muted hover:text-sio-yellow transition-colors" onClick={() => setIsAddProductModalOpen(false)}>
                  <i className="bi bi-x-lg text-lg"></i>
                </button>
              </div>
              <div className="p-8">
                <form id="addProductForm" onSubmit={handleCreateProduct} className="flex flex-col md:flex-row gap-8">
                  <div className="md:w-1/3 shrink-0">
                    <div className="w-full aspect-[4/5] bg-gray-100 rounded-lg border border-gray-200 flex items-center justify-center mb-3 p-1 overflow-hidden">
                      {newProductImage ? (
                        <img src={newProductImage} alt="Preview" className="w-full h-full object-cover filter grayscale-[10%] rounded-md" />
                      ) : (
                        <i className="bi bi-image text-gray-400 text-3xl"></i>
                      )}
                    </div>
                  </div>
                  <div className="md:w-2/3 space-y-4">
                    <div>
                      <label className="block text-[0.65rem] uppercase tracking-widest text-gray-500 mb-2">Product Name</label>
                      <input type="text" className="input-field bg-white border border-gray-200 rounded-lg px-4 py-2 focus:ring-2 focus:ring-sio-yellow w-full text-sio-text text-sm" required value={newProductName} onChange={e => setNewProductName(e.target.value)} />
                    </div>
                    <div className="grid grid-cols-2 gap-4">
                      <div>
                        <label className="block text-[0.65rem] uppercase tracking-widest text-gray-500 mb-2">Category</label>
                        <select className="input-field bg-white border border-gray-200 rounded-lg px-4 py-2 focus:ring-2 focus:ring-sio-yellow w-full text-sio-text text-sm" value={newProductCategory} onChange={e => setNewProductCategory(e.target.value)}>
                          <option value="siomai">Siomai</option>
                          <option value="siopao">Siopao</option>
                          <option value="drinks">Drinks</option>
                        </select>
                      </div>
                      <div>
                        <label className="block text-[0.65rem] uppercase tracking-widest text-gray-500 mb-2">Price (₱)</label>
                        <input type="number" step="0.01" className="input-field bg-white border border-gray-200 rounded-lg px-4 py-2 focus:ring-2 focus:ring-sio-yellow w-full text-sio-text text-sm" required value={newProductPrice} onChange={e => setNewProductPrice(e.target.value)} />
                      </div>
                    </div>
                    <div>
                      <label className="block text-[0.65rem] uppercase tracking-widest text-gray-500 mb-2">Short Description</label>
                      <input type="text" className="input-field bg-white border border-gray-200 rounded-lg px-4 py-2 focus:ring-2 focus:ring-sio-yellow w-full text-sio-text text-sm" value={newProductDesc} onChange={e => setNewProductDesc(e.target.value)} />
                    </div>
                    <div>
                      <label className="block text-[0.65rem] uppercase tracking-widest text-gray-500 mb-2">Image URL</label>
                      <input type="text" className="input-field bg-white border border-gray-200 rounded-lg px-4 py-2 focus:ring-2 focus:ring-sio-yellow w-full text-sio-text text-sm" value={newProductImage} onChange={e => setNewProductImage(e.target.value)} />
                    </div>
                  </div>
                </form>
              </div>
              <div className="px-8 py-6 border-t border-gray-200 bg-gray-50 flex justify-end gap-4">
                <button className="px-6 py-2 rounded-lg text-xs uppercase font-bold tracking-widest text-gray-500 hover:bg-gray-200 hover:text-gray-700 transition-colors" onClick={() => setIsAddProductModalOpen(false)}>Cancel</button>
                <button type="submit" form="addProductForm" className="btn-primary px-8 py-2 rounded-lg text-xs font-bold uppercase tracking-widest shadow-sm">Publish</button>
              </div>
            </div>
          )}
          
          {/* Edit Product Modal */}
          {editingProductId && (
            <div className="bg-white rounded-xl border border-gray-200 shadow-2xl w-full max-w-2xl overflow-hidden animate-slide-up">
              <div className="px-8 py-6 border-b border-gray-200 flex justify-between items-center bg-gray-50">
                <h5 className="font-sans font-bold tracking-tight text-2xl text-sio-text">Curate Item</h5>
                <button className="text-sio-text-muted hover:text-sio-yellow transition-colors" onClick={() => setEditingProductId(null)}>
                  <i className="bi bi-x-lg text-lg"></i>
                </button>
              </div>
              <div className="p-8">
                <div className="flex flex-col md:flex-row gap-8">
                  <div className="md:w-1/3 shrink-0">
                    <div className="w-full aspect-[4/5] bg-gray-100 rounded-lg border border-gray-200 flex items-center justify-center mb-3 p-1 overflow-hidden">
                      {editProductForm.image ? (
                        <img src={editProductForm.image} alt="Preview" className="w-full h-full object-cover filter grayscale-[10%] rounded-md" />
                      ) : (
                        <i className="bi bi-image text-gray-400 text-3xl"></i>
                      )}
                    </div>
                  </div>
                  <div className="md:w-2/3 space-y-6">
                    <div>
                      <label className="block text-[0.65rem] uppercase tracking-widest text-sio-text-muted mb-2">Product Name</label>
                      <input type="text" className="input-field bg-transparent border-b border-sio-border rounded-none px-0 py-2 focus:ring-0 focus:border-sio-yellow text-sio-text text-sm" value={editProductForm.name} onChange={e => setEditProductForm({...editProductForm, name: e.target.value})} />
                    </div>
                    <div className="grid grid-cols-2 gap-6">
                      <div>
                        <label className="block text-[0.65rem] uppercase tracking-widest text-sio-text-muted mb-2">Category</label>
                        <select className="input-field bg-transparent border-b border-sio-border rounded-none px-0 py-2 focus:ring-0 focus:border-sio-yellow text-sio-text text-sm" value={editProductForm.category} onChange={e => setEditProductForm({...editProductForm, category: e.target.value})}>
                          <option value="siomai" className="bg-sio-bg">Siomai</option>
                          <option value="siopao" className="bg-sio-bg">Siopao</option>
                          <option value="drinks" className="bg-sio-bg">Drinks</option>
                        </select>
                      </div>
                      <div>
                        <label className="block text-[0.65rem] uppercase tracking-widest text-sio-text-muted mb-2">Price (₱)</label>
                        <input type="number" step="0.01" className="input-field bg-transparent border-b border-sio-border rounded-none px-0 py-2 focus:ring-0 focus:border-sio-yellow text-sio-text text-sm" value={editProductForm.price} onChange={e => setEditProductForm({...editProductForm, price: e.target.value})} />
                      </div>
                    </div>
                    <div className="grid grid-cols-2 gap-6">
                      <div>
                        <label className="block text-[0.65rem] uppercase tracking-widest text-sio-text-muted mb-2">Image URL</label>
                        <input type="text" className="input-field bg-transparent border-b border-sio-border rounded-none px-0 py-2 focus:ring-0 focus:border-sio-yellow text-sio-text text-sm" value={editProductForm.image} onChange={e => setEditProductForm({...editProductForm, image: e.target.value})} />
                      </div>
                      <div>
                        <label className="block text-[0.65rem] uppercase tracking-widest text-sio-text-muted mb-2">Status</label>
                        <select className="input-field bg-transparent border-b border-sio-border rounded-none px-0 py-2 focus:ring-0 focus:border-sio-yellow text-sio-text text-sm" value={editProductForm.status} onChange={e => setEditProductForm({...editProductForm, status: e.target.value})}>
                          <option value="active" className="bg-sio-bg">Active</option>
                          <option value="inactive" className="bg-sio-bg">Inactive</option>
                        </select>
                      </div>
                    </div>
                    <div>
                      <label className="block text-[0.65rem] uppercase tracking-widest text-sio-text-muted mb-2">Description</label>
                      <textarea className="input-field bg-transparent border-b border-sio-border rounded-none px-0 py-2 focus:ring-0 focus:border-sio-yellow text-sio-text text-sm" rows="2" value={editProductForm.description} onChange={e => setEditProductForm({...editProductForm, description: e.target.value})}></textarea>
                    </div>
                  </div>
                </div>
              </div>
              <div className="px-8 py-6 border-t border-gray-200 bg-gray-50 flex justify-end gap-4">
                <button className="px-6 py-2 rounded-lg text-xs uppercase font-bold tracking-widest text-gray-500 hover:bg-gray-200 hover:text-gray-700 transition-colors" onClick={() => setEditingProductId(null)}>Cancel</button>
                <button className="btn-primary px-8 py-2 rounded-lg text-xs font-bold uppercase tracking-widest shadow-sm" onClick={saveEditedProduct}>Save Changes</button>
              </div>
            </div>
          )}

          {/* Edit User Modal */}
          {editingUserId && (
            <div className="bg-white rounded-xl border border-gray-200 shadow-2xl w-full max-w-md overflow-hidden animate-slide-up">
              <div className="px-8 py-6 border-b border-gray-200 flex justify-between items-center bg-gray-50">
                <h5 className="font-sans font-bold tracking-tight text-2xl text-sio-text">Edit Member</h5>
                <button className="text-sio-text-muted hover:text-sio-yellow transition-colors" onClick={() => setEditingUserId(null)}>
                  <i className="bi bi-x-lg text-lg"></i>
                </button>
              </div>
              <div className="p-8 space-y-6">
                <div>
                  <label className="block text-[0.65rem] uppercase tracking-widest text-sio-text-muted mb-2">Full Name</label>
                  <input type="text" className="input-field bg-transparent border-b border-sio-border rounded-none px-0 py-2 focus:ring-0 focus:border-sio-yellow text-sio-text text-sm" value={editUserForm.name} onChange={e => setEditUserForm({...editUserForm, name: e.target.value})} />
                </div>
                <div className="grid grid-cols-2 gap-6">
                  <div>
                    <label className="block text-[0.65rem] uppercase tracking-widest text-sio-text-muted mb-2">Phone Number</label>
                    <input type="text" className="input-field bg-transparent border-b border-sio-border rounded-none px-0 py-2 focus:ring-0 focus:border-sio-yellow text-sio-text text-sm" value={editUserForm.phone} onChange={e => setEditUserForm({...editUserForm, phone: e.target.value})} />
                  </div>
                  <div>
                    <label className="block text-[0.65rem] uppercase tracking-widest text-sio-text-muted mb-2">Role</label>
                    <select 
                      className="input-field bg-transparent border-b border-sio-border rounded-none px-0 py-2 focus:ring-0 focus:border-sio-yellow text-sio-text text-sm disabled:text-sio-text-muted" 
                      value={editUserForm.role} 
                      onChange={e => setEditUserForm({...editUserForm, role: e.target.value})}
                      disabled={editingUserId === user.id}
                    >
                      <option value="customer" className="bg-sio-bg">Customer</option>
                      <option value="admin" className="bg-sio-bg">Admin</option>
                    </select>
                  </div>
                </div>
                <div>
                  <label className="block text-[0.65rem] uppercase tracking-widest text-sio-text-muted mb-2">Profile Photo URL</label>
                  <input type="text" className="input-field bg-transparent border-b border-sio-border rounded-none px-0 py-2 focus:ring-0 focus:border-sio-yellow text-sio-text text-sm" value={editUserForm.profile_photo} onChange={e => setEditUserForm({...editUserForm, profile_photo: e.target.value})} />
                </div>
              </div>
              <div className="px-8 py-6 border-t border-gray-200 bg-gray-50 flex justify-end gap-4">
                <button className="px-6 py-2 rounded-lg text-xs font-bold uppercase tracking-widest text-gray-500 hover:bg-gray-200 hover:text-gray-700 transition-colors" onClick={() => setEditingUserId(null)}>Cancel</button>
                <button className="btn-primary px-8 py-2 rounded-lg text-xs font-bold uppercase tracking-widest shadow-sm" onClick={saveEditedUser}>Save Changes</button>
              </div>
            </div>
          )}
        </div>
      )}
    </main>
  );
}
