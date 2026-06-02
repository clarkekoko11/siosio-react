import React, { createContext } from 'react';
import { useCart as useCartHook } from '../hooks/useCart';

export const CartContext = createContext();

export function CartProvider({ children }) {
  const { cartItems, loading, addToCart, updateQuantity, removeFromCart, clearCart } = useCartHook();
  
  const safeCartItems = Array.isArray(cartItems) ? cartItems : [];
  const cartCount = safeCartItems.reduce((acc, item) => acc + (item?.quantity || 0), 0);

  return (
    <CartContext.Provider value={{ 
      cartItems: safeCartItems, 
      cartCount, 
      loading,
      addToCart, 
      updateQuantity, 
      removeFromCart,
      clearCart 
    }}>
      {children}
    </CartContext.Provider>
  );
}
