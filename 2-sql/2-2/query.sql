/*
- users
+ ------- + ----------------- + -------------- +
| id      | email             | name           |
+ ------- + ----------------- + -------------- +
| 1       | john@example.com  | John Doe       |
| 2       | jane@example.com  | Jane Smith     |
| 3       | john@example.com  | John Duplicate |
| 4       | alice@example.com | Alice          |
+ ------- + ----------------- + -------------- +
*/

SELECT
  email,
  COUNT(*) AS occurrences
FROM
  users
GROUP BY
  email
HAVING
  COUNT(*) > 1;

/*
+ ---------------- + ----------- +
| email            | occurrences |
+ ---------------- + ----------- +
| john@example.com | 2           |
+ ---------------- + ----------- +
*/