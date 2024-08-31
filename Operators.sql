use book1;
CREATE TABLE EMP1(
ID INT PRIMARY KEY AUTO_INCREMENT,
EMPNAME VARCHAR(54) NOT NULL,
SALARY INT NOT NULL,
AGE INT NOT NULL
);
INSERT INTO EMP1(EMPNAME,SALARY,AGE) VALUES("AMMU",20000,26),("APPLE",53000,23),("BUNNY",52000,22),("NANDU",63000,21);
SELECT * FROM EMP1;
SELECT EMPNAME,SALARY,(SALARY+1200) FROM EMP1;
SELECT EMPNAME,SALARY,(SALARY+1500) FROM EMP1 WHERE SALARY >=50000;
SELECT EMPNAME,SALARY,(SALARY-3200) FROM EMP1;
SELECT EMPNAME,SALARY,(SALARY+1500) AS TOTALAMT FROM EMP1 WHERE SALARY >=50000;
SELECT EMPNAME,SALARY,(SALARY*1.0) AS INCREMENT FROM EMP1 WHERE SALARY >=50000;
SELECT EMPNAME,SALARY,(SALARY/1.02) AS POORPERFORM FROM EMP1 WHERE SALARY>=50000;
SELECT EMPNAME, AGE FROM EMP1;
SELECT EMPNAME ,SALARY FROM EMP1 WHERE AGE%2=0;
SELECT *FROM EMP1;
SELECT EMPNAME FROM EMP1 WHERE AGE<23;
SELECT EMPNAME FROM EMP1 WHERE AGE<=23;
SELECT EMPNAME FROM EMP1 WHERE AGE>23;
SELECT EMPNAME FROM EMP1 WHERE AGE>=23;
SELECT EMPNAME,SALARY FROM EMP1 WHERE SALARY=53000;
-- logical operators
create TABLE EMP2(
ID INT PRIMARY KEY AUTO_INCREMENT,
AGE INT NOT NULL,
EMPNAME VARCHAR(45) NOT NULL UNIQUE,
SALARY INT 
);
INSERT INTO EMP2(AGE,EMPNAME,SALARY) VALUES( 25,"APPLE",29000),(26,"NANDU",36000),(27,"AMMU",22000),(18,"BUNNY",21000);
SELECT* FROM EMP2;
SELECT * FROM EMP2 WHERE AGE>24 AND SALARY>25000;
SELECT * FROM EMP2 WHERE AGE>24 OR SALARY >26000;
SELECT * FROM EMP2 WHERE AGE>18;
SELECT * FROM EMP2 WHERE  NOT AGE>18;
-- NULL OPERATORS
CREATE TABLE EMP1234(
ID INT PRIMARY KEY AUTO_INCREMENT,
EMPNAME VARCHAR(56) UNIQUE NOT NULL,
EMPEMAIL VARCHAR(59) ,
EMPMOBILE BIGINT
);
INSERT INTO EMP1234 (EMPNAME,EMPEMAIL,EMPMOBILE) VALUES("NANDU","nandu123@gmail.com",5642112339),("AMMU","ammu456@gmail.com",1478966354),("APPLE","apple1432@gmail.com",4569874623);
INSERT INTO EMP1234(EMPNAME,EMPMOBILE) VALUES("JETTI",963587413),("VISHU",7894561233);
SELECT * FROM EMP1234;
SELECT EMPMOBILE FROM EMP1234 WHERE EMPEMAIL IS NOT NULL;

SELECT EMPEMAIL FROM EMP1234 WHERE EMPEMAIL IS NOT NULL;

SELECT EMPMOBILE FROM EMP1234 WHERE EMPEMAIL IS  NULL;
SELECT EMPNAME FROM EMP1234 WHERE EMPEMAIL IS NULL;
SELECT * FROM EMP1234;
SELECT *FROM EMP2;
SELECT EMPNAME,SALARY,AGE FROM EMP2 WHERE AGE  BETWEEN 25 AND 27;
SELECT EMPNAME ,SALARY FROM EMP2 WHERE AGE IN (25,27) ;
SELECT *,
	CASE 
		WHEN SALARY >= 30000 THEN (SALARY * 0.30)
        WHEN SALARY >= 22000 THEN (SALARY * 0.20)
        ELSE 0.0
	END AS INCREMENT
FROM EMP2;
