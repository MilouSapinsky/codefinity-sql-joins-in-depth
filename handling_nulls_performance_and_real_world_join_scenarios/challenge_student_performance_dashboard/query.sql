-- Write your code here
SELECT
    s.name            AS student_name,
    c.class_name      AS class_name,
    t.name            AS teacher_name,
    AVG(g.score)      AS average_grade
FROM
    students s
    LEFT JOIN classes  c ON s.class_id   = c.class_id
    LEFT JOIN teachers t ON c.teacher_id = t.teacher_id
    LEFT JOIN grades   g ON s.student_id = g.student_id
GROUP BY
    s.student_id,
    s.name,
    c.class_name,
    t.name;