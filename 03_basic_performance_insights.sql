

-- Q1. Show all students with their courses and marks
SELECT 
    s.student_id,
    s.name,
    s.department,
    c.course_name,
    e.marks
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id;

-- Q2. Find average CGPA department-wise
SELECT 
    department,
    ROUND(AVG(cgpa), 2) AS avg_cgpa
FROM students
GROUP BY department;

-- Q3. Find top-performing students (CGPA ≥ 9)
SELECT 
    student_id,
    name,
    department,
    cgpa
FROM students
WHERE cgpa >= 9;
