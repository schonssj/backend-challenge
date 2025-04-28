INSERT INTO products (id, name, category_id) VALUES
(1, 'TV', 1),
(2, 'Laptop', 1),
(3, 'Sofa', 2),
(4, 'Chair', 2);

INSERT INTO categories (id, name) VALUES
(1, 'Electronics'),
(2, 'Furniture');

INSERT INTO sales_products (id, product_id, quantity) VALUES
(1, 1, 150), 
(2, 2, 80), 
(3, 3, 30), 
(4, 4, 200); 