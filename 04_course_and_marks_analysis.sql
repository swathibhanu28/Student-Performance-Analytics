-- ============================================
-- COURSE DIFFICULTY & MARKS ANALYSIS
-- ============================================

--  average marks for each course
SELECT 
    c.course_name,
    ROUND(AVG(e.marks), 2) AS avg_marks
FROM courses c
JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name;

--  students who scored below course average
SELECT 
    s.name,
    c.course_name,
    e.marks
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id
WHERE e.marks < (
    SELECT AVG(e2.marks)
    FROM enrollments e2
    WHERE e2.course_id = e.course_id
);

