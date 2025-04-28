CREATE TABLE customers (
  id INT PRIMARY KEY,
  name VARCHAR(100),
  country VARCHAR(100)
);

CREATE TABLE orders (
  id INT PRIMARY KEY,
  customer_id INT,
  total DECIMAL(10, 2),
  FOREIGN KEY (customer_id) REFERENCES customers(id)
);