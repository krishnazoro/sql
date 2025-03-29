use program;

CREATE TABLE IF NOT EXISTS branch(
brch_id INT PRIMARY KEY AUTO_INCREMENT,
brchname VARCHAR(30) NOT NULL,
addr VARCHAR(300)); 


CREATE TABLE IF NOT EXISTS factory(
stf_id INT PRIMARY KEY AUTO_INCREMENT,
stfname VARCHAR(30) NOT NULL,
job_desc VARCHAR(30),
salary INT,
brch_id INT,
CONSTRAINT fk_branchid FOREIGN KEY (branch_id) REFERENCES branch(brch_id)
); 

DROP TABLE branch;

DROP TABLE factory;

CREATE TABLE IF NOT EXISTS branch(
brch_id INT PRIMARY KEY AUTO_INCREMENT,
brchname VARCHAR(30) NOT NULL,
addr VARCHAR(300)); 


CREATE TABLE IF NOT EXISTS factory(
stf_id INT PRIMARY KEY AUTO_INCREMENT,
stfname VARCHAR(30) NOT NULL,
job_desc VARCHAR(30),
salary INT,
brch_id INT,
CONSTRAINT fk_brchid FOREIGN KEY (brch_id) REFERENCES branch(brch_id)
); 

ALTER TABLE factory
DROP FOREIGN KEY fk_brchid;

SELECT * FROM factory;