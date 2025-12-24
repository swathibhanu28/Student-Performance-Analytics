
-- Q6. Find top scorer in each course
SELECT 
    c.course_name,
    s.name,
    e.marks
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id
WHERE e.marks = (
    SELECT MAX(e2.marks)
    FROM enrollments e2
    WHERE e2.course_id = e.course_id
);

-- Q7. Find students performing below department average CGPA
SELECT 
    s.student_id,
    s.name,
    s.department,
    s.cgpa
FROM students s
WHERE s.cgpa < (
    SELECT AVG(s2.cgpa)
    FROM students s2
    WHERE s2.department = s.department
);
