DROP TABLE IF EXISTS users CASCADE;

CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  first_name VARCHAR(40) NOT NULL,
  last_name VARCHAR(60),
  email VARCHAR(60) NOT NULL,
  password VARCHAR(60) NOT NULL,
  profile_picture VARCHAR(200),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

DROP TABLE IF EXISTS categories CASCADE;

CREATE TABLE categories (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(40) NOT NULL,
  description VARCHAR(150),
  budget INTEGER NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

DROP TABLE IF EXISTS expenses CASCADE;

CREATE TABLE expenses (
  id SERIAL PRIMARY KEY NOT NULL,
  category_id INTEGER REFERENCES categories(id),
  title VARCHAR(100) NOT NULL,
  description VARCHAR(500),
  expense MONEY NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
)