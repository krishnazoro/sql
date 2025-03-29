# Definintion

1. SQL stands for Structured Query Language.

2. SQL is a standard language for accessing and manipulating databases.

# What is SQL?

1. SQL lets you access and manipulate databases

2. SQL became a standard of the American National Standards Institute (ANSI) in 1986, and of the    International Organization for Standardization (ISO) in 1987.

# What SQL can do?

1. SQL can execute queries against a database.

2. SQL can retrieve data from a database.

3. SQL can insert records in a database.

4. SQL can update records in a database.

5. SQL can delete records from a database.

6. SQL can create new databases.

7. SQL can create new tables in a database.

8. SQL can create stored procedures in a database.

9. SQL can create views in a database.

10. SQL can set permissions on tables, procedures, and views.

# Types of databases

1. We can store databases in various methods.They are

- Relational database: In this database we store in the table.The example databases are MySQL, Oracle, PostgreSQL and SQL server.

- NoSQL database: They are not purely SQL database they unstructred or semi structred database are schema less.The examples are MangoDB, Cassandra, etc..

- Object-Relational Databases: A hybrid of relational databases and object-oriented programming. They allow storage of objects and inheritance. Example: PostgreSQL (supports this).

- Distributed Databases: The data is distributed across multiple locations and is managed through a centralized or decentralized system. Example: Google Spanner.

- In-Memory Databases: Store data in a system's memory (RAM) rather than on disk for faster processing. Example: Redis.

- Columnar Databases: Designed for analytical queries, where data is stored in columns instead of rows. Example: Amazon Redshift.

- Graph Databases: Focus on managing relationships between data using nodes and edges. Example: Neo4j.

# How to see what are the databases in sql

1. Query for to see what are the databases available: SHOW DATABASES; 

# Comment

1. /*  */ - use this symbols for multi comments.

2. --  - Use this symbols for Single comments.

# Datatypes

1. Use capital letters for the keywords but it is not mandatory but use like that.The example of keywords are character, etc..

## CHAR(3): 

1. We must 3 characters like "ARM" if you didn't three character the empty spaces are occupied by spaces like "A  ". 

2. In CHAR we can store maximum 255 bytes.

4. "Show character set;" is used to display a character set.

3. The sql has various character set the character set means various language and symbols and the default character set is latin.

5. Query for character set: Show character set;

## VARCHAR(5):

1. we can give Maximum 5 character but it's not mandatory even we 1 character the remaining space should not occupied by a spaces.

2. In VARCHAR we can store maximum 65535 bytes and we need more we can use TEXT and blob.

4. "Show character set;" is used to display a character set.

5. We can use different character set language by use UTF 8.

## NUMERICAL

1. If we want to store the numeric we can use int and we store the decimel we want to use decimal(5,2) it store like 999,99.

2. The decimel numers has two Types

- Float(p,s)

- Double(p,s)

3. p is a precision and s is a scale.

4. Even we can store a temporal data like

- Date - YYYY-MM-DD

- Datetime - YYYY-MM-DD HH-MI-SS

- Timestamp - YYYY-MM-DD HH-MI-SS

- Year - YYYY

- Time - HHH-MI-SS

# DBMS(MySQL is a company name)

1. SQL can't directly handle the database so we use DBMS.

2. It is interface between database and end user.

3. By using DBMS we can store, retrieve, define and manage data in database.

4. By using DBMS we can handle crud operation(create, read, update, delete).

5. By using DBMS take care of authentiction, concurrency, logging, backup, optimization etc...

# PRIMARY KEY 

1. If we create a table the primary key is used as a part, In primary key we should repeat a word again.

# DDL(DATA DEFINED LANGUAGE)

1. DDL stands for Data Definition Language in SQL. 

2. It is a subset of SQL commands used to define and manage the structure of a database. 

3. These commands affect the database schema and are primarily used for creating, altering, and deleting database objects like tables, indexes, and views.

4. Some commonly used DDL commands include:

## CREATE

- Used to create new database objects such as tables, indexes, or views.

- Query for CREATE: CREATE database kumar;

## ALTER

- Used to modify the structure of an existing database object, like adding or dropping columns in a table.

- Query for ALTER to add: ALTER TABLE table name ADD department VARCHAR(10);

- Query for ALTER to delete: ALTER TABLE table name DROP depertment;

## DROP

- Used to delete database objects such as tables or views.

- Query for DROP: DROP database table name;

## TRUNCATE

- Used to delete all rows in a table while preserving its structure.

## DATABASE IF EXISTS

- If the database is already created or droped if we use again the query for create or drop it will show the error. So to avoid the error use this query.

- Query for CREATE if database exists: Create DATABASE IF EXIST kumar;

- Query for DROP if database exists: DROP DATABASE IF EXIST kumar;

5. DDL operations are usually auto-committed, meaning they take effect immediately and cannot be rolled back.

# DML(DATA MANIPULATION LANGUAGE)

1. DML stands for Data Manipulation Language in SQL. 

2. It is a subset of SQL commands used to manipulate and manage data stored in database tables.

3. These commands do not affect the structure of the database but work with the actual data within it.

4. Commonly used DML commands include:

## SELECT

- It used to display the data's inside the table. 

- Query for select(To display all data's and values): SELECT * FROM table name;

- Query for select(To display particular data's and values):SELECT id,name FROM table name;

## INSERT 

- It is used to insert a values for the table data's.

- We cannot insert a values randomly we need to insert a values Arrangement of data's.

- Query for insert single value: INSERT INTO table name VALUES(1, "Aarthi", 7.5);

- Query for insert multiple value: INSERT INTO table name VALUES(1, "Aarthi", 7.5),(2, "Krishna", 7.5);

- Query for insert particular data's: INSERT INTO table name(id,name) VALUES(3,"surya");

## UPDATE

- Modifies the values of table data's.

- Query for update: UPDATE employee
                    SET job_desc="Analyst"; 

- This Query will update everything when we set the value for the data.

- So if use WHERE that will modify the value which value we assign for the data.

- Query for update particular value for data: UPDATE employee
                                              SET job_desc="Analyst"
                                              WHERE job_desc="sales"; 

- We need to see a table result by using this query SELECT * FROM table name;.                                            

## DELETE

- Removes rows from a table.

- Query for delete: DELETE FROM employee
                    WHERE emp_id=3;

- We need to see a table result by using this query SELECT * FROM table name;.                                           
                    

5. DML commands are not auto-committed, meaning their changes can be rolled back if not explicitly committed. They are essential for interacting with and modifying the data within a database.

# DQL(DATA QUERY LANGUAGE)

1. It is a component of the SQL statement that allows getting data from the database and imposing order upon it.

2. It includes the SELECT statement.

3. This command allows getting the data out of the database to perform operations with it.

## SELECT

1. Select is used to fetch data's in the table and display the data's in the table formate

2. Query for select: SELECT * FROM table name;

# SQL WHERE CLAUSE

1. The WHERE clause is used to filter records.

2. It is used to extract only those records that fulfill a specified condition.

3. Query for where: select * FROM table name
                    WHERE ename="krishna";  

4. Where ename is a part of the table krishna is a value in a table.

5. Where displaying the ename who has the name of krishna.

6. We can use a AND, OR, NOT, IN, BETWEEN.

## AND

- In And function it satisfy two or more values.

- Query for the AND: SELECT * FROM employee
                     WHERE salary > 40000 AND job_desc="hr"; 

## OR

- In OR function it satisfy atleast one value.

- Query for the OR: SELECT * FROM employee
                    WHERE job_desc= "sales" OR job_desc="hr"; 

## NOT 

- In NOT function it reject the value we don't need and display others.

- Query for the NOT: SELECT * FROM employee
                     WHERE NOT job_desc= "manager"

## IN

- In IN function it is used for alternate of OR function and used with NOT function.

- Query for the IN: SELECT * FROM employee
                    WHERE job_desc IN("hr", "sales");

- This IN function used for alternate of OR function.

- Query for the NOT IN: SELECT * FROM employee
                        WHERE job_desc NOT IN ("hr", "sales");

## BETWEEN 

- In BETWEEN function it is used for between A and B.

- Query for BETWEEN: SELECT * FROM employee
                     WHERE salary BETWEEN 1000 AND 90000;

## LIMIT

- In LIMIT function it will display the limit of the numbers.

- Query for LIMIT: SELECT * FROM employee
                   LIMIT 6;

# LIKE

1. The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.

2. There are two wildcards often used in conjunction with the LIKE operator percentage and underscore.

3. The percent sign % represents zero, one, or multiple characters.
 
4. The underscore sign _ represents one, single character

## % percentage

- By using % we can find a word or name which alphabet order we want

- query for starting letter: SELECT * FROM employee
                         WHERE ename LIKE 'S%';

- Query for starting and ending letter: SELECT * FROM employee
                                    WHERE ename LIKE 'S%a'; 

- Query for middle letter: SELECT * FROM employee
                           WHERE ename LIKE '%s%';  

- Query for except starting and ending: SELECT * FROM employee
                                        WHERE ename LIKE'__i%';                                                                                                       
-  Query for % symbol as a string: SELECT * FROM employee
                                          WHERE ename LIKE '/%';                                                                                                  

# DISTINCT

1. The DISTINCT is display the values.

2. By using this value will not repeat again.

3. It is used with SELECT.

4. Query for the DISTINCT: SELECT DISTINCT Table data FROM Table name;

# ORDER BY

1. ORDER BY used to arrange the table data in ascending and descending order.

2. Even we can arrange it manually. 

3. Query for ORDER BY in ascending: SELECT * FROM Table name
                                    ORDER BY Table part;

4. Query for ORDER BY in ascending: SELECT * FROM Table name
                                    ORDER BY Table part DESC;

5. Query for ORDER BY in manually: SELECT * FROM company
                                   ORDER BY ( CASE job_desc
                                   When "manager" THEN 1
                                   WHEN "ceo" THEN 2
                                   WHEN "developer" THEN 3
                                   ELSE 100 END

                                   ); 

# Functions

1. Functions is defined as to finish specific part of the program.

2. Functions are various type method we can use but we going to use some specific task in numbers and strings.

3. In numbers we can count numbers of persons in the table data, sum of salary of persons in the table data, maximum salary of the salary in the table data and minimum salary in the table data.

- Query for numbers of persons in the table data: SELECT COUNT(*) Total FROM company;

- Query for numbers of specific person in the table data: SELECT COUNT(*) Total_no_of_sales FROM company
                                                          WHERE job_desc="sales";
                        
- Query for sum of salary: SELECT SUM(salary) Total_of_salary FROM company;
                        
- Query for specific person sum of salary: SELECT SUM(salary) Total_of_salary FROM company
                                           WHERE job_desc="manager";

- Query for maximum salary who get:SELECT MAX(salary) max_salary FROM company;

- Query for minimum salary who get:SELECT MIN(salary) min_salary FROM company;

4. In strings we can give specific case for specific data's,we can measure character length for specific data,we can rupees,euro like money name and round the salary in decimals and we can print specific numbers of characters in the table data.

- Query for specific case for specific data's: SELECT UCASE(stfname) name,salary FROM company;

- Query for measure character length for specific data: SELECT stfname,CHAR_LENGTH(stfname) char_count FROM company;

- Query for rupees,euro like money name and round the salary in decimals: SELECT stfname,CONCAT('RS.',FORMAT(salary,0))salary FROM    company;

- Query for print specific numbers of characters in the table data: SELECT stfname,LEFT(job_desc,3) job_desc FROM company;

 5. If you want learn more about the functions search in "Tech on the net". 

 # DATE 

 1. DATE function is used to give date, time, month and year to add data in the table.

 2. We can give date for the specific person, we can give current data, time, month and year, we can formate the date, we can see difference current date to past date or current date to future date, we can see tommorow date, month, time and year.

 - Querys for current time: SELECT NOW();, SELECT DATE(NOW());, SELECT CURDATE();.

 - Query for date for the specific person: ALTER TABLE company ADD Hire_date DATE
                                           UPDATE company
                                           SET Hire_date= "2012-06-29"
                                           WHERE job_desc= "manager";

 - Query for formate the date: SELECT DATE_FORMAT(CURDATE(), "%d/%m/%y")DATE;

 - Query for difference current date to past date or current date to future date: SELECT DATEDIFF(CURDATE(),"2024/04/15") DAYS;   

 - Query for tommorow date, month and year: SELECT DATE_ADD(CURDATE(), INTERVAL 1 DAY) After_one_day;  

 # ORDER BY

 1. The GROUP BY statement in SQL is used to organize data into groups based on one or more columns.

 2. It is commonly paired with aggregate functions (e.g., COUNT, SUM, AVG, MAX, MIN) to perform operations on each group of data.

 - Query for average the table data: SELECT job_desc,AVG(salary) FROM company
                                     GROUP BY job_desc;
 
 - Query for count the table data: SELECT job_desc,COUNT(stf_id) FROM company
                                   GROUP BY job_desc;

# HAVING 

1. The HAVING clause in SQL is used to filter groups of data after applying the GROUP BY clause. 

2. Unlike the WHERE clause, which filters rows before grouping, HAVING is applied to aggregate functions (e.g., SUM, COUNT, AVG) and works with grouped data.

- Query for having, group by using count: SELECT job_desc,COUNT(stf_id) FROM company
                                          GROUP BY job_desc
                                          HAVING COUNT(stf_id) >1; 

- Query for having, group by using count after having using order by: SELECT job_desc,COUNT(stf_id) FROM company
                                                                      GROUP BY job_desc
                                                                      HAVING COUNT(stf_id) >1
                                                                      ORDER BY job_desc;
                                                                      


# CONSTRAINTS

1. In constraints there are some keywords like primary key the some constraints are AUTO_INCREMENT, NOT NULL, DEFAULT, UNIQUE etc..

- Query for constraints - CREATE TABLE IF NOT EXISTS factory(
                          stf_id INT PRIMARY KEY AUTO_INCREMENT,
                          stfname VARCHAR(30) NOT NULL,
                          job_desc VARCHAR(30) DEFAULT 'unasssigned',
                          salary INT,
                          pan VARCHAR(20) UNIQUE,
                          CHECK (salary>50000)  
                          );

# FOREIGN KEY

1. Foreign key used to connect the different tables.

- Query for Foreign key - CREATE TABLE IF NOT EXISTS branch(
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

                                                                                                                         
                                                                       


                                





















