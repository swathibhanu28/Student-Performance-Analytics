-- Sample Data Insertion

INSERT INTO students
(student_id, name, department, year, cgpa)
VALUES
(101, 'Steve', 'MECH', 4, 9.12),
(102, 'Mike', 'ECE', 3, 8.17),
(103, 'Richa', 'CSE', 2, 6.14),
(104, 'Anita', 'CSE', 4, 9.45),
(105, 'Rahul', 'ECE', 1, 7.80);


INSERT INTO courses
(course_id, course_name, department, credits)
VALUES
(3021, 'PowerBI', 'MECH', 4),
(3022, 'Web_Design', 'ECE', 3),
(3023, 'AI', 'CSE', 5),
(3024, 'AI', 'CSE', 4);


INSERT INTO enrollments
(enrollment_id, student_id, course_id, semester, marks)
VALUES
(1, 101, 3021, 4, 78),   
(2, 101, 3024, 4, 82),   
(3, 102, 3022, 3, 74),   
(4, 103, 3023, 2, 69),   
(5, 104, 3023, 4, 91),   
(6, 105, 3022, 1, 65);  



-- Basic SELECT Queries

SELECT * FROM students;

SELECT * FROM students
WHERE department = 'CSE';
