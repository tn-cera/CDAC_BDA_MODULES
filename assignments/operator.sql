select * from jobs;

-- Q.1 Write a query to display the job titles whose MAX_SALARY is less than or equal to 20000.Write a query to find employees with a salary greater than 5000.

select job_title from jobs
where MAX_SALARY <=20000;

select first_name,last_name
from employees
where SALARY > 5000;

-- Q.2 Write a query to display employees who do not belong to department 90.

select first_name , last_name 
from employees
where DEPARTMENT_ID <> 90;

-- Q.3 Write a query to find employees with a salary less than 4000.

select first_name,last_name,salary
from employees
where salary < 4000;

-- Q.4 Write a query to display employees whose COMMISSION_PCT is not null.Write a query to display employees whose MANAGER_ID is null.

select first_name,last_name,COMMISSION_PCT 
from employees
where COMMISSION_PCT  is not null;

select first_name,last_name
from employees
where MANAGER_ID is null;

-- Q.5 Write a query to find employees in departments with IDs greater than 50.

select first_name,last_name,DEPARTMENT_ID
from employees
where DEPARTMENT_ID > 50;

-- Q.6 Write a query to display the employees with DEPARTMENT_ID equal to 90.

select first_name,last_name,department_id
from employees
where DEPARTMENT_ID = 90;

-- Q.7 Write a query to display employees in department ID 100, 200, or 300.
select first_name,last_name,department_id
from employees
where DEPARTMENT_ID in (100,200,300);

-- Q.8 Write a query to display jobs where MAX_SALARY is greater than or equal to 10000.
select job_title
from jobs
where MAX_SALARY >= 10000;

-- Q.9 Write a query to find departments where the location is 1700
select * from departments;

select department_name
from departments
where LOCATION_ID = 1700;

-- Q.10 Write a query to find countries where REGION_ID is greater than or equal to 2.
select * from countries;

select country_name
from countries
where REGION_ID >= 2;

-- Q.11 Write a query to find employees whose MANAGER_ID is less than 103.

select first_name,last_name
from employees
where MANAGER_ID <103;

-- Q.12 Write a query to find employees whose SALARY is greater than or equal to 8000.

select first_name,last_name
from employees
where salary >=8000;

-- Q.13 Write a query to find employees in departments with IDs less than or equal to 60

select first_name,last_name
from employees
where DEPARTMENT_ID <= 60;

-- Q.14 Write a query to find employees whose SALARY is between 4000 and 8000.

select first_name,last_name,salary
from employees
where salary between 4000 and 8000;

-- Q.15 Write a query to display the job titles where the minimum salary is greater than 6000.
select job_title,MIN_SALARY
from jobs
where MIN_SALARY>6000;

-- Q.16 Write a query to find employees whose salary is not equal to 5000.

select first_name,last_name,salary
from employees
where SALARY <> 5000;

-- Q.17 Write a query to display departments whose MANAGER_ID is not 0.

select * from departments;

select department_name
from departments
where MANAGER_ID <> 0;

-- Q.18 Write a query to display the countries where REGION_ID is not equal to 2.

select * from countries;

select country_name,REGION_ID
from countries
where REGION_ID <>2;

-- Q.19 Write a query to find employees whose salary is exactly 6000.

select first_name,last_name,salary
from employees
where salary = 6000;

-- Q.20 Write a query to display employees where SALARY is greater than 10000 or DEPARTMENT_ID is 60.

select first_name,last_name,salary,department_id
from employees
where SALARY > 10000 or DEPARTMENT_ID = 60;

-- Q.21 Write a query to find employees whose salary is less than or equal to 3000.

select first_name,last_name,salary
from employees
where salary <=3000;

-- Q.22 Write a query to display employees where the DEPARTMENT_ID is equal to 60 and the MANAGER_ID is greater than 102.
select first_name,last_name,salary,DEPARTMENT_ID,MANAGER_ID
from employees
where DEPARTMENT_ID = 60 and MANAGER_ID > 102;

-- Q.23 Write a query to display employees where DEPARTMENT_ID is 100 and SALARY is greater than 10000.
select department_id
from departments
where DEPARTMENT_ID not in(60,70,80);

-- Q.24 Write a query to display job titles where the minimum salary is not less than 5000.
select * from jobs;
select job_title,MIN_SALARY
from jobs
where MIN_SALARY < 5000;

-- Q.25 Write a query to find employees whose department ID is not equal to 100 or 60.

select first_name,last_name,DEPARTMENT_ID
from employees
where DEPARTMENT_ID <> 100 and DEPARTMENT_ID <> 60;

-- Q.26 Write a query to display employees where LAST_NAME ends with 'son'.

select last_name
from employees
where LAST_NAME like '%son';

-- Q.27 Write a query to display employees with FIRST_NAME starting with 'J' using the LIKE operator.

select first_name
from employees
where FIRST_NAME like 'J%';

-- Q.28 Write a query to display employees where SALARY is greater than 8000 and DEPARTMENT_ID is 90.
select first_name,salary
from employees
where SALARY > 8000 and DEPARTMENT_ID = 90;

-- Q.29 Write a query to display jobs where the MIN_SALARY is less than 5000 or MAX_SALARY is greater than 20000.
select min_salary,max_salary
from jobs
where MIN_SALARY <5000 or MAX_SALARY>20000;

-- Q.30 Write a query to display employees where SALARY is greater than 6000 and DEPARTMENT_ID is either 50 or 60.

select first_name,salary,DEPARTMENT_ID
from employees
where SALARY > 6000 and DEPARTMENT_ID in (50,60);

-- Q.31 Write a query to display countries where COUNTRY_NAME starts with 'C' and REGION_ID is greater than 1.

select country_name,region_id
from countries
where COUNTRY_NAME like 'C%' and REGION_ID >1;

-- Q.32 Write a query to display employees where FIRST_NAME contains 'an' and SALARY is greater than 4000.

select first_name,salary
from employees
where FIRST_NAME like '%an%' and salary > 4000;

-- Q.33 Write a query to display departments where the location is either 1700 or 1800 using the IN operator.
select DEPARTMENT_NAME,LOCATION_ID 
from departments
where LOCATION_ID in (1700,1800);

-- Q.34 Write a query to display employees where FIRST_NAME starts with 'A' and LAST_NAME contains 'son'.
select first_name,last_name
from employees
where FIRST_NAME like 'A%' and LAST_NAME like '%son%';

-- Q.36 Write a query to display employees where SALARY is greater than 5000 or DEPARTMENT_ID is 100.
select first_name,salary
from employees
where salary > 5000 or DEPARTMENT_ID = 100;

-- Q.37 Write a query to display countries where COUNTRY_NAME does not start with 'A' and REGION_ID is greater than 1.

SELECT 
    COUNTRY_ID,
    COUNTRY_NAME,
    REGION_ID
FROM HR.COUNTRIES
WHERE COUNTRY_NAME NOT LIKE 'A%'
  AND REGION_ID > 1;


-- 38. Write a query to find employees who work in departments with DEPARTMENT_ID greater than 50 and earn more than 7000.

SELECT 
    EMPLOYEE_ID,
    FIRST_NAME,
    SALARY,
    DEPARTMENT_ID
FROM HR.EMPLOYEES
WHERE DEPARTMENT_ID > 50
  AND SALARY > 7000;

-- 39. Write a query to display employees whose salary is either greater than 10,000 or less than 3,000.
SELECT 
    EMPLOYEE_ID,
    FIRST_NAME,
    SALARY
FROM HR.EMPLOYEES
WHERE SALARY > 10000
   OR SALARY < 3000;

-- 40. Write a query to display employees whose salary is greater than 6000 and COMMISSION_PCT is null or less than 0.2.

SELECT 

    EMPLOYEE_ID,
    FIRST_NAME,
    SALARY,
    COMMISSION_PCT
FROM HR.EMPLOYEES
WHERE SALARY > 6000
  AND (COMMISSION_PCT IS NULL OR COMMISSION_PCT < 0.2);

-- 41. Write a query to display employees whose hire date is within the last 10 years.

SELECT 
    EMPLOYEE_ID,
    FIRST_NAME,
    HIRE_DATE
FROM HR.EMPLOYEES
WHERE HIRE_DATE >= DATE_SUB(CURDATE(), INTERVAL 10 YEAR);

-- 42. Write a query to display employees who either belong to department 50 or have a salary greater than the average salary of their department.
SELECT 
    EMPLOYEE_ID,
    FIRST_NAME,
    SALARY,
    DEPARTMENT_ID
FROM HR.EMPLOYEES E

WHERE DEPARTMENT_ID = 50
   OR SALARY > (
       SELECT AVG(SALARY)
       FROM HR.EMPLOYEES
       WHERE DEPARTMENT_ID = E.DEPARTMENT_ID
   );


-- 43. Write a query to find all countries where the REGION_ID is greater than 2 but not equal to 4.

SELECT 
    COUNTRY_ID,
    COUNTRY_NAME,
    REGION_ID
FROM HR.COUNTRIES

WHERE REGION_ID > 2
  AND REGION_ID <> 4;


-- 44. Write a query to display all employees where SALARY is not in the range of 5000 to 10000.

SELECT 
    EMPLOYEE_ID,
    FIRST_NAME,
    SALARY
FROM HR.EMPLOYEES
WHERE SALARY NOT BETWEEN 5000 AND 10000;

-- 45. Write a query to display employees whose HIRE_DATE is not between '1995-01-01' and '2005-12-31'.
SELECT 
    EMPLOYEE_ID,
    FIRST_NAME,
    HIRE_DATE
FROM HR.EMPLOYEES
WHERE HIRE_DATE NOT BETWEEN '1995-01-01' AND '2005-12-31';
-- 46. Write a query to display employees who earn a salary greater than 5000 but are not in department 50.

SELECT 

    EMPLOYEE_ID,
    FIRST_NAME,
    SALARY,
    DEPARTMENT_ID

FROM HR.EMPLOYEES

WHERE SALARY > 5000
  AND DEPARTMENT_ID <> 50;


-- 47. Write a query to display employees whose salary is either greater than 10,000 or less than 3,000 but not equal to 7,000.

SELECT 
    EMPLOYEE_ID,
    FIRST_NAME,
    SALARY
FROM HR.EMPLOYEES
WHERE (SALARY > 10000 OR SALARY < 3000)
  AND SALARY <> 7000;

-- 48. Write a query to display job titles where the minimum salary is greater than 5000 or the maximum salary is less than 15,000.
SELECT 

    JOB_ID,
    JOB_TITLE,
    MIN_SALARY,
    MAX_SALARY

FROM HR.JOBS

WHERE MIN_SALARY > 5000
   OR MAX_SALARY < 15000;


-- 49. Write a query to find jobs where the minimum salary is at least half of the maximum salary.
SELECT 
    JOB_ID,
    JOB_TITLE,
    MIN_SALARY,
    MAX_SALARY
FROM HR.JOBS
WHERE MIN_SALARY >= MAX_SALARY / 2;

-- 50. Write a query to display employees who were hired after '1990-01-01' and have a MANAGER_ID greater than 100.

SELECT 
    EMPLOYEE_ID,
    FIRST_NAME,
    HIRE_DATE,
    MANAGER_ID
FROM HR.EMPLOYEES
WHERE HIRE_DATE > '1990-01-01'
  AND MANAGER_ID > 100;


-- 51. Write a query to display employees where SALARY is greater than 10000 and the JOB_ID is either 'IT_PROG' or 'ST_CLERK'.

SELECT 
    EMPLOYEE_ID,
    FIRST_NAME,
    JOB_ID,
    SALARY
FROM HR.EMPLOYEES
WHERE SALARY > 10000
  AND JOB_ID IN ('IT_PROG', 'ST_CLERK');
