USE program;

CREATE TABLE company(
stf_id INT PRIMARY KEY,
stfname VARCHAR(30),
job_desc VARCHAR(30),
salary INT
);

INSERT INTO company VALUES(1, "krishna", "head", 100000);
INSERT INTO company VALUES(2, "krish", "ceo", 90000);
INSERT INTO company VALUES(3, "kumar", "manager", 70000);
INSERT INTO company VALUES(4, "shewatha", "manager", 70000);
INSERT INTO company VALUES(5, "rohit", "tl", 60000);
INSERT INTO company VALUES(6, "dolu", "developer", 50000);
INSERT INTO company VALUES(7, "bolu", "tester", 50000);
INSERT INTO company VALUES(8, "rajesh", "sales", 40000);
INSERT INTO company VALUES(9, "kamalesh", "sales", 30000);

SELECT * FROM company;

-- by using numbers

SELECT COUNT(*) Total FROM company;

SELECT COUNT(*) Total_no_of_sales FROM company
WHERE job_desc="sales";

SELECT SUM(salary) Total_of_salary FROM company;

SELECT SUM(salary) Total_of_salary FROM company
WHERE job_desc="manager";

SELECT MAX(salary) max_salary FROM company;

SELECT MIN(salary) max_salary FROM company;

-- By using string

SELECT UCASE(stfname) name,salary 
FROM company;

SELECT stfname,CHAR_LENGTH(stfname) char_count
FROM company;

SELECT stfname,CONCAT('RS.',FORMAT(salary,0))salary FROM company;

SELECT stfname,LEFT(job_desc,3) job_desc FROM company;

-- TO learn more about the functions "Tech on the net"






