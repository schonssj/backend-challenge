/*
- categories
+ ------- + ----------- +
| id      | name        |
+ ------- + ----------- +
| 1       | Electronics |
| 2       | Furniture   |
+ ------- + ----------- +

- products
+ ------- + --------- + ---------------- +
| id      | name      | category_id      |
+ ------- + --------- + ---------------- +
| 1       | TV        | 1                |
| 2       | Laptop    | 1                |
| 3       | Sofa      | 2                |
| 4       | Chair     | 2                |
+ ------- + --------- + ---------------- +

- sales_products
+ ------- + --------------- + ------------- +
| id      | product_id      | quantity      |
+ ------- + --------------- + ------------- +
| 1       | 1               | 150           |
| 2       | 2               | 80            |
| 3       | 3               | 30            |
| 4       | 4               | 200           |
+ ------- + --------------- + ------------- +
*/

SELECT
  cat.name AS category_name,
  p.name AS product_name,
  SUM(s.quantity) AS total_quantity_sold
FROM
  categories cat
JOIN
  products p ON cat.id = p.category_id
JOIN
  sales_products s ON p.id = s.product_id
GROUP BY
  cat.id, cat.name, p.id, p.name
HAVING
  SUM(s.quantity) > 100
ORDER BY
  total_quantity_sold DESC;

/*
+ ------------------ + ----------------- + ------------------------ +
| category_name      | product_name      | total_quantity_sold      |
+ ------------------ + ----------------- + ------------------------ +
| Furniture          | Chair             | 200                      |
| Electronics        | TV                | 150                      |
+ ------------------ + ----------------- + ------------------------ +
*/