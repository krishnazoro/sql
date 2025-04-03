USE program;



DROP TABLE branch;

Drop TABLE factory; 



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

INSERT INTO branch VALUES(1,"Chennai","16 ABC Road");
INSERT INTO branch VALUES(2,"Coimbatore","120 15th Block");
INSERT INTO branch VALUES(3,"Mumbai","25 XYZ Road");
INSERT INTO branch VALUES(4,"Hydrabad","32 10th Street");

INSERT INTO factory VALUES(1,'Ram','ADMIN',1000000,2);
INSERT INTO factory VALUES(2,'Harini','MANAGER',2500000,2);
INSERT INTO factory VALUES(3,'George','SALES',2000000,1);
INSERT INTO factory VALUES(4,'Ramya','SALES',1300000,2);
INSERT INTO factory VALUES(5,'Meena','HR',2000000,3);
INSERT INTO factory VALUES(6,'Ashok','MANAGER',3000000,1);
INSERT INTO factory VALUES(7,'Abdul','HR',2000000,1);
INSERT INTO factory VALUES(8,'Ramya','ENGINEER',1000000,2);
INSERT INTO factory VALUES(9,'Raghu','CEO',8000000,3);
INSERT INTO factory VALUES(10,'Arvind','MANAGER',2800000,3);
INSERT INTO factory VALUES(11,'Akshay','ENGINEER',1000000,1);
INSERT INTO factory VALUES(12,'John','ADMIN',2200000,1);
INSERT INTO factory VALUES(13,'Abinaya','ENGINEER',2100000,2);
INSERT INTO factory VALUES(14,'Vidya','ADMIN',2200000,NULL);
INSERT INTO factory VALUES(15,'Ranjani','ENGINEER',2100000,NULL);

SELECT * FROM factory;
SELECT * FROM branch;

-- SELECT factory.stf_id,factory.stfname,factory.job_desc,branch.brchname
-- FROM factory
-- INNER JOIN branch
-- ON factory.brch_id = branch.brch_id
-- ORDER BY factory.stf_id;

SELECT factory.stf_id,factory.stfname,factory.job_desc,branch.brchname
FROM factory
RIGHT JOIN branch
ON factory.brch_id = branch.brch_id
ORDER BY factory.stf_id;

SELECT factory.stf_id,factory.stfname,factory.job_desc,branch.brchname
FROM factory
LEFT JOIN branch
ON factory.brch_id = branch.brch_id
ORDER BY factory.stf_id;

-- we can give short word for table name

SELECT f.stf_id,f.stfname,f.job_desc,b.brchname
FROM factory as f
INNER JOIN branch as b
ON f.brch_id = b.brch_id
ORDER BY f.stf_id;

-- we can use inner join without using inner join

SELECT factory.stf_id,factory.stfname,factory.job_desc,branch.brchname
FROM factory,branch
WHERE factory.brch_id = branch.brch_id
ORDER BY factory.stf_id;

SELECT factory.stf_id,factory.stfname,factory.job_desc,branch.brchname
FROM factory
CROSS JOIN branch
ORDER BY factory.stf_id;

-- counting no.of branch name and factory count

SELECT b.brchname, COUNT(f.stf_id) no_of_factory
FROM branch as b
JOIN factory as f
ON b.brch_id = f.brch_id
ORDER BY f.brch_id;
