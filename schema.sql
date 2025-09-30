-- Sample schema for PhotoMarket
CREATE TABLE profiles (
  id SERIAL PRIMARY KEY,
  email TEXT,
  full_name TEXT,
  is_seller BOOLEAN DEFAULT FALSE,
  is_premium BOOLEAN DEFAULT FALSE,
  wallet_balance NUMERIC DEFAULT 0,
  status TEXT DEFAULT 'active',
  last_login TIMESTAMP
);

CREATE TABLE transactions (
  id SERIAL PRIMARY KEY,
  photo_id INT,
  buyer_id INT,
  seller_id INT,
  amount NUMERIC,
  commission NUMERIC,
  seller_earnings NUMERIC,
  created_at TIMESTAMP DEFAULT now()
);
