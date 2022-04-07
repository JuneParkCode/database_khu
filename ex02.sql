DESCRIBE EMPLOYEES;

SELECT EMPLOYEE_ID, LAST_NAME, JOB_ID, HIRE_DATE AS "START_DATE"
FROM EMPLOYEES;

SELECT FIRST_NAME
FROM EMPLOYEES
WHERE SALARY > 12000;

SELECT LAST_NAME, DEPARTMENT_ID
FROM EMPLOYEES
WHERE EMPLOYEE_ID = 176;

SELECT LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY < 5000 OR SALARY > 12000;

SELECT LAST_NAME, JOB_ID, HIRE_DATE
FROM EMPLOYEES
WHERE HIRE_DATE BETWEEN '02-FEB-07' AND '05-MAY-07';

SELECT LAST_NAME, DEPARTMENT_ID
FROM EMPLOYEES
WHERE DEPARTMENT_ID BETWEEN 20 AND 50
ORDER BY LAST_NAME;

SELECT LAST_NAME, HIRE_DATE
FROM EMPLOYEES
WHERE HIRE_DATE BETWEEN '01-JAN-1994' AND '31-DEC-1994';

SELECT LAST_NAME, JOB_ID
FROM EMPLOYEES
WHERE MANAGER_ID IS NULL;

SELECT LAST_NAME, SALARY, COMMISSION_PCT
FROM EMPLOYEES
WHERE COMMISSION_PCT IS NOT NULL
ORDER BY SALARY DESC, COMMISSION_PCT DESC;

SELECT LAST_NAME
FROM EMPLOYEES
WHERE LAST_NAME LIKE '__a%';

SELECT LAST_NAME
FROM EMPLOYEES
WHERE LAST_NAME LIKE '%e%' OR LAST_NAME LIKE'%a%';

SELECT LAST_NAME, JOB_ID, SALARY
FROM EMPLOYEES
WHERE JOB_ID IN ('SA_REP', 'ST_CLERK') AND SALARY NOT IN (2500, 3500, 7000);

SELECT LAST_NAME, SALARY, COMMISSION_PCT
FROM EMPLOYEES
WHERE COMMISSION_PCT = 0.2;