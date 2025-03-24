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

ALTER TABLE company ADD Hire_date DATE;

UPDATE company
SET Hire_date= "2002-04-27";

UPDATE company
SET Hire_date= "2012-06-29"
WHERE job_desc= "manager";

SELECT * FROM company;

SELECT NOW();

SELECT DATE(NOW());

SELECT CURDATE();

SELECT DATE_FORMAT(CURDATE(), "%d/%m/%y")DATE;

SELECT DATEDIFF(CURDATE(),"2024/04/15")DAYS;

SELECT DATE_ADD(CURDATE(), INTERVAL 1 DAY) After_one_day;

SELECT DATE_ADD(CURDATE(), INTERVAL 1 WEEK) After_one_week;

SELECT DATE_ADD(CURDATE(), INTERVAL 1 MONTH) After_one_month;

SELECT DATE_ADD(CURDATE(), INTERVAL 1 YEAR) After_one_year;


