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

-- GROUP BY

SELECT job_desc,AVG(salary) FROM company
GROUP BY job_desc;

SELECT job_desc,COUNT(stf_id) FROM company
GROUP BY job_desc;

SELECT job_desc,MIN(salary) FROM company
GROUP BY job_desc;

-- HAVING

SELECT job_desc,COUNT(stf_id) FROM company
GROUP BY job_desc
HAVING COUNT(stf_id) >1;

SELECT job_desc,COUNT(stf_id) FROM company
GROUP BY job_desc
HAVING COUNT(stf_id) >1
ORDER BY job_desc;






