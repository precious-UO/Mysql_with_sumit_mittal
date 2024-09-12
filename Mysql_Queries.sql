-- ------------------------------------------------- MYSQL BY SUMIT MITTAL --------------------------------------------------------------------------------------------------

-- SHOW DATABASES;
-- CREATE DATABASE IF NOT EXISTS trendyTech;
-- SHOW DATABASES;
-- DROP DATABASE IF EXISTS trendyTech;
-- CREATE DATABASE IF NOT EXISTS trendyTech;
-- USE trendyTech;
-- CREATE TABLE IF NOT EXISTS employee (
	-- Name VARCHAR(50),
    -- Age INT,
    -- Salary INT
-- );
-- SHOW TABLES;
-- DESC employee;
-- DROP TABLE IF EXISTS employee;

-- ================================================= CREATING A DATABASE AND USING IT ========================================
-- CREATE DATABASE IF NOT EXISTS trendytech;
USE trendytech;

-- =================================== CREATING A TABLE AND INSERTING VALUES INTO THE TABLE ===============================================
-- CREATE TABLE IF NOT EXISTS employee (
	-- emp_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	-- First_name VARCHAR(50) NOT NULL,
    -- Middle_name VARCHAR(50),
    -- Last_name VARCHAR(50) NOT NULL,
    -- Age INT NOT NULL,
    -- Salary INT NOT NULL,
    -- Location VARCHAR(50) NOT NULL DEFAULT 'Bangalore'
-- );

-- INSERT INTO employee (First_name, Last_name, Age, Salary) 
-- VALUES ('Kapil', 'Sharma', 28, 10000);
-- INSERT INTO employee (First_name, Last_name, Age, Salary, Location) 
-- VALUES ('Satish', 'Sharma', 28, 10000, 'Hyderabad');
-- INSERT INTO employee (First_name, Last_name, Age, Salary, Location) 
-- VALUES ('Rajesh', 'Sharma', 28, 20000, 'Bangalore');
-- INSERT INTO employee (First_name, Middle_name, Last_name, Age, Salary, Location) 
-- VALUES ('Rajesh', 'Human', 'Sharma', 28, 20000, 'Bangalore');

-- =============================================== FILTERING DATA IN A TABLE ========================================================================================================
-- SELECT *
-- FROM employee;

-- SELECT First_name, Last_name
-- FROM employee;

-- SELECT *
-- FROM employee
-- WHERE age > 29;

-- SELECT *
-- FROM employee
-- WHERE BINARY First_name = 'Mannesh';

-- SELECT Location AS Country
-- FROM employee
-- WHERE Age <= 28;

-- SHOW TABLES;
-- SELECT *
-- FROM students;

-- DISTINCT
-- SELECT DISTINCT location
-- FROM students;

-- SELECT DISTINCT Student_company
-- FROM students;

-- SELECT DISTINCT Source_of_joining
-- FROM students;


--  ORDER BY
-- SELECT Student_fname, Student_lname, Student_email, Student_phone, Years_of_exp, Student_company, Batch_date, Source_of_joining, Location
-- FROM students
-- ORDER BY Years_of_exp;

-- SELECT Student_fname
-- FROM students
-- ORDER BY Years_of_exp;

-- SELECT Student_fname, Years_of_exp
-- FROM students
-- ORDER BY Years_of_exp DESC;


-- LIMIT
-- SELECT Student_fname, Student_lname, Student_email, Student_phone, Years_of_exp, Student_company, Batch_date, Source_of_joining, Location
-- FROM students
-- ORDER BY Years_of_exp DESC
-- LIMIT 3;

-- SELECT Source_of_joining
-- FROM students
-- ORDER BY enrollmemnt_date DESC
-- LIMIT 5;

-- SELECT *
-- FROM students;

-- SELECT Student_fname, Enrollment_date, Years_of_exp, Student_company, Batch_date, Source_of_joining, Location
-- FROM students
-- ORDER BY Enrollment_date DESC
-- LIMIT 3;

-- SELECT *
-- FROM students
-- ORDER BY Enrollment_date
-- LIMIT 0,3; (0 Represents the first row, so this will bring out rows starting from the first row to the third row. it is equivalent to LIMIT 3)

-- SELECT *
-- FROM students
-- ORDER BY Enrollment_date
-- LIMIT 3, 2; (3 Represents the fourth row, so this will bring out rows starting from the fourth row and an additional one row).


-- LIKE
-- SELECT Student_id, Enrollment_date, Selected_course, Student_fname, Years_of_exp, Student_company, Batch_date, Source_of_joining, Location
-- FROM students
-- WHERE Student_fname
-- LIKE '%ra%';

-- LIKE
-- SELECT Student_id, Enrollment_date, Selected_course, Student_fname, Years_of_exp, Student_company, Batch_date, Source_of_joining, Location
-- FROM students
-- WHERE Student_fname
-- LIKE 'ra%';

-- LIKE
-- SELECT Student_id, Enrollment_date, Selected_course, Student_fname, Years_of_exp, Student_company, Batch_date, Source_of_joining, Location
-- FROM students
-- WHERE Student_fname
-- LIKE '%at';

-- LIKE
-- SELECT Student_id, Enrollment_date, Selected_course, Student_fname, Years_of_exp, Student_company, Batch_date, Source_of_joining, Location
-- FROM students
-- WHERE Student_fname
-- LIKE '_a%'; 

-- ------------------- AGRREGATE FUNCTIONS -----------------------
-- COUNT()
-- SELECT COUNT(*)
-- FROM students;

-- SELECT COUNT(DISTINCT student_company)
-- FROM students;

-- SELECT COUNT(DISTINCT Location)
-- FROM students;

-- SELECT COUNT(DISTINCT Source_of_joining)
-- FROM students;

-- SELECT COUNT(*)
-- FROM students
-- WHERE batch_date LIKE '%-02-%';

-- GROUP BY ------------------------------------
-- SELECT Source_of_joining, COUNT(*)
-- FROM students
-- GROUP BY Source_of_joining;

-- SELECT Location, COUNT(*)
-- FROM students
-- GROUP BY Location;

-- SELECT Location, Source_of_joining, COUNT(*)
-- FROM students
-- GROUP BY Location, Source_of_joining;

-- SELECT Batch_date, Selected_course, COUNT(*)
-- FROM students
-- GROUP BY Batch_date, Selected_course;

-- MIN AND MAX ---------------------
-- SELECT MIN(Years_of_exp)
-- FROM students;

-- SELECT MAX(Years_of_exp)
-- FROM students;

-- ============================================== UPDATING VALUES IN A TABLE =====================================================

-- UPDATE employee
-- SET First_name = 'Maneesh', Last_name = 'Sinha'
-- WHERE emp_id = 3;

-- UPDATE employee
-- SET First_name = 'Rajesh', Last_name = 'Sharma'
-- WHERE emp_id = 1;

-- UPDATE employee
-- SET Age = 32, Salary = 30000
-- WHERE emp_id = 3;

-- UPDATE employee
-- SET First_name = 'Kapil', Last_name = 'Sharma', Age = 30, Salary = 20000
-- WHERE emp_id = 2;

-- UPDATE employee
-- SET Salary = Salary + 5000;

-- UPDATE employee
-- SET Location = 'Bangalore' 
-- WHERE First_name = 'Kapil' And Last_name = 'Sharma';

-- UPDATE courses
-- SET course_duration_months = 6.5
-- WHERE course_id = 1;

-- UPDATE courses
-- SET course_duration_months = 3.5
-- WHERE course_id = 2;

-- UPDATE courses
-- SET Course_duration_months = 6
-- WHERE Course_id = 3;

-- UPDATE courses
-- SET course_fee = 40000
-- WHERE course_name = 'Web development';


select *
FROM courses;

-- ============================================== DELETING VALUES IN A TABLE ======================================================

 -- DELETE
 -- FROM employee
 -- WHERE emp_id = 3;
 
 -- DELETE
 -- FROM courses
 -- WHERE Course_id = 4;
 
-- ============================================= MODIFYING TABLE AND TABLE COLUMNS =================================================
-- ALTER TABLE employee 
-- ADD COLUMN Job_title VARCHAR(50) NOT NULL;

-- ALTER TABLE employee
-- DROP COLUMN Job_title;

-- ALTER TABLE employee
-- MODIFY COLUMN First_name VARCHAR(100);

-- ALTER TABLE employee
-- ADD COLUMN Email VARCHAR(100);

-- ALTER TABLE employee
-- ADD UNIQUE KEY(email);

-- ALTER TABLE courses 
-- MODIFY COLUMN course_duration_months DECIMAL(3,1) NOT NULL;

-- ALTER TABLE courses
-- MODIFY COLUMN Changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE NOW();

-- select *
-- FROM courses;

-- ================================================ FOREIGN KEY CONSTRAINTS ===============================================================

-- CREATE TABLE IF NOT EXISTS students (
	-- Student_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    -- Student_fname VARCHAR(50) NOT NULL,
    -- Student_lname VARCHAR(50) NOT NULL,
    -- Student_mname VARCHAR(50),
    -- Student_email VARCHAR(100) UNIQUE KEY NOT NULL,
    -- Student_phone VARCHAR(20) NOT NULL,
    -- Student_alternate_phone VARCHAR(20),
    -- Enrollment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -- Years_of_exp INT NOT NULL,
    -- Student_company VARCHAR(50),
    -- Batch_date VARCHAR(30) NOT NULL,
    -- Source_of_joining VARCHAR(50) NOT NULL,
    -- Location VARCHAR(50) NOT NULL
-- );

-- DESC students;

-- INSERT INTO 
-- students (Student_fname, Student_lname, Student_email, Student_phone, Years_of_exp, Student_company, Batch_date, Source_of_joining, Location)
-- VALUES
-- ('Rohit', 'Sharma', 'rohit@gmail.com', '9191919191', 6, 'Walmart', '5-02-2021', 'Linkedin', 'Bangalore'),
-- ('Virat', 'Kohli', 'virat@gmail.com', '9292929292', 3, 'Flipkart', '5-02-2021', 'Linkedin', 'Hyderabad');

-- INSERT INTO 
-- students (Student_fname, Student_lname, Student_email, Student_phone, Years_of_exp, Batch_date, Source_of_joining, Location)
-- VALUES
-- ('Shikhar', 'Dhawan', 'shikhar@gmail.com', '9393939393', 12, '19-02-2021', 'Google', 'Bangalore');

-- INSERT INTO 
-- students (Student_fname, Student_lname, Student_email, Student_phone, Years_of_exp, Student_company, Batch_date, Source_of_joining, Location)
-- VALUES
-- ('Rahul', 'Dravid', 'rahul@gmail.com', '9494949494', 8, 'Walmart', '19-02-2021', 'Quora', 'Chennai');

-- INSERT INTO 
-- students (Student_fname, Student_lname, Student_email, Student_phone, Years_of_exp, Student_company, Batch_date, Source_of_joining, Location)
-- VALUES
-- ('Kapil', 'Dev', 'kapil@gmail.com', '9291292292', 15, 'Microsoft', '5-02-2021', 'Friend', 'Pune'),
-- ('Brian', 'Lara', 'brian@gmail.com', '9291297292', 18, 'TCS', '5-02-2021', 'Youtube', 'Pune'),
-- ('Carl', 'Hooper', 'carl@gmail.com', '9291297392', 20, 'Wipro', '19-02-2021', 'Youtube', 'Pune'),
-- ('Saurabh', 'Ganguly', 'saurabh@gmail.com', '9291297492', 14, 'Wipro', '19-02-2021', 'Google', 'chennai');

-- CREATE TABLE IF NOT EXISTS courses (
	-- course_id INT PRIMARY KEY NOT NULL,
    -- course_name VARCHAR(50) NOT NULL,
    -- course_duration_months INT NOT NULL,
    -- course_fee INT NOT NULL
-- );

-- INSERT INTO courses
-- VALUES
-- (1, 'Big data', 6, 50000),
-- (2, 'Web development', 3, 20000),
-- (3, 'Data science', 6, 40000),
-- (4, 'Devops', 1, 10000);
-- SELECT Student_fname, Student_lname, Student_email, Student_phone, Years_of_exp, Student_company, Batch_date, Source_of_joining, Location
-- FROM students;

-- ALTER TABLE students ADD COLUMN Selected_course INT NOT NULL DEFAULT 1;

-- UPDATE students
-- SET Selected_course = 2
-- WHERE Student_id = 1;

-- UPDATE students
-- SET Selected_course = 3
-- WHERE Student_id = 3;

-- ALTER TABLE students ADD CONSTRAINT fk_selected_course FOREIGN KEY (selected_course) REFERENCES courses (course_id);
-- DESC students;

-- SELECT Student_fname, Student_lname, Student_email, Student_phone, Selected_course, Years_of_exp, Student_company, Batch_date, Source_of_joining, Location
-- FROM students; 

-- SELECT *
-- FROM courses;

-- ================================================================ FILTERING DATA WITH LOGICAL OPERATORS =====================================================

-- SELECT *
-- FROM students
-- WHERE Location = 'Bangalore';

-- SELECT *
-- FROM students
-- WHERE Location != 'Bangalore';

-- SELECT *
-- FROM courses
-- WHERE course_name LIKE '%data%';

-- SELECT *
-- FROM courses
-- WHERE course_name NOT LIKE '%data%';

-- SELECT Student_id, Student_fname, Student_lname, Years_of_exp, Student_company, Location, Source_of_joining
-- FROM students
-- WHERE Location = 'Bangalore' AND Source_of_joining = 'Linkedin' AND Years_of_exp < 8;

-- SELECT Student_id, Student_fname, Student_lname, Years_of_exp, Student_company, Location, Source_of_joining
-- FROM students
-- WHERE Years_of_exp >= 8 AND Years_of_exp <= 12;

-- SELECT Student_id, Student_fname, Student_lname, Years_of_exp, Student_company, Location, Source_of_joining
-- FROM students
-- WHERE Years_of_exp BETWEEN 8 AND 12;

-- SELECT Student_id, Student_fname, Student_lname, Years_of_exp, Student_company, Location, Source_of_joining
-- FROM students
-- WHERE Years_of_exp NOT BETWEEN 8 AND 12;

-- SELECT Student_id, Student_fname, Student_lname, Years_of_exp, Student_company, Location, Source_of_joining
-- FROM students
-- WHERE Student_company = 'Walmart' OR Student_company = 'Flipkart' OR Student_company = 'Microsoft';