```sql
SELECT e.* 
FROM employees e 
LEFT JOIN departments d ON e.department_id = d.department_id 
WHERE d.department_id = 10 AND e.salary > 100000;
```
This revised query uses a `LEFT JOIN` to join the `employees` table with the `departments` table. If a department with `department_id = 10` does not exist, the corresponding rows in the result will have `NULL` values for the department information. This makes it easier to detect and handle cases where the specified department doesn't exist, preventing silent failures.