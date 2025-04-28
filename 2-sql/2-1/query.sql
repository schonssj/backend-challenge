/*
- sales
+ ------- + ------------ + ------------- + ---------- +
| id      | product      | quantity      | price      |
+ ------- + ------------ + ------------- + ---------- +
| 1       | TV           | 10            | 1500.00    |
| 2       | Phone        | 20            | 800.00     |
| 3       | Laptop       | 5             | 3000.00    |
| 4       | Phone        | 15            | 800.00     |
+ ------- + ------------ + ------------- + ---------- +
*/

SELECT
  product,
  SUM(quantity * price) AS total_revenue
FROM
  sales
GROUP BY
  product
ORDER BY
  total_revenue DESC;

/*
+ ------------ + ------------------ +
| product      | total_revenue      |
+ ------------ + ------------------ +
| Phone        | 28000.00           |
| TV           | 15000.00           |
| Laptop       | 15000.00           |
+ ------------ + ------------------ +
*/