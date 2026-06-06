import React, { useContext } from 'react';
import { CartContext } from '../contexts/CartContext';
import { AuthContext } from '../contexts/AuthContext';
import { useProducts } from '../hooks/useProducts';
import { useNavigate } from 'react-router-dom';

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
    <div className="bg-white rounded-xl overflow-hidden flex flex-col h-full group border border-gray-100 hover:border-sio-yellow transition-all duration-300 hover:shadow-xl">
      <div className="relative aspect-[4/5] overflow-hidden bg-gray-50 mb-5">
        <div className="absolute inset-0 bg-sio-red/10 opacity-0 group-hover:opacity-100 transition-opacity duration-300 z-10 mix-blend-multiply"></div>
        <img 
          src={product.image || 'https://via.placeholder.com/400x500?text=No+Image'} 
          alt={product.name} 
          className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500" 
          onError={(e) => { e.target.src = 'https://via.placeholder.com/400x500?text=Image+Not+Found' }}
        />
        <button 
          onClick={handleFavoriteClick}
          className="absolute top-4 right-4 w-10 h-10 bg-white/90 backdrop-blur-sm rounded-full flex items-center justify-center text-gray-400 hover:text-sio-red hover:bg-white shadow-sm transition-all duration-300 z-20"
        >
          <i className="bi bi-heart"></i>
        </button>
      </div>
      
      <div className="flex flex-col flex-grow px-5 pb-5 text-center">
        <h5 className="font-sans font-black text-xl text-sio-text mb-2 group-hover:text-sio-yellow transition-colors">
          {product.name}
        </h5>
        
        <p className="text-gray-500 text-sm mb-5 flex-grow font-medium leading-relaxed line-clamp-2">
          {product.description}
        </p>

        <div className="flex flex-col items-center gap-4 mt-auto">
          <p className="text-sio-yellow font-sans font-black text-xl tracking-wide">
            ₱{product.price.toFixed(2)}
          </p>
          <button 
            onClick={() => addToCart(product)}
            className="w-full py-3.5 bg-sio-red text-white rounded-lg text-xs font-bold uppercase tracking-widest hover:bg-sio-red-hover shadow-md hover:shadow-lg transition-all duration-300 flex items-center justify-center gap-2"
          >
            <i className="bi bi-bag"></i> Add to Cart
          </button>
        </div>
      </div>
    </div>
  );

  return (
    <main className="pt-24 bg-sio-surface min-h-screen pb-32 font-sans text-sio-text selection:bg-sio-yellow selection:text-sio-dark">
      {/* Header Section */}
      <section className="relative bg-sio-red py-32 text-center overflow-hidden border-b-[0.5px] border-sio-red-hover">
        <div className="absolute inset-0 bg-[url('https://images.unsplash.com/photo-1563245372-f21724e3856d?q=80&w=2129')] bg-cover bg-center opacity-20 z-0 mix-blend-overlay"></div>
        <div className="absolute inset-0 bg-gradient-to-b from-sio-red/95 to-sio-red-hover/90 z-0"></div>
        <div className="container-custom relative z-10">
          <span className="inline-block text-xs uppercase tracking-[0.3em] text-sio-yellow font-semibold mb-6">
            Culinary Collection
          </span>
          <h1 className="text-5xl md:text-7xl font-heading text-white italic mb-6">Our Menu</h1>
          <p className="text-lg md:text-xl text-white/80 max-w-2xl mx-auto font-light leading-relaxed">
            Choose from our exquisite selection of authentic Asian favorites, handcrafted fresh just for you.
          </p>
        </div>
      </section>

      {loading ? (
        <div className="flex justify-center items-center py-32">
          <div className="animate-spin rounded-full h-12 w-12 border-t-2 border-b-2 border-sio-yellow"></div>
        </div>
      ) : (
        <div className="container-custom pt-24">
          {categories.length === 0 ? (
            <div className="text-center py-32 bg-sio-bg border-[0.5px] border-sio-border">
              <i className="bi bi-shop text-4xl text-gray-600 mb-6 block"></i>
              <h3 className="text-2xl font-heading text-gray-300 italic mb-4">No culinary offerings available right now</h3>
              <p className="text-sio-text-muted font-light">Our chefs are preparing something special. Please check back later.</p>
            </div>
          ) : (
            <div className="space-y-32">
              {categories.map((category) => {
                const categoryProducts = activeProducts.filter(p => p.category === category);
                return (
                  <div key={category} id={`${category}-section`} className="scroll-mt-32">
                    <div className="flex flex-col items-center text-center mb-16">
                      <span className="text-xs uppercase tracking-[0.2em] text-sio-text-muted mb-2">Category</span>
                      <h2 className="text-4xl font-heading text-sio-text italic capitalize">{category}</h2>
                      <div className="w-12 h-[1px] bg-sio-yellow mt-6"></div>
                    </div>
                    
                    <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-x-8 gap-y-16">
                      {categoryProducts.map(product => (
                        <ProductCard key={product.id} product={product} />
                      ))}
                    </div>
                  </div>
                );
              })}
            </div>
          )}
        </div>
      )}
    </main>
  );
}
