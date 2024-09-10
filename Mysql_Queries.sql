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

-- ============================================== DELETING VALUES IN A TABLE ======================================================

 -- DELETE
 -- FROM employee
 -- WHERE emp_id = 3;
 
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

SELECT Student_fname, Student_lname, Student_email, Student_phone, Years_of_exp, Student_company, Batch_date, Source_of_joining, Location
FROM students;
