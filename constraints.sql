use program;

DROP TABLE IF EXISTS factory;

CREATE TABLE IF NOT EXISTS factory(
stf_id INT PRIMARY KEY AUTO_INCREMENT,
stfname VARCHAR(30) NOT NULL,
job_desc VARCHAR(30) DEFAULT 'unasssigned',
salary INT,
pan VARCHAR(20) UNIQUE,
CHECK (salary>50000)  
);

INSERT INTO factory(stfname, salary) VALUES ("Krishna",90000); 
INSERT INTO factory(stfname, salary) VALUES ("Krish Kumar",70000);

DROP TABLE IF EXISTS factory;

CREATE TABLE IF NOT EXISTS factory(
stf_id INT PRIMARY KEY,
stfname VARCHAR(30),
job_desc VARCHAR(30),
salary INT
);


INSERT INTO factory(stfname, salary) VALUES ("Krishna",90000); 
INSERT INTO factory(stfname, salary) VALUES ("Krish Kumar",70000);


-- ADD NOT NULL CONSTRAINT 
ALTER TABLE factory
MODIFY stfname VARCHAR(30) NOT NULL;

-- DROP NOT NULL CONSTRAINT
ALTER TABLE factory
MODIFY stfname VARCHAR(30);

-- ADD DEFAULT CONSTRAINTS
ALTER TABLE factory
MODIFY job_desc VARCHAR(30) DEFAULT 'UNASSIGNED';

-- DROP DEFAULT CONSTRAINTS
ALTER TABLE factory
ALTER job_desc DROP DEFAULT;

-- ADD CHECK CONSTRAINTS
ALTER TABLE factory
ADD CONSTRAINT check_salary CHECK(salary > 50000);

-- DROP CHECK CONSTRAINTS
ALTER TABLE factory
DROP CHECK check_salary;

SELECT * FROM factory;

