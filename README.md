# Silent Failure in SQL Query with Non-Existent Department ID

This repository demonstrates a subtle bug in an SQL query where the query fails silently when a condition refers to a non-existent department ID.  This can be problematic because it doesn't throw an error, making it difficult to detect.

## The Bug

The `bug.sql` file contains an SQL query that selects employees from a department with `department_id = 10` and a salary greater than 100000. If no department with `department_id = 10` exists, the query returns an empty result set without any error message.

## The Solution

The `bugSolution.sql` file offers a solution that addresses this issue. It uses a `LEFT JOIN` to retrieve information about the department and handles the case where no department is found more explicitly. This approach allows for the more graceful handling of non-existent department IDs.