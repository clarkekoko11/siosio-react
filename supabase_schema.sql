-- Run this SQL in your Supabase SQL Editor

-- 1. Profiles Table (extends auth.users)
CREATE TABLE IF NOT EXISTS profiles (
  id UUID REFERENCES auth.users(id) ON DELETE CASCADE PRIMARY KEY,
  name TEXT,
  phone TEXT,
  profile_photo TEXT,
  role TEXT DEFAULT 'customer',
  created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL
);

-- Create a helper function to avoid infinite recursion in RLS
CREATE OR REPLACE FUNCTION public.is_admin()
RETURNS BOOLEAN AS $$
BEGIN
  RETURN EXISTS (
    SELECT 1 FROM public.profiles 
    WHERE id = auth.uid() AND role = 'admin'
  );
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Turn on RLS for profiles
ALTER TABLE profiles ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Profiles are viewable by owner or admin." ON profiles;
CREATE POLICY "Profiles are viewable by owner or admin."
  ON profiles FOR SELECT
  USING ( auth.uid() = id OR public.is_admin() );

DROP POLICY IF EXISTS "Users can insert their own profile." ON profiles;
CREATE POLICY "Users can insert their own profile."
  ON profiles FOR INSERT
  WITH CHECK ( auth.uid() = id );

DROP POLICY IF EXISTS "Users can update own profile." ON profiles;
CREATE POLICY "Users can update own profile."
  ON profiles FOR UPDATE
  USING ( auth.uid() = id );

-- Create a trigger to prevent non-admins from changing their role
CREATE OR REPLACE FUNCTION public.check_role_update()
RETURNS trigger AS $$
BEGIN
  -- If the role is being changed
  IF NEW.role IS DISTINCT FROM OLD.role THEN
    -- Check if the current user is an admin
    IF NOT public.is_admin() THEN
      -- If not an admin, revert the role change silently or raise error
      -- Reverting silently is usually better for UX if frontend sends entire object
      NEW.role = OLD.role;
    END IF;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

DROP TRIGGER IF EXISTS on_profile_role_update ON profiles;
CREATE TRIGGER on_profile_role_update
  BEFORE UPDATE ON profiles
  FOR EACH ROW EXECUTE PROCEDURE public.check_role_update();

-- Create a trigger to automatically create a profile for new users
CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS trigger AS $$
BEGIN
  INSERT INTO public.profiles (id, name)
  VALUES (new.id, new.raw_user_meta_data->>'full_name');
  RETURN new;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW EXECUTE PROCEDURE public.handle_new_user();


-- 2. Products Table
CREATE TABLE IF NOT EXISTS products (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  category TEXT NOT NULL,
  description TEXT,
  price DECIMAL(10,2) NOT NULL,
  image TEXT,
  status TEXT DEFAULT 'active'
);

-- Turn on RLS for products
ALTER TABLE products ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Products are viewable by everyone." ON products;
CREATE POLICY "Products are viewable by everyone."
  ON products FOR SELECT
  USING ( true );
  
-- Products are managed by admins
DROP POLICY IF EXISTS "Admins can insert products." ON products;
CREATE POLICY "Admins can insert products."
  ON products FOR INSERT
  WITH CHECK ( public.is_admin() );

DROP POLICY IF EXISTS "Admins can update products." ON products;
CREATE POLICY "Admins can update products."
  ON products FOR UPDATE
  USING ( public.is_admin() );

DROP POLICY IF EXISTS "Admins can delete products." ON products;
CREATE POLICY "Admins can delete products."
  ON products FOR DELETE
  USING ( public.is_admin() );


-- 3. Cart Table
CREATE TABLE IF NOT EXISTS cart (
  id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
  user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE,
  product_id INTEGER REFERENCES products(id) ON DELETE CASCADE,
  quantity INTEGER DEFAULT 1,
  price_at_time DECIMAL(10,2),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL
);

-- Turn on RLS for cart
ALTER TABLE cart ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Users can view their own cart." ON cart;
CREATE POLICY "Users can view their own cart."
  ON cart FOR SELECT
  USING ( auth.uid() = user_id );

DROP POLICY IF EXISTS "Users can insert into their own cart." ON cart;
CREATE POLICY "Users can insert into their own cart."
  ON cart FOR INSERT
  WITH CHECK ( auth.uid() = user_id );

DROP POLICY IF EXISTS "Users can update their own cart." ON cart;
CREATE POLICY "Users can update their own cart."
  ON cart FOR UPDATE
  USING ( auth.uid() = user_id );

DROP POLICY IF EXISTS "Users can delete from their own cart." ON cart;
CREATE POLICY "Users can delete from their own cart."
  ON cart FOR DELETE
  USING ( auth.uid() = user_id );


-- 4. Favorites Table
CREATE TABLE IF NOT EXISTS favorites (
  user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE,
  product_id INTEGER REFERENCES products(id) ON DELETE CASCADE,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL,
  PRIMARY KEY (user_id, product_id)
);

-- Turn on RLS for favorites
ALTER TABLE favorites ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Users can view their own favorites." ON favorites;
CREATE POLICY "Users can view their own favorites."
  ON favorites FOR SELECT
  USING ( auth.uid() = user_id );

DROP POLICY IF EXISTS "Users can insert their own favorites." ON favorites;
CREATE POLICY "Users can insert their own favorites."
  ON favorites FOR INSERT
  WITH CHECK ( auth.uid() = user_id );

DROP POLICY IF EXISTS "Users can delete their own favorites." ON favorites;
CREATE POLICY "Users can delete their own favorites."
  ON favorites FOR DELETE
  USING ( auth.uid() = user_id );


-- 5. Initial Product Data Seed
INSERT INTO products (name, category, description, price, image) VALUES
('Pork Siomai', 'siomai', 'Juicy pork siomai with authentic Filipino flavors', 25.00, 'https://media.istockphoto.com/id/2182583656/photo/chinese-steamed-dumpling-or-shumai-in-japanese-language-meatball-dumpling-with-wanton-skin.jpg?s=612x612&w=0&k=20&c=0K7_ee0dwfAZhcZZajZRSv8uTifXZhG6LVmlKnSe-0U='),
('Chicken Siomai', 'siomai', 'Tender chicken siomai with fresh ingredients', 25.00, 'https://media.istockphoto.com/id/1336438874/photo/delicious-dim-sum-home-made-chinese-dumplings-served-on-plate.jpg?s=612x612&w=0&k=20&c=11KB0bXoZeMrlzaHN2q9aZq8kqtdvp-d4Oggc2TF8M4='),
('Beef Siomai', 'siomai', 'Premium beef siomai with a rich savory taste', 25.00, 'https://media.istockphoto.com/id/2189370578/photo/delicious-shumai-shumay-siomay-chicken-in-bowl-snack-menu.jpg?s=612x612&w=0&k=20&c=hD4kuZsiGIjgyUPq-seqv229pFE43CnS0Do3EH_2E_Y='),
('Tuna Siomai', 'siomai', 'Fresh tuna siomai with an ocean-fresh flavor', 25.00, 'https://media.istockphoto.com/id/1084916088/photo/close-up-cooking-homemade-shumai.jpg?s=612x612&w=0&k=20&c=M1RyWV62MACQffBC40UzZ_h-BsXOj4bkaMBrxnbMTzc='),
('Shark''s Fin Siomai', 'siomai', 'Premium shark''s fin siomai with a delicate texture', 25.00, 'https://media.istockphoto.com/id/1330456626/photo/steamed-shark-fin-dumplings-served-with-chili-garlic-oil-and-calamansi.jpg?s=612x612&w=0&k=20&c=9Zi1JmbwvYtIlZJqZb6tHOVC21rS-IbwZXS-IeflE30='),
('Japanese Siomai', 'siomai', 'Japanese-style siomai with nori wrapping', 25.00, 'https://media.istockphoto.com/id/1221287744/photo/ground-pork-with-crab-stick-wrapped-in-nori.jpg?s=612x612&w=0&k=20&c=Rniq7tdyCqVZHpwngsbzOk1dG1u8pTEeUDE8arsfOUY='),
('Asado Siopao', 'siopao', 'Classic asado siopao with sweet-savory pork filling', 45.00, 'https://media.istockphoto.com/id/1163708923/photo/hong-kong-style-chicken-char-siew-in-classic-polo-bun-polo-bun-or-is-a-kind-of-crunchy-and.jpg?s=612x612&w=0&k=20&c=R9DC49-UsxYUPlImX6O47LQyafOu1Cp5rNxp3XifFNI='),
('Bola-Bola Siopao', 'siopao', 'Hearty bola-bola siopao with meatball filling', 45.00, 'https://media.istockphoto.com/id/1184080523/photo/wanton-noodle-soup-and-siopao.jpg?s=612x612&w=0&k=20&c=oRJanjrTxICQfuzm9bXVPYkw9nKh74tcwjH1cVzXzN8='),
('Choco Siopao', 'siopao', 'Sweet chocolate-filled siopao for dessert lovers', 45.00, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxSCl2zlIK85vMZ6nRYuWpqde6JnIxBUTe-w&s'),
('Ube Siopao', 'siopao', 'Filipino ube-flavored siopao with purple yam', 45.00, 'https://media.istockphoto.com/id/2161276374/photo/vivid-steamed-purple-ube-sweet-potato-dumplings.jpg?s=612x612&w=0&k=20&c=Mb2rl1JZPvG0d5v-_gSC7Mx50DNggFJiTEcoTayqB1Q='),
('Red Bean Siopao', 'siopao', 'Traditional red bean paste siopao with sweet flavor', 45.00, 'https://media.istockphoto.com/id/1172915611/photo/asian-steamed-bun-with-adzuki-red-bean-paste-filling-or-bakpao.jpg?s=612x612&w=0&k=20&c=hImY86ZyoR8y2FC17yLpkCA5amxrZDxCeuVokJnY5w0='),
('Custard Siopao', 'siopao', 'Creamy custard-filled siopao with rich texture', 45.00, 'https://media.istockphoto.com/id/957584318/photo/chinese-steamed-bun-and-orange-sweet-creamy-lava-on-chinese-pattern-dish.jpg?s=612x612&w=0&k=20&c=5CJuHZdTLVIlN5gq_jmer--RWri-TDliTtQoIvAc97M=');


-- 6. Orders Table
CREATE TABLE IF NOT EXISTS orders (
  id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
  user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE,
  full_name TEXT NOT NULL,
  phone TEXT NOT NULL,
  address TEXT NOT NULL,
  notes TEXT,
  total_amount DECIMAL(10,2) NOT NULL,
  status TEXT DEFAULT 'pending',
  created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL
);

ALTER TABLE orders ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Users can view their own orders or all if admin." ON orders;
CREATE POLICY "Users can view their own orders or all if admin."
  ON orders FOR SELECT
  USING ( auth.uid() = user_id OR EXISTS (SELECT 1 FROM profiles WHERE id = auth.uid() AND role = 'admin') );

DROP POLICY IF EXISTS "Users can insert their own orders." ON orders;
CREATE POLICY "Users can insert their own orders."
  ON orders FOR INSERT
  WITH CHECK ( auth.uid() = user_id AND status = 'pending' );

-- 7. Order Items Table
CREATE TABLE IF NOT EXISTS order_items (
  id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
  order_id UUID REFERENCES orders(id) ON DELETE CASCADE,
  product_id INTEGER REFERENCES products(id) ON DELETE RESTRICT,
  product_name TEXT NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  quantity INTEGER NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL
);

ALTER TABLE order_items ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Users can view items of their own orders." ON order_items;
CREATE POLICY "Users can view items of their own orders."
  ON order_items FOR SELECT
  USING ( EXISTS (
    SELECT 1 FROM orders WHERE orders.id = order_items.order_id AND orders.user_id = auth.uid()
  ) );

DROP POLICY IF EXISTS "Users can insert items for their own orders." ON order_items;
CREATE POLICY "Users can insert items for their own orders."
  ON order_items FOR INSERT
  WITH CHECK ( EXISTS (
    SELECT 1 FROM orders WHERE orders.id = order_items.order_id AND orders.user_id = auth.uid()
  ) );



DROP POLICY IF EXISTS "Only admins can update orders." ON orders;
CREATE POLICY "Only admins can update orders."
  ON orders FOR UPDATE
  USING ( public.is_admin() );

DROP POLICY IF EXISTS "Only admins can delete orders." ON orders;
CREATE POLICY "Only admins can delete orders."
  ON orders FOR DELETE
  USING ( public.is_admin() );

-- 8. Admin RPC Functions

-- Securely deletes an auth user (cascades to profiles and orders)
CREATE OR REPLACE FUNCTION delete_user_admin(target_user_id UUID)
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
BEGIN
  -- Check if caller is admin
  IF NOT public.is_admin() THEN
    RAISE EXCEPTION 'Not authorized. Admin access required.';
  END IF;

  DELETE FROM auth.users WHERE id = target_user_id;
END;
$$;

-- Securely creates an auth user, bypassing email verification
CREATE OR REPLACE FUNCTION create_user_admin(
  new_email TEXT, 
  new_password TEXT, 
  new_name TEXT, 
  new_role TEXT
)
RETURNS UUID
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
DECLARE
  new_user_id UUID := gen_random_uuid();
BEGIN
  -- Check if caller is admin
  IF NOT public.is_admin() THEN
    RAISE EXCEPTION 'Not authorized. Admin access required.';
  END IF;

  -- 1. Insert into auth.users
  INSERT INTO auth.users (
    instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, 
    raw_app_meta_data, raw_user_meta_data, created_at, updated_at
  )
  VALUES (
    '00000000-0000-0000-0000-000000000000', new_user_id, 'authenticated', 'authenticated', 
    new_email, crypt(new_password, gen_salt('bf')), now(),
    '{"provider": "email", "providers": ["email"]}',
    format('{"full_name": "%s"}', new_name)::jsonb,
    now(), now()
  );

  -- 2. Insert into auth.identities
  INSERT INTO auth.identities (
    provider_id, user_id, identity_data, provider, last_sign_in_at, created_at, updated_at, id
  )
  VALUES (
    new_user_id::text, new_user_id, 
    format('{"sub": "%s", "email": "%s"}', new_user_id::text, new_email)::jsonb,
    'email', now(), now(), now(), gen_random_uuid()
  );

  -- 3. Update the profile role (trigger creates the profile)
  UPDATE public.profiles SET role = new_role WHERE id = new_user_id;

  RETURN new_user_id;
END;
$$;

