-- Write your code here
SELECT 
    students.name AS student_name,
    COALESCE(classes.class_name, 'Unassigned') AS class_name
FROM
    students
LEFT JOIN 
    classes
ON students.class_id = classes.class_id;