USE BOOK1;
CREATE TABLE EMP111(
ID INT PRIMARY KEY,
FNAME VARCHAR(65),
LNAME VARCHAR(56),
MOBILE BIGINT
);
INSERT INTO EMP111 VALUES(1,"VISHVESHWAR","JETTI",6304106270),(2,"NANDU","GOPI",8973625147),(3,"AMMU","HARSHI",8974562335),(4,"APPLE","KEERTHI",8972763542);
SELECT *FROM EMP111;
-- LIKE 
SELECT * FROM EMP111 WHERE FNAME LIKE "%D";
SELECT * FROM EMP111 WHERE MOBILE LIKE "897_______";

-- CONCAT
SELECT CONCAT("JETTI", " " ,"VISHVESHWAR");
SELECT *, CONCAT(FNAME," ",LNAME) AS FULL_NAME FROM EMP111;
SELECT CONCAT_WS("  ","VISHVESHWAR","JETTI","FROM","HYDERABAD");

SELECT UPPER(LNAME),LOWER(FNAME) FROM EMP111;
 
 SELECT SUBSTRING("PEACEFULL",3);
 SELECT SUBSTRING("HARDWORK",2,6);
 
 SELECT FNAME,SUBSTRING(FNAME,5) AS SUBNAME FROM EMP111;
 
 SELECT LENGTH("JETTI VISHVESHWAR");
 SELECT CHAR_LENGTH("JETTI VISHVESHWAR");
 

 SELECT FNAME, LENGTH(FNAME) AS LEN FROM EMP111;
 SELECT FNAME,LNAME, LENGTH(CONCAT(FNAME,LNAME)) AS FULL_NAME_LENGTH FROM EMP111;
 
 SELECT REVERSE("JETTI");
 SELECT FNAME,REVERSE(FNAME) AS RVRSENAME FROM EMP111;
 
 SELECT REPLACE("JETTI","A","*");
 SELECT * FROM EMP111;
 SELECT ID,FNAME,LNAME,REPLACE(MOBILE,"897","751") AS NEW_MOBILE FROM EMP111;