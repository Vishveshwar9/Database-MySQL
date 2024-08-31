CREATE DATABASE DATA;
USE DATA;
CREATE TABLE JETTI1(SINO INT,STUDENTNAME VARCHAR(32),AGE INT,BRANCH VARCHAR(23));
DESC JETTI1;
ALTER TABLE JETTI1 ADD COLUMN ADDRESS INT;
DESC JETTI1;
ALTER TABLE JETTI1 MODIFY COLUMN ADDRESS VARCHAR(50);
DESC JETTI1;
DROP TABLE JETTI1;
CREATE TABLE EMPLOYEE(ID INT,EMPNAME VARCHAR(36),AGE INT,SALARY INT);
SELECT * FROM EMPLOYEE;
INSERT INTO EMPLOYEE VALUES(101,"AMMU",23,50000);
SELECT * FROM EMPLOYEE;
INSERT INTO EMPLOYEE VALUES(102,"NANDU",21,52000),(103,"APPLE",22,54000);
SELECT * FROM EMPLOYEE;
USE DATA;
CREATE TABLE USERS(ID INT,EMPNAME VARCHAR(34),AGE INT,SALARY INT);
DESC USERS;
INSERT INTO USERS VALUES(105,"AMMU",25,26000),(106,"NANDU",26,29000),(107,"TONY",26,32000);
SELECT*FROM USERS;
INSERT INTO USERS(ID,EMPNAME,SALARY) VALUES(109,"KANNI",61000);
SELECT*FROM USERS;
INSERT INTO EMPLOYEE SELECT* FROM USERS;
SELECT *FROM EMPLOYEE;
UPDATE EMPLOYEE SET AGE=26 WHERE ID=109;
USE DATA;
-- mysql constraints
CREATE TABLE EMP12(
ID INT PRIMARY KEY AUTO_INCREMENT,
EMPNAME VARCHAR(45) NOT NULL,
AGE INT NOT NULL DEFAULT 18,
MOBILE BIGINT UNIQUE,
CITY VARCHAR(46) NOT NULL DEFAULT "HYD",
CHECK( AGE >=18 AND CITY="HYD" )
);
SELECT *FROM EMP12;
INSERT INTO EMP12 (EMPNAME,AGE,MOBILE) VALUES("VISHH",21,3652417894),("NANDU",25,4526598787);
INSERT INTO EMP12 VALUES(1002,"AMMU",23,6304106270,"HYD");
INSERT INTO EMP12 (EMPNAME,AGE,MOBILE) VALUES("APPLE",24,56987433554),("MAMMU",26,4567818292);