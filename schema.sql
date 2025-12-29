-- Student Performance Analytics
-- Schema Creation

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    department VARCHAR(30) NOT NULL,
    year INT,
    cgpa DECIMAL(4,2) DEFAULT 0.00,
    CHECK (cgpa BETWEEN 0 AND 10)
);


CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(30) NOT NULL,
    department VARCHAR(30) NOT NULL,
    credits INT DEFAULT 0,
    CHECK (credits BETWEEN 1 AND 5)
);


CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    semester INT,
    marks INT,
    CHECK (marks BETWEEN 0 AND 100),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);