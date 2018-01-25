DROP TABLE itemmap;
DROP TABLE cartentry;
DROP TABLE carts;
DROP TABLE users CASCADE;
DROP TABLE categories CASCADE;
DROP TABLE items CASCADE;
CREATE TABLE users (
    id serial PRIMARY KEY,
    name varchar (50) UNIQUE NOT NULL,
    address varchar (120),
    email varchar (120) UNIQUE NOT NULL,
    phone varchar (25),
    createstamp date);
CREATE TABLE categories (
    id serial PRIMARY KEY,
    name varchar (50) UNIQUE NOT NULL,
    parent varchar REFERENCES categories(name));
CREATE TABLE items (
    sku serial PRIMARY KEY,
    name varchar (50) UNIQUE NOT NULL,
    price numeric,
    description varchar (120) NOT NULL,
    quantityinstock numeric);
CREATE TABLE carts (
    id serial PRIMARY KEY,
    uid varchar REFERENCES users(name),
    createstamp date);
CREATE TABLE cartentry (
    id serial PRIMARY KEY,
    cart integer REFERENCES carts(id),
    item varchar REFERENCES items(name),
    quantity integer,
    cost numeric);
CREATE TABLE itemmap (
    item varchar REFERENCES items(name),
    category varchar REFERENCES categories(name) NOT NULL);
CREATE INDEX uid_idx ON users (name);
CREATE INDEX email_idx ON users (email);
CREATE INDEX cat_idx ON categories (name);




