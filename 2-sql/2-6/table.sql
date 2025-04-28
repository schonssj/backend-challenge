CREATE TABLE transactions (
  id INT PRIMARY KEY,
  account_id INT,
  transaction_date DATE,
  amount DECIMAL(10, 2)
);