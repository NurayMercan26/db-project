SELECT * FROM EMPLOYEES ;

--reads all column from employees table
SELECT *  FROM DEPARTMENTS ;

--reads all column from departments table
select FIRST_NAME from  EMPLOYEES ;

--display city names
SELECT CITY FROM LOCATIONS ;

--get me first name, last_name, salary

SELECT FIRST_NAME,LAST_NAME,SALARY FROM EMPLOYEES;

--get me street address and postal code
SELECT STREET_ADDRESS, POSTAL_CODE FROM LOCATIONS;

SELECT DİSTİNCT  FIRST_NAME from EMPLOYEES ;

--I want to see fistname lastname phone number of david(s)
SELECT FIRST_NAME,LAST_NAME,PHONE_NUMBER FROM EMPLOYEES
WHERE  FIRST_NAME = 'David' and LAST_NAME = 'Lee';

--get me all information who is making more than 7000 salary
SELECT *FROM EMPLOYEES
WHERE SALARY > 7000;

--get me email of who is making less than 4000
SELECT EMAIL FROM EMPLOYEES
WHERE SALARY < 4000;

--get me all info who is working as IT_Prog or SA-REP
SELECT *FROM EMPLOYEES
WHERE JOB_ID ='IT_PROG' or JOB_ID = 'SA_REP';

--get me first-name, last-name salary who is making more than 5000 and less than10000
SELECT FIRST_NAME,LAST_NAME,SALARY
FROM EMPLOYEES
WHERE SALARY BETWEEN 5000 and 10000;

--get me all info where emp_id 130 to 170
SELECT *FROM EMPLOYEES
WHERE EMPLOYEE_ID BETWEEN 130 and 170;

--get me all info where employee_şd 135 176  154  129

SELECT *FROM EMPLOYEES
WHERE EMPLOYEE_ID in(135,176,154,129);

--get me city of where country_id IT,US, UK
SELECT CITY, COUNTRY_ID
FROM LOCATIONS
WHERE COUNTRY_ID in ('US','UK');

--get me info who is working as IT_PROG or SA_REP
SELECT COUNT (*) FROM EMPLOYEES
WHERE JOB_ID in ('IT_PROG','SA_REP');

--how many employeees making more than 8000
SELECT COUNT (*) FROM EMPLOYEES
WHERE SALARY> 8000;

--how many unique first names we hava ?
SELECT COUNT(DISTINCT  FIRST_NAME) FROM EMPLOYEES;

--get me all employees information based on who is making more salary to low salary
SELECT *FROM EMPLOYEES
ORDER BY SALARY DESC;

--desc 9-0 Z-A
--asc 0-9 A-Z


SELECT * FROM EMPLOYEES
ORDER BY SALARY ASC;

--get me all emp info order by alphabetical based on firstname
SELECT *
FROM EMPLOYEES
ORDER BY FIRST_NAME;

--NOTE: default order type is asc if you dont specify after column name

--get me all employees whose first name starts  with C
SELECT *
FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'D%';

SELECT *
FROM EMPLOYEES
WHERE FIRST_NAME LIKE '____';

--get me 5 letter first names where middle char is z;
SELECT *
FROM EMPLOYEES
WHERE FIRST_NAME LIKE '__z__';

--get me first name where second char is u;
SELECT*
FROM EMPLOYEES
WHERE FIRST_NAME LIKE '_u%';

--find me minimum salary
SELECT min(Salary) FROM EMPLOYEES;

--find me max salary
SELECT max(SALARY) FROM EMPLOYEES;

--find me avg salary
SELECT avg(SALARY)FROM EMPLOYEES;

--round
SELECT ROUND (avg(salary),2)FROM EMPLOYEES;

SELECT sum(SALARY)FROM EMPLOYEES;

--get me unique jop_ids
SELECT DISTINCT JOB_ID FROM EMPLOYEES;
--get me avarage salary for IT_PROG
SELECT AVG(SALARY)
FROM EMPLOYEES
WHERE JOB_ID= 'IT_PROG';

SELECT JOB_ID,AVG (SALARY)
FROM EMPLOYEES
GROUP BY JOB_ID;
CREATE TABLE ScrumTeam(
    EMPLOYEE_ID ınteger PRIMARY KEY,
    FİRSTNAME varchar (30) not null,
    LASTNAME varchar(30),
    JOBTİTLE VARCHAR(20)

);

SELECT *FROM SCRUMTEAM;
/*
 INSERT INTO tableName(column1,column2,...)
 VALUES(1,'Severus','Snape','Tester');
 */

 INSERT INTO SCRUMTEAM (EMPLOYEE_ID, FİRSTNAME, LASTNAME, JOBTİTLE)
VALUES (1,'Severus','Snape','Tester');

INSERT INTO SCRUMTEAM VALUES (2,'Harold','Finch','Developer');

INSERT INTO SCRUMTEAM VALUES (1,'Phoobe','Buffay','ScrumMaster');

INSERT INTO SCRUMTEAM VALUES (3,'Michael','Scofield','Developer');

SELECT *FROM books;
