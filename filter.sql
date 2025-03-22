USE program;

CREATE TABLE employee(
emp_id INT PRIMARY KEY,
ename VARCHAR(30),
job_desc VARCHAR(30),
salary INT
);

INSERT INTO employee VALUES(1, "krish","ceo",100000);
INSERT INTO employee VALUES(2, "krishna","head",90000);
INSERT INTO employee VALUES(3, "kumar","manager",80000);
INSERT INTO employee VALUES(4, "rajini","hr",70000);
INSERT INTO employee VALUES(5, "surya","TL",40000);
INSERT INTO employee VALUES(6, "surya","Fresher",1000);
INSERT INTO employee VALUES(7, "surya","admin",60000);
INSERT INTO employee VALUES(8, "gajini","sales",40000);
INSERT INTO employee VALUES(9, "hero","sales",30000);
INSERT INTO employee VALUES(10, "surya","intern",700);
INSERT INTO employee VALUES(11, "siril","employee",10000); 

SELECT * FROM employee;

SELECT * FROM employee
WHERE ename="surya";

 SELECT * FROM employee
WHERE salary > 40000 AND job_desc="hr"; 

SELECT * FROM employee
WHERE job_desc= "sales" OR job_desc="hr"; 

SELECT * FROM employee
WHERE NOT job_desc= "manager";

SELECT * FROM employee
WHERE job_desc IN("hr", "sales");

SELECT * FROM employee
WHERE job_desc NOT IN ("hr", "sales");

SELECT * FROM employee
WHERE salary BETWEEN 1000 AND 90000;

SELECT * FROM employee
LIMIT 6;

SELECT * FROM employee
WHERE ename LIKE 'S%';

SELECT * FROM employee
WHERE ename LIKE 'S%a';

SELECT * FROM employee
WHERE ename LIKE '%s%';

SELECT * FROM employee
WHERE ename LIKE '__i%';

UPDATE employee
SET job_desc="Analyst"
WHERE job_desc="sales"; 

SELECT * FROM employee;

DELETE FROM employee
WHERE emp_id=3;



