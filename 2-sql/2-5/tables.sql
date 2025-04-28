CREATE TABLE categories (
  id INT PRIMARY KEY,
  name VARCHAR(100)
);

CREATE TABLE products (
  id INT PRIMARY KEY,
  name VARCHAR(100),
  category_id INT,
  FOREIGN KEY (category_id) REFERENCES categories(id)
);

CREATE TABLE sales_products (
  id INT PRIMARY KEY,
  product_id INT,
  quantity INT,
  FOREIGN KEY (product_id) REFERENCES products(id)
);