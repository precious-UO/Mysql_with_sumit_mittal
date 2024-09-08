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
CREATE TABLE IF NOT EXISTS employee (
	First_name VARCHAR(50) NOT NULL,
    Middle_name VARCHAR(50),
    Last_name VARCHAR(50) NOT NULL,
    Age INT NOT NULL,
    Salary INT NOT NULL,
    Location VARCHAR(50) NOT NULL
);
-- DESC employee;

-- INSERT INTO employee (First_name, Middle_name, Last_name, Age, Salary, Location) 
-- VALUES ('Kapil', 'Kumar', 'Sharma', 28, 10000, 'Bangalore');
-- INSERT INTO employee (First_name, Middle_name, Last_name, Age, Salary, Location) 
-- VALUES ('Satish', 'Kumar', 'Sharma', 28, 10000, 'Bangalore');
-- INSERT INTO employee (First_name, Last_name, Age, Salary, Location) 
-- VALUES ('Rajesh', 'Sharma', 28, 20000, 'Bangalore');


SELECT *
FROM employee;

