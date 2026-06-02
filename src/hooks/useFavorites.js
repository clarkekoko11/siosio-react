import { useState, useEffect, useContext } from 'react';
import { supabase } from '../lib/supabase';
import { AuthContext } from '../contexts/AuthContext';

export function useFavorites() {
  const { user } = useContext(AuthContext);
  const [favoriteIds, setFavoriteIds] = useState([]);
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    if (user) {
      fetchFavorites();
    } else {
      setFavoriteIds([]);
    }
  }, [user]);

  const fetchFavorites = async () => {
    setLoading(true);
    try {
      const { data, error } = await supabase
        .from('favorites')
        .select('product_id')
        .eq('user_id', user.id);
        
      if (error) throw error;
      setFavoriteIds(data.map(f => f.product_id));
    } catch (err) {
      console.error('Error fetching favorites:', err);
    } finally {
      setLoading(false);
    }
  };

  const toggleFavorite = async (productId) => {
    if (!user) return false;
    
    const isFavorite = favoriteIds.includes(productId);
    
    try {
      if (isFavorite) {
        // Remove
        const { error } = await supabase
          .from('favorites')
          .delete()
          .eq('user_id', user.id)
          .eq('product_id', productId);
          
        if (error) throw error;
        setFavoriteIds(prev => prev.filter(id => id !== productId));
      } else {
        // Add
        const { error } = await supabase
          .from('favorites')
          .insert({ user_id: user.id, product_id: productId });
          
        if (error) throw error;
        setFavoriteIds(prev => [...prev, productId]);
      }
      return true;
    } catch (err) {
      console.error('Error toggling favorite:', err);
      return false;
    }
  };

  return { favoriteIds, toggleFavorite, loading };
}
