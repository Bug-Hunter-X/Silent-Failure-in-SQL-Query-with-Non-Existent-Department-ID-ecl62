```sql
SELECT * FROM employees WHERE department_id = 10 AND salary > 100000;
```
This query might seem correct, but it can lead to unexpected results if there is no `department_id` with the value 10 in the `employees` table.  In this situation, the query won't return any errors, but also won't return any rows, leading to a subtle but hard-to-detect bug.