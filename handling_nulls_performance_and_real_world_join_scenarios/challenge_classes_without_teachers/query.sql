-- Write your code here
SELECT
    c.class_id,
    c.class_name,
    COALESCE(t.name, 'Unassigned') AS teacher_name
FROM
    classes c
LEFT JOIN
    teachers t
ON c.teacher_id = t.teacher_id;