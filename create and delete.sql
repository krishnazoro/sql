CREATE DATABASE krishna;

SHOW DATABASES;

USE program;

CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(30),
    gap DECIMAL(3,2)  -- I wrongly print gpa as gap i don't know how change it.
);

DESCRIBE student;

DROP TABLE student; -- Don't drop the table

ALTER TABLE student ADD department VARCHAR(20);

ALTER TABLE student DROP department;

INSERT INTO student VALUES(1, "krishna", 8.03);
INSERT INTO student VALUES(2, "kumar", 9.03);

-- Even we can type like this when we multiple values to insert

INSERT INTO student VALUES(3, "RAJ", 7.03),
(4, "star", 6.03);

-- When we have only few values to insert 
INSERT INTO student(id, name) VALUES(5, "karan");

SELECT * FROM student;

-- When we need display few values

SELECT id, name FROM student;









