/*
- orders
+ ------- + ---------------- + ---------- +
| id      | customer_id      | total      |
+ ------- + ---------------- + ---------- +
| 1       | 1                | 2000.00    |
| 2       | 1                | 500.00     |
| 3       | 2                | 7000.00    |
| 4       | 3                | 1500.00    |
+ ------- + ---------------- + ---------- +

- customers
+ ------- + --------- + ------------ +
| id      | name      | country      |
+ ------- + --------- + ------------ +
| 1       | Acme Corp | USA          |
| 2       | Globex    | Brazil       |
| 3       | Initech   | Canada       |
+ ------- + --------- + ------------ +
*/

SELECT
  c.name AS customer_name,
  SUM(o.total) AS total_purchases
FROM
  customers c
JOIN
  orders o ON c.id = o.customer_id
GROUP BY
  c.id, c.name
ORDER BY
  total_purchases DESC;

/*
+ ------------------ + -------------------- +
| customer_name      | total_purchases      |
+ ------------------ + -------------------- +
| Globex             | 7000.00              |
| Acme Corp          | 2500.00              |
| Initech            | 1500.00              |
+ ------------------ + -------------------- +
*/