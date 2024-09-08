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
