import { useState, useEffect, useContext } from 'react';
import { supabase } from '../lib/supabase';
import { AuthContext } from '../contexts/AuthContext';

export function useCart() {
  const { user } = useContext(AuthContext);
  const [cartItems, setCartItems] = useState([]);
  const [loading, setLoading] = useState(true);

  // Load cart on init or user change
  useEffect(() => {
    if (user) {
      fetchSupabaseCart();
    } else {
      loadLocalCart();
    }
  }, [user]);

  const loadLocalCart = () => {
    const stored = localStorage.getItem('siosio_cart');
    if (stored) {
      try {
        const parsed = JSON.parse(stored);
        setCartItems(Array.isArray(parsed) ? parsed : []);
      } catch (e) {
        console.error('Failed to parse local cart', e);
        setCartItems([]);
      }
    } else {
      setCartItems([]);
    }
    setLoading(false);
  };

  const saveLocalCart = (items) => {
    localStorage.setItem('siosio_cart', JSON.stringify(items));
  };

  const fetchSupabaseCart = async () => {
    setLoading(true);
    try {
      const { data, error } = await supabase
        .from('cart')
        .select('*, product:products(*)')
        .eq('user_id', user.id);
        
      if (error) throw error;
      
      // Transform data to match local structure if needed
      const formattedItems = data.map(item => ({
        ...item.product,
        cart_id: item.id,
        quantity: item.quantity,
      }));
      
      setCartItems(formattedItems);
    } catch (err) {
      console.error('Error fetching cart:', err);
    } finally {
      setLoading(false);
    }
  };

  const addToCart = async (product) => {
    if (user) {
      try {
        // Check if already in cart
        const existing = cartItems.find(item => item.id === product.id);
        
        if (existing) {
          const { error } = await supabase
            .from('cart')
            .update({ quantity: existing.quantity + 1 })
            .eq('id', existing.cart_id);
          if (error) throw error;
        } else {
          const { error } = await supabase
            .from('cart')
            .insert({ 
              user_id: user.id, 
              product_id: product.id, 
              quantity: 1, 
              price_at_time: product.price 
            });
          if (error) throw error;
        }
        await fetchSupabaseCart();
      } catch (err) {
        console.error('Error adding to cart:', err);
      }
    } else {
      const newCart = [...cartItems];
      const existing = newCart.find(item => item.id === product.id);
      if (existing) {
        existing.quantity += 1;
      } else {
        newCart.push({ ...product, quantity: 1 });
      }
      setCartItems(newCart);
      saveLocalCart(newCart);
    }
  };

  const updateQuantity = async (productId, newQuantity) => {
    if (newQuantity < 1) return;
    
    if (user) {
      const item = cartItems.find(i => i.id === productId);
      if (!item) return;
      
      try {
        const { error } = await supabase
          .from('cart')
          .update({ quantity: newQuantity })
          .eq('id', item.cart_id);
        if (error) throw error;
        await fetchSupabaseCart();
      } catch (err) {
        console.error('Error updating quantity:', err);
      }
    } else {
      const newCart = cartItems.map(item => 
        item.id === productId ? { ...item, quantity: newQuantity } : item
      );
      setCartItems(newCart);
      saveLocalCart(newCart);
    }
  };

  const removeFromCart = async (productId) => {
    if (user) {
      const item = cartItems.find(i => i.id === productId);
      if (!item) return;
      
      try {
        const { error } = await supabase
          .from('cart')
          .delete()
          .eq('id', item.cart_id);
        if (error) throw error;
        await fetchSupabaseCart();
      } catch (err) {
        console.error('Error removing from cart:', err);
      }
    } else {
      const newCart = cartItems.filter(item => item.id !== productId);
      setCartItems(newCart);
      saveLocalCart(newCart);
    }
  };

  const clearCart = async () => {
    if (user) {
      // Deletion is handled by checkout, just reload state
      await fetchSupabaseCart();
    } else {
      setCartItems([]);
      saveLocalCart([]);
    }
  };

  return { cartItems, loading, addToCart, updateQuantity, removeFromCart, clearCart };
}
