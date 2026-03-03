-- Write your code here
SELECT
    e.employee_id,
    e.name 
FROM
    employees e
LEFT JOIN 
    assignments a
    ON e.employee_id = a.employee_id
WHERE a.assignment_id IS NULL;
