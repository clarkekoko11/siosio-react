-- Run this SQL in your Supabase SQL Editor

-- 1. Profiles Table (extends auth.users)
CREATE TABLE profiles (
  id UUID REFERENCES auth.users(id) ON DELETE CASCADE PRIMARY KEY,
  name TEXT,
  phone TEXT,
  profile_photo TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL
);

-- Turn on RLS for profiles
ALTER TABLE profiles ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Public profiles are viewable by everyone."
  ON profiles FOR SELECT
  USING ( true );

CREATE POLICY "Users can insert their own profile."
  ON profiles FOR INSERT
  WITH CHECK ( auth.uid() = id );

CREATE POLICY "Users can update own profile."
  ON profiles FOR UPDATE
  USING ( auth.uid() = id );

-- Create a trigger to automatically create a profile for new users
CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS trigger AS $$
BEGIN
  INSERT INTO public.profiles (id, name)
  VALUES (new.id, new.raw_user_meta_data->>'full_name');
  RETURN new;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW EXECUTE PROCEDURE public.handle_new_user();


-- 2. Products Table
CREATE TABLE products (
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

CREATE POLICY "Products are viewable by everyone."
  ON products FOR SELECT
  USING ( true );
  
-- (Only admins should insert/update/delete products in a real app, omitted for brevity)


-- 3. Cart Table
CREATE TABLE cart (
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

CREATE POLICY "Users can view their own cart."
  ON cart FOR SELECT
  USING ( auth.uid() = user_id );

CREATE POLICY "Users can insert into their own cart."
  ON cart FOR INSERT
  WITH CHECK ( auth.uid() = user_id );

CREATE POLICY "Users can update their own cart."
  ON cart FOR UPDATE
  USING ( auth.uid() = user_id );

CREATE POLICY "Users can delete from their own cart."
  ON cart FOR DELETE
  USING ( auth.uid() = user_id );


-- 4. Favorites Table
CREATE TABLE favorites (
  user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE,
  product_id INTEGER REFERENCES products(id) ON DELETE CASCADE,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL,
  PRIMARY KEY (user_id, product_id)
);

-- Turn on RLS for favorites
ALTER TABLE favorites ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Users can view their own favorites."
  ON favorites FOR SELECT
  USING ( auth.uid() = user_id );

CREATE POLICY "Users can insert their own favorites."
  ON favorites FOR INSERT
  WITH CHECK ( auth.uid() = user_id );

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
CREATE TABLE orders (
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

CREATE POLICY "Users can view their own orders."
  ON orders FOR SELECT
  USING ( auth.uid() = user_id );

CREATE POLICY "Users can insert their own orders."
  ON orders FOR INSERT
  WITH CHECK ( auth.uid() = user_id );

-- 7. Order Items Table
CREATE TABLE order_items (
  id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
  order_id UUID REFERENCES orders(id) ON DELETE CASCADE,
  product_id INTEGER REFERENCES products(id) ON DELETE RESTRICT,
  product_name TEXT NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  quantity INTEGER NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL
);

ALTER TABLE order_items ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Users can view items of their own orders."
  ON order_items FOR SELECT
  USING ( EXISTS (
    SELECT 1 FROM orders WHERE orders.id = order_items.order_id AND orders.user_id = auth.uid()
  ) );

CREATE POLICY "Users can insert items for their own orders."
  ON order_items FOR INSERT
  WITH CHECK ( EXISTS (
    SELECT 1 FROM orders WHERE orders.id = order_items.order_id AND orders.user_id = auth.uid()
  ) );



CREATE POLICY "Users can update their own orders."
  ON orders FOR UPDATE
  USING ( auth.uid() = user_id );



CREATE POLICY "Users can delete their own orders."
  ON orders FOR DELETE
  USING ( auth.uid() = user_id );

