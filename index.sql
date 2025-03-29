USE program;

DROP TABLE employee;

CREATE TABLE  IF NOT EXISTS employee(
stf_id INT PRIMARY KEY AUTO_INCREMENT,
stfname VARCHAR(30) NOT NULL,
job_desc VARCHAR(30),
salary INT,
pan VARCHAR(20) UNIQUE
);



SHOW INDEX FROM employee;

CREATE INDEX name_index ON employee(stfname);

ALTER TABLE employee
DROP INDEX name_index;

ALTER TABLE employee
ADD INDEX (stfname);
 

SELECT * FROM employee;

-- In index there use descending index 
-- In index there use full text index 
 
