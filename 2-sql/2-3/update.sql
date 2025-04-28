/*
+ --------- + ----------- +
| name      | salary      |
+ --------- + ----------- +
| Carlos    | 4000.00     |
| Lucia     | 5200.00     |
| Marcos    | 4800.00     |
| Fernanda  | 7000.00     |
+ --------- + ----------- +
*/

UPDATE employees
SET salary = salary * 1.10
WHERE salary < 5000;

/*
+ --------- + ----------- +
| name      | salary      |
+ --------- + ----------- +
| Carlos    | 4400.00     |
| Lucia     | 5200.00     |
| Marcos    | 5280.00     |
| Fernanda  | 7000.00     |
+ --------- + ----------- +
*/