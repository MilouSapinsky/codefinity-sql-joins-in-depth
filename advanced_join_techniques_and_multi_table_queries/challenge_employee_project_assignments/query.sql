SELECT 
    employees.name, projects.project_name, departments.department_name
FROM employees
INNER JOIN assignments ON employees.employee_id = assignments.employee_id
INNER JOIN projects ON assignments.project_id = projects.project_id
INNER JOIN departments ON projects.department_id = departments.department_id;
        