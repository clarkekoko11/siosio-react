import { useState, useContext } from 'react';
import { supabase } from '../lib/supabase';
import { AuthContext } from '../contexts/AuthContext';
import { CartContext } from '../contexts/CartContext';

export function useCheckout() {
  const { user } = useContext(AuthContext);
  const { cartItems, clearCart } = useContext(CartContext);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState(null);

  const submitOrder = async (shippingDetails, totalAmount) => {
    if (!user) {
      setError('You must be logged in to checkout.');
      return { success: false, error: 'Not logged in' };
    }

    if (!cartItems || cartItems.length === 0) {
      setError('Your cart is empty.');
      return { success: false, error: 'Empty cart' };
    }

    setLoading(true);
    setError(null);

    try {
      // 1. Create the Order
      const { data: orderData, error: orderError } = await supabase
        .from('orders')
        .insert([{
          user_id: user.id,
          full_name: shippingDetails.fullName,
          phone: shippingDetails.phone,
          address: shippingDetails.address,
          notes: shippingDetails.notes || null,
          total_amount: totalAmount,
          status: 'pending'
        }])
        .select()
        .single();

      if (orderError) throw orderError;

      // 2. Insert Order Items
      const orderItems = cartItems.map(item => ({
        order_id: orderData.id,
        product_id: item.id,
        product_name: item.name,
        price: item.price,
        quantity: item.quantity
      }));

      const { error: itemsError } = await supabase
        .from('order_items')
        .insert(orderItems);

      if (itemsError) throw itemsError;

      // 3. Clear the user's cart in the database
      const cartIdsToDelete = cartItems.map(item => item.cart_id);
      
      const { error: deleteCartError } = await supabase
        .from('cart')
        .delete()
        .in('id', cartIdsToDelete);
        
      if (deleteCartError) throw deleteCartError;

      // 4. Clear local cart items
      await clearCart();

      setLoading(false);
      return { success: true, orderId: orderData.id };
    } catch (err) {
      console.error('Checkout error:', err);
      setError(err.message || 'Failed to process order.');
      setLoading(false);
      return { success: false, error: err };
    }
  };

  return {
    submitOrder,
    loading,
    error
  };
}
