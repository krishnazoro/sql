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

-- DISTINCT

SELECT DISTINCT job_desc FROM company;

-- ORDER BY

SELECT * FROM company
ORDER BY stfname;

SELECT * FROM company
ORDER BY stfname DESC;

SELECT * FROM company
ORDER BY salary,stfname;

SELECT * FROM company
Where job_desc="manager" 
ORDER BY salary;

SELECT * FROM company
ORDER BY ( CASE job_desc
When "manager" THEN 1
WHEN "ceo" THEN 2
WHEN "developer" THEN 3
ELSE 100 END

);










