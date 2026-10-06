# DBMS

# DBMS Fundamentals

## What is Data

1. Data means information.
   Data = information

2. Example 1: Krishna, 23, ECE, 8.03.

3. Roll_No Name Age Department CGPA
   101 Krish 23 ECE 8.03

Now the data becomes meaningful and organized.

## What is a database

1. Database is an organized collection of data.

2. For example, a college may store:
   Student details
   Teacher details
   Course details
   Marks
   Attendance
   Fees
   All of these can be stored in a database.

## What is a database

1. Database is an organized collection of data.

2. For example, a college may store:
   Student details
   Teacher details
   Course details
   Marks
   Attendance
   Fees
   All of these can be stored in a database.

## What is DBMS?

1. Database management system(DBMS) is software used to create, store, manage, retrieve and manipulate data in a database.

2. It acting as a interface between database and users.

3. Example
   You
   ↓
   MySQL
   ↓
   Student Database

4. Command line
   ```
   SELECT * FROM students;
   ```

## Why do we need DBMS

1. Imagine a college has 50,000 students. Without a proper database

- Excel files
- Paper files
- Different folders
- Duplicate data
- Difficult searching
- Data inconsistency

2. With DBMS we can easily
   We can easily:

- Store data
- Search data
- Update data
- Delete data
- Control access
- Avoid unnecessary duplication
- Maintain relationships between data

### Example of DBMS

- MySQL
- PostgreSQL
- MangoDB

## What is RDBMS

1.  Relational database management system(RDBMS) the important word is "Relational".

2.  In an RDBMS, data is mainly organized into tables, and tables can be related to each other.

3.  Example: Student table, Department table

        student_id	name	dept_id
            1	    Arun	  10
            2	    Krish	  20
            3	    Ravi	  10


            dept_id	  department
                10	      ECE
                20	      CSE

4.  Student.dept_id
    ↓
    Department.dept_id

5.  The two tables are related using the department ID. That's why it's called Relational.

6.  RDBMS tools are " MySQL, PostgreSQL, Oracle database ".

## Basic Database terminology

1. We need to understand

- Database
- Table
- Row
- Column
- Field
- Record
- Primary Key
- Foreign Key

2. Example: Student table
   id name age department
   101 Arun 23 ECE
   102 Ravi 24 CSE
   103 Priya 22 IT

3. In this example that is a "database" the database in "table form" and the table contain the "Row, Column and field".

### Database

1.  A collection of related tables/data.

          College Database
                 ↓
           ┌─────┼─────┐
           ↓     ↓     ↓
        Student Course Marks

### Table

1.  A table stores data in rows and columns.

2.  Example: Student

        id	 name	age
        101	 Arun	23
        102	 Ravi	24

### Row

1.  A row represents one complete record.

2.  Example:

        101 | Arun | 23 | ECE

3.  This is one student's record.

4.  So: Row = Record

### Column

1. A column represents a particular type/attribute of data.

2. Example:

   id
   name
   age
   department

3. So: Column = Attribute

### Field

1. A field is a single data value within a record.

2. Example:

   101 | Krish | 23 | ECE

3. Each and every data is field.

## Types of DBMS

1. There are three types of DBMS

- Relational Database
- Object-relational
- No SQL

### Relational Database

1. Relational database stores data mainly in tables.

2. Example:
   Student
   Student_ID Name
   101 Arun
   102 Ravi

Course
Course_ID Course_Name
C01 Java
C02 SQL

Tables can have relationships with each other.

3. Examples of relational databases:

- MySQL
- PostgreSQL
- Oracle Database
- Microsoft SQL Server

4. Main idea

   Relational DB
   ↓
   Tables
   ↓
   Rows + Columns

# SQL

## Definintion of SQL

1. SQL stands for Structured Query Language.

2. SQL is a standard language for accessing and manipulating databases.

3. SQL is a "Relational database".

## What is SQL?

1. SQL lets you access and manipulate databases

2. SQL became a standard of the American National Standards Institute (ANSI) in 1986, and of the International Organization for Standardization (ISO) in 1987.

## What SQL can do?

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

## How to create a SQL program

1. First of all create a database and write a command for use the database.

2. And create a table and write what are the column you need.

3. And use the insert command to inser the value.

4. And use the Select command to display the Table(Result).

## Types of databases

1. We can store databases in various methods.They are

- Relational database: In this database we store in the table.The example databases are MySQL, Oracle, PostgreSQL and SQL server.

- NoSQL database: They are not purely SQL database they unstructred or semi structred database are schema less.The examples are MangoDB, Cassandra, etc..

- Object-Relational Databases: A hybrid of relational databases and object-oriented programming. They allow storage of objects and inheritance. Example: PostgreSQL (supports this).

- Distributed Databases: The d ata is distributed across multiple locations and is managed through a centralized or decentralized system. Example: Google Spanner.

- In-Memory Databases: Store data in a system's memory (RAM) rather than on disk for faster processing. Example: Redis.

- Columnar Databases: Designed for analytical queries, where data is stored in columns instead of rows. Example: Amazon Redshift.

- Graph Databases: Focus on managing relationships between data using nodes and edges. Example: Neo4j.

## How to see what are the databases in sql

1. Query for to see what are the databases available: SHOW DATABASES;

### Comment

1. /\* \*/ - use this symbols for multi comments.

2. -- - Use this symbols for Single comments.

### Datatypes

1. Use capital letters for the keywords but it is not mandatory but use like that.The example of keywords are character, etc..

#### String/character data type

- CHAR(3):

1. We must 3 characters like "ARM" if you didn't three character the empty spaces are occupied by spaces like "A ".

2. In CHAR we can store maximum 255 bytes.

3. "Show character set;" is used to display a character set.

4. The sql has various character set the character set means various language and symbols and the default character set is latin.

5. Query for character set: **Show character set;**

- VARCHAR(5):

1. we can give Maximum 5 character but it's not mandatory even the 1 character is remaining space should not occupied by a spaces.

2. In VARCHAR we can store maximum 65535 bytes and "we need more we can use TEXT and blob".

3. **Show character set;** is used to display a character set.

4. We can use different character set language by use UTF 8.

#### NUMERICAL

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

#### INT

1. The integer is real numbers.

## PRIMARY KEY

1. A column that uniquely identifies each row in a table.

2. Example
   student_id name age

   ***

   101 Arun 22
   102 Krish 23
   103 Ravi 21

3. Here "student_id" is the primary key.

4. Every student has a different ID.

### Primary Key rules

1. Cannot contain duplicate values.

2. Cannot contain NULL.

3. Usually uniquely identifies a record.

## Foreign key

### Definition of foreign key

1. Foreign Key is a column used to create a relationship between two tables.

2. Example: student table, Course table

student_id name

---

101 Arun
102 Krish
103 Ravi

course_id student_id course

---

1 101 Java
2 102 SQL
3 103 Python

3. student.student_id is the primary key and course.student_id is the foreign key.

## DDL(DATA DEFINED LANGUAGE)

1. DDL stands for Data Definition Language in SQL.

2. It is a subset of SQL commands used to define and manage the structure of a database.

3. These commands affect the database schema and are primarily used for creating, altering, and deleting database objects like tables, indexes, and views.

4. Some commonly used DDL commands include:

### CREATE

- Used to create new database objects such as tables, indexes, or views.

- Query for CREATE database: CREATE database kumar; // kumar is a databse

- Query for CREATE table: CREATE table student; // student is a table

### ALTER

- Used to modify the structure of an existing database object, like adding or dropping columns in a table.

- ADD:

1. To add column in the table.

2. Syntax

```
ALTER TABLE STUDENT
ADD department VARCHAR(50);
```

3. For multiple add

```
ALTER TABLE STUDENT
ADD (
  PHONE VARCHAR(15),
  CITY VARCHAR(30)
);
```

ADD → add something

- Query for ALTER to delete: ALTER TABLE table_name DROP depertment;

  ```
  ALTER TABLE STUDENT
  Drop department VARCHAR(50);
  ```

  DROP → remove a column

- Query for ALTER to modify: ALTER TABLE table_name modify name;

  ```
  table
  name varchar(30)

  ALTER TABLE STUDENT
  modify name VARCHAR(50);
  ```

  MODIFY → change datatype/definition

- Query for ALTER to Rename(Table): ALTER TABLE Column name to student_name;

  ```
   ALTER TABLE STUDENT               // (Rename for column)
  Rename Column name to student_name;
  ```

  ```
  create table student;

  ALTER TABLE STUDENT  // (Rename for table)
  Rename to school;
  ```

  RENAME → change name

- Query for ALTER to DROP(Table): ALTER TABLE to student_name;

```
create table name;

ALTER TABLE STUDENT
DROP COLUMN AGE;
```

DROP COLUMN → Delete a column

- Query for only read: alter database read only = 1;

```
 alter database read only = 1;
```

This use for only read we cannot change that anything.

- Query for read and write: alter database read only = 0;
  ```
   alter database read only = 0;
  ```
  This is use for read and write that means i can change anything in sql.

### DROP

1. Used to delete database objects such as tables or views.

2. Query for DROP a table:

```
DROP database table_name;
```

3. Query for DROP a database:

```
DROP database database_name;
```

### TRUNCATE

1. Used to delete all rows in a table while preserving its structure.

2. syntax

```
TRUNCATE TABLE table_name;
```

3. After a truncate is there any need we can use "Insert" again.

### Rename

1. This rename is only for change the table name.

2. syntax

```
RENAME TABLE STUDENT TO SCHOOL;
```

## DATABASE IF EXISTS

- If the database is already created or droped if we use again the query for create or drop it will show the error. So to avoid the error use this query.

- Query for CREATE if database exists: Create DATABASE IF EXIST kumar;

- Query for DROP if database exists: DROP DATABASE IF EXIST kumar;

5. DDL operations are usually auto-committed, meaning they take effect immediately and cannot be rolled back.

## DML(DATA MANIPULATION LANGUAGE)

1. DML stands for Data Manipulation Language in SQL.

2. It is a subset of SQL commands used to manipulate and manage data stored in database tables.

3. These commands do not affect the structure of the database but work with the actual data within it.

4. Commonly used DML commands include:

### INSERT

- It is used to insert a values for the table data's.

- We cannot insert a values randomly we need to insert a values Arrangement of data's.

- Query for insert single value: INSERT INTO table_name VALUES(1, "Aarthi", 7.5);

- Query for insert multiple value:
  ```
  INSERT INTO table_name
  VALUES(1, "Aarthi", 7.5),
  (2, "Krishna", 7.5);
  ```
- Query for insert particular data's: INSERT INTO table name(id,name) VALUES(3,"surya");

### UPDATE

- Modifies the values of table data's.

- Query for update:
  ```
  UPDATE employee
  SET job_desc="Analyst";
  ```
- This Query will update everything when we set the value for the data.

- So if use WHERE that will modify the value which value we assign for the data.  
   // Where - destination

- Query for update particular value for data: UPDATE employee.
  ```
  UPDATE STUDENT
  SET AGE = 24
  WHERE STUDENT_ID = 101;
  ```
- We need to see a table result by using this query SELECT \* FROM table name;.

- Query for Multiple columns:
  ```
  UPDATE STUDENT
  SET AGE = 25,
  NAME = 'KRISH KUMAR'
  WHERE STUDENT_ID = 101;
  ```

### DELETE

- Removes rows from a table.

- Query for delete:
  ```
  DELETE FROM employee
  WHERE emp_id=3;    // Where - destination
  ```
- We need to see a table result by using this query SELECT \* FROM table name;.

5. DML commands are not auto-committed, meaning their changes can be rolled back if not explicitly committed. They are essential for interacting with and modifying the data within a database.

## DQL(DATA QUERY LANGUAGE)

1. It is a component of the SQL statement that allows getting data from the database and imposing order upon it.

2. It includes the SELECT statement.

3. This command allows getting the data out of the database to perform operations with it.

### SELECT

- It used to display the data's inside the table.

- Query for select(To display all data's and values):

  ```
  SELECT * FROM table name; // * - means all
  ```

- Query for select(To display particular data's and values):
  ```
  SELECT id, name FROM table name;
  ```

### SQL WHERE CLAUSE

1. The WHERE clause is used to filter records.

2. It is used to extract only those records that fulfill a specified condition.

3. Query for where:
   ```
   select * FROM table_name
   WHERE ename="krishna";
   ```
4. Where ename is a part of the table krishna is a value in a table.

5. Where displaying the ename who has the name of krishna.

6. We can use a AND, OR, NOT, IN, BETWEEN, LIKE, IS NULL DISTINCT, ORDER BY, LIMIT.

#### AND

- In And function it satisfy two or more values.

- Query for the AND:
  ```
  SELECT * FROM employee
  WHERE salary > 40000 AND job_desc="hr";
  ```
  ```
  SELECT * FROM UNIVERSITY  -- AND [BOTH CONDITION NEED TO BE TRUE]
  WHERE AGE = 24
  AND STUDENT_ID = 103;
  ```

#### OR

- In OR function it satisfy atleast one value.

- Query for the OR:
  ```
  SELECT * FROM employee
  WHERE job_desc= "sales" OR job_desc="hr";
  ```
  ```
  SELECT * FROM UNIVERSITY  -- OR [ATLEAST ONE CONDITION TRUE]
  WHERE AGE = 24
  OR STUDENT_ID = 104;
  ```

#### NOT

- In NOT function it reject the value we don't need and display others.

- Query for the NOT:
  ```
  SELECT * FROM employee
  WHERE NOT job_desc= "manager"
  ```
  ```
  SELECT * FROM UNIVERSITY  -- NOT [USE TO REVERSE CONDITION TO TRUE]
  WHERE NOT AGE = 27;
  ```

#### DISTINCT

1. Distinct remove duplicate and display the result.

2. Syntax
   ```
   SELECT distinct NAME, AGE FROM UNIVERSITY; -- DISTINCT [rEMOVE DUPLICATE]
   ```

#### ORDER BY

1. It is used to arrange the values in ascending or descending order.

2. Syntax

```
SELECT * FROM UNIVERSITY
ORDER BY AGE ASC;
```

SELECT \* FROM UNIVERSITY
ORDER BY AGE DESC;

```

#### LIMIT

1. Used to restrict the number of rows returned.

2. Syntax
```

SELECT \* FROM UNIVERSITY -- LIMIT [IT WILL PRINT ONLY 2 LINES]
LIMIT 2;

```
SELECT * FROM UNIVERSITY  -- LIMIT [IT WILL PRINT ONLY 3 LINES]
ORDER BY AGE DESC
LIMIT 3;
```

#### IN

1. In IN function it is used for alternate of OR function and used with NOT function.

2. when we use the IN function means multiple of OR function needed.

3. Query for the IN:

```
SELECT \* FROM employee
WHERE job_desc IN("hr","manager","sales");
```

4. This IN function used for alternate of OR function.

5. Query for the NOT IN:

```
SELECT \* FROM employee
WHERE job_desc NOT IN ("hr", "sales");
```

#### BETWEEN

1. BETWEEN is used to check whether a value is within a range.

2. Query for BETWEEN:

```
SELECT \* FROM employee
WHERE salary BETWEEN 1000 AND 90000;
```

#### LIKE

1. LIKE is used to search for a pattern in text/string values.

2. There are two wildcards often used in conjunction with the LIKE operator percentage and underscore.

3. The percent sign % represents zero, one, or multiple characters.

4. The underscore sign \_ represents one, single character.

#### % WILDCARE

1. The percent sign % represents zero, one, or multiple characters.

2. We can use with in start form, end form and what contains

3. Example

   ```
   SELECT * FROM STUDENT  -- LIKE START WITH K
   WHERE NAME LIKE 'K%';

   SELECT * FROM UNIVERSITY  --  LIKE ENDT WITH A
   WHERE NAME LIKE '%A';

   SELECT * FROM UNIVERSITY  --  LIKE CONTAIN WITH U
   WHERE NAME LIKE '%U%';
   ```

#### _ WILDCARD

1. The underscore sign _ represents one, single character.

2. We can use with in start form, end form.

3. Example

   ```
   SELECT * FROM UNIVERSITY   -- LIKE _ WILDCARD , 4 UNDERSCORE START
   WHERE NAME LIKE 'K____';

   SELECT * FROM UNIVERSITY   -- LIKE _ WILDCARD , 4 UNDERSCORE END
   WHERE NAME LIKE '____R';
   ```

### IS NULL

1. NULL means no value / unknown value.

2. Example
   ```
   SELECT * FROM STUDENT
   WHERE PHONE IS NULL;
   ```
3. | STUDENT_ID | NAME  | PHONE      |
   | ---------- | ----- | ---------- |
   | 101        | KRISH | 9876543210 |
   | 102        | ARUN  | NULL       |
   | 103        | KUMAR | 9123456780 |

### IS NOT NULL

1. Not null means a table should cantain values there should null in the table or what we need

2. Example
   ```
   SELECT * FROM STUDENT
   WHERE PHONE IS NULL;
   ```
3. | STUDENT_ID | NAME  | PHONE      |
   | ---------- | ----- | ---------- |
   | 101        | KRISH | 9876543210 |
   | 102        | ARUN  | 638319790  |
   | 103        | KUMAR | 9123456780 |

### AGGREGATE FUNCTION

1. An aggregate function performs a calculation on multiple rows and returns one result.

2. It has 5 types of commands

-  COUNT()
- SUM()
- AVG()
- MAX()
- MIN()

#### COUNT()

1. COUNT() tells us how many records/values exist.

2. Example
   ```
   SELECT COUNT(*) FROM PROBLEM;  -- * - it count no.of rows

   SELECT COUNT(SALARY) FROM PROBLEM;  -- salary - is a columns it count no.of columns

   SELECT COUNT(*) AS TOTAL_EMPLOYEES FROM PROBLEM; -- total_employee - is a total 's title

   ```

#### SUM()

1. SUM() calculates the total.

2. Example
   ```
   SELECT SUM(SALARY) FROM PROBLEM;   -- IT ADD TOTAL NO.OF SALARY

   SELECT SUM(SALARY) AS TOTAL_SALARY FROM problem;  -- total_salary is a total's title
   ```

#### AVG()

1. AVG() calculates the average.

2. Example
   ```
   SELECT AVG(SALARY) FROM problem;  -- it give average
   ```

#### MAX()

1. MAX() is find maximum value.

2. Example
   ```
   select MAX(SALARY) FROM PROBLEM; -- FIND MAXIMUM VALUE
   ```

#### MIN()

1. MIN() is find minimum value.
   ```
   SELECT MIN(SALARY) FROM PROBLEM;
   ```
### GROUP BY

1. GROUP BY is used to group rows that have the same value in a column.

2. For example, our employee table

| EMP_ID | NAME  | DEPT | SALARY |
| -----: | ----- | ---- | -----: |
|    101 | KRISH | IT   |  50000 |
|    102 | ARUN  | IT   |  40000 |
|    103 | KUMAR | HR   |  30000 |
|    104 | RAJ   | HR   |  35000 |
|    105 | VIJAY | IT   |  60000 |

3. Here  IT → KRISH, ARUN, VIJAY
              HR → KUMAR, RAJ
        
4. GROUP BY DEPT will create two groups:
      IT group
      HR group

5. Syntax
   ```
   SELECT column_name, aggregate_function(column)
   FROM table_name
   GROUP BY column_name;
   ```

7. Example
   ```
   SELECT DEPT, COUNT(*) FROM PROBLEM 
   GROUP BY DEPT;

   SELECT DEPT, SUM(SALARY) AS TOTAL_SALARY FROM PROBLEM
   GROUP BY DEPT;

   SELECT DEPT, AVG(SALARY) AS AVERAGE FROM PROBLEM
   GROUP BY DEPT;

   SELECT DEPT, MAX(SALARY) AS MAXIMUM FROM PROBLEM
   GROUP BY DEPT;

   SELECT DEPT, MIN(SALARY) AS MINIMUM FROM PROBLEM
   GROUP BY DEPT;
   ```
### HAVING

1. HAVING is used to filter groups of data after using GROUP BY.

2. Example
   ```
   SELECT DEPT, SUM(SALARY) AS TOTAL_SALARY FROM PROBLEM
   GROUP BY DEPT
   HAVING SUM(SALARY) > 100000;

   SELECT DEPT, COUNT(*) AS TOTAL_SALARY FROM PROBLEM
   GROUP BY DEPT
   HAVING COUNT(*) > 2;

   SELECT DEPT, MAX(SALARY) AS TOTAL_SALARY FROM PROBLEM
   GROUP BY DEPT
   HAVING MAX(SALARY) > 50000;

   SELECT DEPT, AVG(SALARY) AS TOTAL_SALARY FROM PROBLEM
   GROUP BY DEPT
   HAVING AVG(SALARY) > 2000;

   SELECT DEPT, MIN(SALARY) AS TOTAL_SALARY FROM PROBLEM
   GROUP BY DEPT
   HAVING MIN(SALARY) > 5000;


   SELECT DEPARTMENT, SUM(SALARY) AS TOTAL_SALARY FROM PROBLEM
   WHERE SALARY > 3500
   GROUP BY DEPT
   HAVING SUM(SALARY) > 7000;
   ```
### Join

1. JOIN is used to combine data from two or more tables using a related column.

2. Example we have two tables student and department.

Student:
        | STUDENT_ID | NAME  | DEPT_ID |
        | ---------: | ----- | ------: |
        |        101 | KRISH |       1 |
        |        102 | ARUN  |       2 |
        |        103 | KUMAR |       1 |
        |        104 | RAJ   |       3 |

Department:
        | DEPT_ID | DEPT_NAME |
        | ------: | --------- |
        |       1 | CSE       |
        |       2 | ECE       |
        |       3 | IT        |

3. Both tables have a common column:

        STUDENT.DEPT_ID
               ↓
      DEPARTMENT.DEPT_ID

4. So we can JOIN them.

5. There are 6 types of join

- Inner join
- Left join
- Right join
- Full outer join
- Cross join
- Self join

#### INNER JOIN

1. INNER JOIN returns only the matching records from both tables.

2. Example
   ```
   SELECT EMPLOYEE.EMP_ID,        -- INNER JOIN 
		   EMPLOYEE.NAME,
        DEPARTMENT.DEPT_NAME
   FROM EMPLOYEE
   INNER JOIN DEPARTMENT
   ON EMPLOYEE.DEPT_ID = DEPARTMENT.DEPT_ID;
   ```

#### LEFT JOIN

1. ALL records from the left table + matching records from the right table.

2. Example
   ```
   SELECT EMPLOYEE.EMP_ID,          -- LEFT JOIN
		EMPLOYEE.NAME,
        DEPARTMENT.DEPT_NAME
   FROM EMPLOYEE
   LEFT JOIN DEPARTMENT
   ON EMPLOYEE.DEPT_ID = DEPARTMENT.DEPT_ID;   
   ```

#### Right join

1. ALL records from the right table + matching records from the left table.

2. Example
   ```
   SELECT EMPLOYEE.EMP_ID,    -- right join
		  EMPLOYEE.NAME,
        DEPARTMENT.DEPT_NAME
   FROM EMPLOYEE
   RIGHT JOIN DEPARTMENT
   ON EMPLOYEE.DEPT_ID = DEPARTMENT.DEPT_ID;   
   ```

#### CROSS JOIN

1. It creates every possible combination of rows from both tables.

2. Example
   ```
   SELECT EMPLOYEE.EMP_ID,   -- cross join
		EMPLOYEE.NAME,
      DEPARTMENT.DEPT_NAME
   FROM EMPLOYEE 
   CROSS JOIN DEPARTMENT;
   ```

#### SELF JOIN

1. Self join means joining a table with itself.

2. Syntax
   ```
   SELECT ...
   FROM TABLE A
   INNER JOIN TABLE B
   ON A.column = B.column;
   ```

3. EXAMPLE
   ```
   SELECT EMPLOYEE.NAME AS EMPLOYEE,      -- self join with left join
	   DEPARTMENT.DEPT_NAME AS DEPARTMENT
   FROM EMPLOYEE
   LEFT JOIN DEPARTMENT
   ON EMPLOYEE.DEPT_INT = DEPARTMENT.DEPT_INT;
   ```
### WHERE CONDITION

#### EQUAL (=)

1. Condition match in equal

2. Syntax
   ```
   SELECT * FROM STUDENT
   WHERE AGE = 23;
   ```

#### GREATER THAN (>)

1. Which condition is greater than a condition.

2. Syntax
   ```
   SELECT * FROM UNIVERSITY  -- Greater
   WHERE AGE > 22;
   ```

#### GREATER THAN OR EQUAL (>=)

1. Which condition is greater than or equal to a condition.

2. Syntax
   ```
   SELECT * FROM UNIVERSITY  -- Greater than or equal
   WHERE AGE >= 22;
   ```

#### LESS THAN (<)

1.  Which condition is Less than to a condition.

2.  Syntax
    ```
    SELECT * FROM UNIVERSITY  -- Greater than or equal
    WHERE AGE < 22;
    ```

#### LESS THAN OR EQUAL (<=)

1.  Which condition is Less than or equal to a condition.

2.  Syntax
    ```
    SELECT * FROM UNIVERSITY  -- Greater than or equal
    WHERE AGE <= 22;
    ```

#### NOT EQUAL (<>) OR (!=)

1.  Which condition is not equal to a condition.

2.  Syntax
    ```
    SELECT * FROM UNIVERSITY  -- Not equal
    WHERE AGE <> 22;
    ```
## DCL(DATA CONTROL LANGUAGE)

1. DCL is used to control permissions/access to the database.

2. There are mainly 2 DCL commands:

- GRANT
- REVOKE

### Grant

1. Grant is used to give previlage to a MySQL.

2. The previlages are

- Insert
- Select 
- Update
- DELETE

3. First of all we need to create database and table.

4. And afterwards we need to create user to get previlage.
   ```
   CREATE USER 'EMPLOYEE1'@'localhost'   -- MAIN USER
   IDENTIFIED BY 'EMPLOYEE@123';
   ```
5. And we can get grant by select.
   ```
   grant select ON OFFICE.EMPLOYEE to 'EMPLOYEE1'@'localhost';  -- GRANT 
   ```
6. And we can check the grant is working or not.
   ```
   SHOW GRANTS FOR 'EMPLOYEE1'@'localhost';   -- GRANT ACCEPTED OR NOT
   ```
7. And we can use insert by grant.
   ```
   GRANT INSERT ON OFFICE. EMPLOYEE TO 'EMPLOYEE1'@'localhost';  -- GRANT [INSERT]

   USE OFFICE;        -- AFTER GRANT INSERT [WE CAN INSERT WHATEVER]

   INSERT INTO EMPLOYEE VALUES(104, 'RUBAN', 80090);   -- INSERT
   ```
8. And we can use update by grant.
   ```
   GRANT UPDATE ON OFFICE.EMPLOYEE TO 'EMPLOYEE1'@'localhost';   -- GRANT UPDATE

   use office;    -- AFTER GRANT UPDATE [WE CAN UPDATE]

   update EMPLOYEE       -- UPDATE
   set SALARY = 10000
   WHERE EMP_ID = 103;
   ```
9. And we can use delete by grant.
   ```
   GRANT DELETE ON OFFICE.EMPLOYEE TO 'EMPLOYEE1'@'localhost';   -- GRANT DELETE

   USE OFFICE;  -- AFTER FRANT DELETE[WE CAN DELETE]

   DELETE FROM EMPLOYEE
   WHERE EMP_ID = 104;
   ```

### REVOKE

1. REVO means remove a permission that was previously given to a user.

2. Revoke is used to remove the permission of select, insert, update and delete.

- Insert
   ```
   REVOKE INSERT ON  OFFICE.EMPLOYEE FROM 'EMPLOYEE1'@'localhost'; -- REVOKE INSERT
   ```
- Update 
   ```
   REVOKE UPDATE ON  OFFICE.EMPLOYEE FROM 'EMPLOYEE1'@'localhost'; -- REVOKE UPDATE
   ```
- Delete
   ```
   REVOKE DELETE ON  OFFICE.EMPLOYEE FROM 'EMPLOYEE1'@'localhost'; -- REVOKE UPDATE
   ```

### GRANT VS REVOKE

     GRANT            |       REVOKE
---------------------------------------------
Grant is for give     | Revoke is for remove the permission
permission.           |
                      |
Grant - to            |   Revoke - from
                      |
We can give permission| We can remove permission from 
to 'select,insert,    | 'select,insert, update and delete
update and delete     |    
                      |
## TCL(Transaction Control Language)

1. TCL commands are used to manage transactions in a database.

### WHAT IS A TRANSCATION

1. A transaction is a group of SQL operations treated as one unit.

2. For example, suppose you transfer ₹1,000 from Account A to Account B:

Account A → -₹1,000
Account B → +₹1,000

3. Bot9o`h operations should happen together.

4. If something goes wrong, we can ROLLBACK the changes.

5. If everything is correct, we COMMIT the changes

### START TRANSCATION

1. Before demonstrating TCL, we can explicitly start a transaction

2. In program we can use start transcation; or begin;

3. Example

   ```
   START TRANSACTION;

   UPDATE STUDENT
   SET AGE = 25
   WHERE STUDENT_ID = 101;

  select * from STUDENT;

   ```

### TYPES OF COMMANDS

1. The main TCL commands in MySQL are:

- COMMIT
- ROLLBACK
- SAVEPOINT

#### COMMIT

1. COMMIT permanently saves the changes made during the transaction.

2. Example

   ```
   START TRANSACTION;

   UPDATE STUDENT
   SET AGE = 25
   WHERE STUDENT_ID = 101;

   COMMIT;

   select * from STUDENT;
   ```

#### ROLLBACK

1. ROLLBACK cancels changes made during the current transaction that have not been committed.

2. After the commit command we can't use rollback.

3. Example

   ```
   START TRANSACTION;

   UPDATE STUDENT
   SET AGE = 25
   WHERE STUDENT_ID = 101;

   ROLLBACK;

   select * from STUDENT;
   ```
#### COMMIT VS ROLLBACK

| COMMIT                                        | ROLLBACK                            |
| --------------------------------------------- | ----------------------------------- |
| Saves changes                                 | Cancels uncommitted changes         |
| Changes become permanent                      | Changes are undone                  |
| Cannot normally undo using ROLLBACK afterward | Returns to previous committed state |

#### SAVEPOINT

1. SAVEPOINT creates a checkpoint inside a transaction.

2. After savepoint we can use rollback.

2. Think of it like a game checkpoint 🎮.

3. START TRANSACTION
       ↓
    UPDATE 1
       ↓
   SAVEPOINT S1
       ↓
    UPDATE 2
       ↓
   SAVEPOINT S2
       ↓
    UPDATE 3

4. You can return to S1 or S2.

5. Example
   ```
   START TRANSACTION;

   UPDATE ACCOUNT
   SET BALANCE = BALANCE - 500
   WHERE ACCOUNT_ID = 101;

   SAVEPOINT S1;

   UPDATE ACCOUNT
   SET BALANCE = BALANCE + 500
   WHERE ACCOUNT_ID = 102;

   SAVEPOINT S2;

   ```
#### Release savepoint

1. Release savepoint means delete the checkpoint

2. Example
   ```
   RELEASE SAVEPOINT S1;
   ```
#### ROLLBACk TO SAVEPOINT

1. Rollback to savepoint means after create a s2 we can go and make change in s1.

2. Example 
   ```
   UPDATE sbi
   SET BALANCE = BALANCE - 5
   WHERE ACCOUNT_ID = 101;

   SELECT * FROM sbi;

   SAVEPOINT S1;   --[ save s1]

   UPDATE sbi
   SET BALANCE = BALANCE + 5
   WHERE ACCOUNT_ID = 102;

   SELECT * FROM sbi;

   Rollback to savepoint S1; -- [after savepoint s1 it unsave s1]

   savepoint s2;  -- [save s2]

   ```
3. In this important one "before savepoint s2 if you want any changes in s1 use that before savepoint s2". 

# Functions

1. Functions is defined as to finish specific part of the program.

2. Functions are various type method we can use but we going to use some specific task in numbers and strings.

3. In numbers we can count numbers of persons in the table data, sum of salary of persons in the table data, maximum salary of the salary in the table data and minimum salary in the table data.

- Query for numbers of persons in the table data: SELECT COUNT(\*) Total FROM company;

- Query for numbers of specific person in the table data: SELECT COUNT(\*) Total_no_of_sales FROM company
  WHERE job_desc="sales";
- Query for sum of salary: SELECT SUM(salary) Total_of_salary FROM company;
- Query for specific person sum of salary: SELECT SUM(salary) Total_of_salary FROM company
  WHERE job_desc="manager";

- Query for maximum salary who get:SELECT MAX(salary) max_salary FROM company;

- Query for minimum salary who get:SELECT MIN(salary) min_salary FROM company;

4. In strings we can give specific case for specific data's,we can measure character length for specific data,we can rupees,euro like money name and round the salary in decimals and we can print specific numbers of characters in the table data.

- Query for specific case for specific data's: SELECT UCASE(stfname) name,salary FROM company;

- Query for measure character length for specific data: SELECT stfname,CHAR_LENGTH(stfname) char_count FROM company;

- Query for rupees,euro like money name and round the salary in decimals: SELECT stfname,CONCAT('RS.',FORMAT(salary,0))salary FROM company;

- Query for print specific numbers of characters in the table data: SELECT stfname,LEFT(job_desc,3) job_desc FROM company;

5.  If you want learn more about the functions search in "Tech on the net".

# DATE

1.  DATE function is used to give date, time, month and year to add data in the table.

2.  We can give date for the specific person, we can give current data, time, month and year, we can formate the date, we can see difference current date to past date or current date to future date, we can see tommorow date, month, time and year.

- Querys for current time: SELECT NOW();, SELECT DATE(NOW());, SELECT CURDATE();.

- Query for date for the specific person: ALTER TABLE company ADD Hire_date DATE
  UPDATE company
  SET Hire_date= "2012-06-29"
  WHERE job_desc= "manager";

- Query for formate the date: SELECT DATE_FORMAT(CURDATE(), "%d/%m/%y")DATE;

- Query for difference current date to past date or current date to future date: SELECT DATEDIFF(CURDATE(),"2024/04/15") DAYS;

- Query for tommorow date, month and year: SELECT DATE_ADD(CURDATE(), INTERVAL 1 DAY) After_one_day;

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

# INDEX

1. In index methods used when the value has more than thousands because without index it's take the more time.

2. Don't use index method more because it consume the space.

3. We can use by primary key, foreign key and unique in the index.

4. We can use descending index it make the output process method so fast.

5. And then we can use finally full text index it make we can search a keywords it make the result so faster.

- Query for index - CREATE TABLE IF NOT EXISTS employee(
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

# ON DELETE

1. In on delete there two things one is cascade and another is set null.

2. Cascade is used to delete complete data in the both table what we mention on the delete.

- Query for the cascade: CREATE TABLE IF NOT EXISTS branch(
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
                           ON DELETE CASCADE -- CASCADE OR SET NULL
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

                           DELETE FROM branch
                           WHERE brch_id = 2;

3. After the cascade if you want to use the set null drop the full table set.

4. In set null that is used to particular value in the table.

- Query for the set null: CREATE TABLE IF NOT EXISTS branch(
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
                           ON DELETE CASCADE -- CASCADE OR SET NULL
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

                           DELETE FROM branch
                           WHERE brch_id = 2;

# JOIN

1.  A JOIN clause is used to combine rows from two or more tables, based on a related column between them.

2.  Here are the different types of the JOINs in SQL:

- INNER JOIN or JOIN

- LEFT JOIN

- RIGHT JOIN

- FULL JOIN

- CROSS JOIN

## INNER JOIN or JOIN

- INNER JOIN or JOIN returns records that have matching values in both tables.

- Query for inner join: SELECT factory.stf_id,factory.stfname,factory.job_desc,branch.brchname
  FROM factory
  INNER JOIN branch
  ON factory.brch_id = branch.brch_id
  ORDER BY factory.stf_id;

- We can write inner join code without using inner join by WHERE.

- Query for inner join without using inner join: SELECT factory.stf_id,factory.stfname,factory.job_desc,branch.brchname
  FROM factory,branch
  WHERE factory.brch_id = branch.brch_id
  ORDER BY factory.stf_id;

## LEFT JOIN

- LEFT JOIN returns all records from the left table, and the matched records from the right table.

- Query for left join: SELECT factory.stf_id,factory.stfname,factory.job_desc,branch.brchname
  FROM factory
  LEFT JOIN branch
  ON factory.brch_id = branch.brch_id
  ORDER BY factory.stf_id;

## RIGHT JOIN

- RIGHT JOIN returns all records from the right table, and the matched records from the left table.

- Query for left join: SELECT factory.stf_id,factory.stfname,factory.job_desc,branch.brchname
  FROM factory
  RIGHT JOIN branch
  ON factory.brch_id = branch.brch_id
  ORDER BY factory.stf_id;

## FULL JOIN

- FULL JOIN returns all records when there is a match in either left or right table.

- In MYSQL will not use full join

## CROSS JOIN

- In CROSS JOIN if there is two table is 1st table is value will join second table all value.

- Query for cross join: SELECT factory.stf_id,factory.stfname,factory.job_desc,branch.brchname
  FROM factory
  CROSS JOIN branch
  ORDER BY factory.stf_id;

# UNION

1. The UNION operator is used to combine the result-set of two or more SELECT statements.

- Every SELECT statement within UNION must have the same number of columns

- The columns must also have similar data types

- The columns in every SELECT statement must also be in the same order

- Query for union without duplicate value: SELECT _ FROM branch
  UNION
  SELECT _ FROM clients;

- Query for union with duplicate values: SELECT _ FROM branch
  UNION ALL
  SELECT _ FROM clients;

```

```
