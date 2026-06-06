import React, { useContext } from 'react';
import { Link } from 'react-router-dom';
import { AuthContext } from '../contexts/AuthContext';
import { CartContext } from '../contexts/CartContext';

export default function FavoritesPage() {
  const { user } = useContext(AuthContext);
  const { addToCart } = useContext(CartContext);
  
  // Mock favorites for now
  const favorites = [];

  return (
    <main className="min-h-screen bg-sio-bg pt-32 pb-32 font-sans text-sio-text selection:bg-sio-yellow selection:text-sio-dark">
      <div className="container-custom mx-auto max-w-7xl">
        <div className="mb-12 pb-6 border-b-[0.5px] border-sio-border flex flex-col md:flex-row md:items-end justify-between gap-6">
          <div>
            <span className="text-[0.65rem] uppercase tracking-[0.2em] text-sio-yellow mb-2 block">Curated Selection</span>
            <h2 className="text-4xl font-heading italic text-sio-text">
              My Favorites
            </h2>
          </div>
          <Link to="/shop" className="text-[0.65rem] uppercase tracking-widest text-sio-text-muted hover:text-sio-text transition-colors inline-flex items-center">
            <i className="bi bi-arrow-left mr-3"></i>Return to Menu
          </Link>
        </div>

        {favorites.length === 0 ? (
          <div className="bg-sio-surface border-[0.5px] border-sio-border p-20 text-center max-w-2xl mx-auto mt-16 shadow-xl">
            <i className="bi bi-heart text-sio-text-muted text-5xl block mb-6"></i>
            <h3 className="text-3xl font-heading italic text-sio-text mb-4">No selections</h3>
            <p className="text-sio-text-muted font-light text-sm mb-10 leading-relaxed">Your curated list of favorites is currently empty. Explore our culinary offerings to find your preferred items.</p>
            <Link to="/shop" className="btn-primary inline-flex items-center px-10 py-4 text-xs uppercase tracking-widest">
              Explore Menu <i className="bi bi-arrow-right ml-3"></i>
            </Link>
          </div>
        ) : (
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-x-8 gap-y-12 mt-12">
            {favorites.map((product, idx) => (
              <div key={idx} className="group relative bg-sio-surface border-[0.5px] border-sio-border p-3 hover:border-sio-yellow hover:shadow-xl transition-all duration-500 flex flex-col h-full">
                <div className="relative aspect-[4/5] overflow-hidden bg-sio-bg mb-6">
                  <img 
                    src={product.image || 'https://via.placeholder.com/400x300?text=No+Image'} 
                    alt={product.name} 
                    className="w-full h-full object-cover transition-all duration-700 filter grayscale-[50%] group-hover:grayscale-[20%] group-hover:scale-105" 
                  />
                  <button className="absolute top-4 right-4 w-10 h-10 bg-black/50 backdrop-blur-md rounded-full flex items-center justify-center text-gray-300 hover:text-sio-yellow border-[0.5px] border-white/10 shadow-sm transition-colors" title="Remove from favorites">
                    <i className="bi bi-x-lg text-sm"></i>
                  </button>
                </div>
                <div className="flex flex-col flex-grow text-center px-4 pb-4">
                  <span className="text-[0.65rem] uppercase tracking-[0.2em] text-sio-yellow mb-3 block">{product.category || 'Culinary'}</span>
                  <h5 className="font-heading italic text-2xl text-sio-text leading-tight mb-3">
                    {product.name}
                  </h5>
                  <p className="text-sio-text font-medium tracking-wide mb-6">
                    ₱{product.price.toFixed(2)}
                  </p>
                  <button className="w-full mt-auto py-3 px-6 bg-transparent border-[0.5px] border-sio-border text-xs uppercase tracking-widest text-sio-text hover:border-sio-yellow hover:text-sio-yellow transition-colors" onClick={() => addToCart(product)}>
                    Add to Cart
                  </button>
                </div>
              </div>
            ))}
          </div>
        )}
      </div>
    </main>
  );
}
