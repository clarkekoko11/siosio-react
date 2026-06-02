import { useState, useEffect } from 'react';
import { supabase } from '../lib/supabase';
import { PRODUCTS as FALLBACK_PRODUCTS } from '../utils/constants';

export function useProducts() {
  const [products, setProducts] = useState(FALLBACK_PRODUCTS);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    async function fetchProducts() {
      try {
        const { data, error } = await supabase.from('products').select('*');
        if (error) throw error;
        
        if (data && data.length > 0) {
          setProducts(data);
        }
      } catch (err) {
        console.warn('Failed to fetch products from Supabase, using fallback data.', err);
      } finally {
        setLoading(false);
      }
    }

    fetchProducts();
  }, []);

  return { products, loading, error };
}
