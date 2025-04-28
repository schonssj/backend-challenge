/*
- transactions
+ ------- + --------------- + --------------------- + ----------- +
| id      | account_id      | transaction_date      | amount      |
+ ------- + --------------- + --------------------- + ----------- +
| 1       | 1               | 2024-01-15            | 4000.00     |
| 2       | 1               | 2024-01-20            | 7500.00     |
| 3       | 2               | 2024-02-10            | 3000.00     |
| 4       | 2               | 2024-02-25            | 8000.00     |
| 5       | 3               | 2024-03-05            | 12000.00    |
+ ------- + --------------- + --------------------- + ----------- +
*/

CREATE VIEW monthly_summary AS
SELECT
  account_id,
  EXTRACT(MONTH FROM transaction_date) AS month,
  EXTRACT(YEAR FROM transaction_date) AS year,
  SUM(amount) AS total_amount
FROM
  transactions
GROUP BY
  account_id, year, month;

SELECT
  account_id,
  month,
  year,
  total_amount
FROM
  monthly_summary
WHERE
  total_amount > 10000;


/*
+ ------------ + ---------- + ----------- + ------------ +
| account_id   | month      | year        | total_amount |
+ ------------ + ---------- + ----------- + ------------ +
| 1            | 1          | 2024        | 11500.00     |
| 2            | 2          | 2024        | 11000.00     |
| 3            | 3          | 2024        | 12000.00     |
+ ------------ + ---------- + ----------- + ------------ +
*/