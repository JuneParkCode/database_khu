DESCRIBE EMPLOYEES;
-- 01
SELECT EMPLOYEE_ID, LAST_NAME, JOB_ID, HIRE_DATE AS "START_DATE"
FROM EMPLOYEES;
-- 01 급여가$12,000를넘는사원의이름과급여를표
SELECT FIRST_NAME
FROM EMPLOYEES
WHERE SALARY > 12000;
-- 02 사원번호가176인  사원의이름과부서번호를표시
SELECT LAST_NAME, DEPARTMENT_ID
FROM EMPLOYEES
WHERE EMPLOYEE_ID = 176;
-- 03 급여가$5,000에서$12,000 사이에포함되지않는모든사원의이름과급여를표시
SELECT LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY < 5000 OR SALARY > 12000;
-- 04 2007년2월20일과2007년5월1일사이에입사한사원의이름, 업무ID 및시작일을표시하되, 시작일을기준으로오름차순으로정렬하는질의–날짜는DATE ‘2007-02-20’ 같은형태로표시하면됨
SELECT LAST_NAME, JOB_ID, HIRE_DATE
FROM EMPLOYEES
WHERE HIRE_DATE BETWEEN '02-FEB-07' AND '05-MAY-07';
-- 05 부서20 및50에 속하는모든사원의이름과부서번호를이름을기준으로영문자순으로표시
SELECT LAST_NAME, DEPARTMENT_ID
FROM EMPLOYEES
WHERE DEPARTMENT_ID BETWEEN 20 AND 50
ORDER BY LAST_NAME;
-- 06 급여가$5,000와$12,000 사이이고부서번호가20 또는50인 사원의이름과급여를나열하고, 열레이블을Employee와Monthly Salary로각각지정
SELECT LAST_NAME AS "Employee", SALARY AS "Monthly Salary"
FROM EMPLOYEES
WHERE SALARY BETWEEN 5000 AND 12000 AND DEPARTMENT_ID BETWEEN 20 AND 50
-- 07 1994년에입사한모든사원의이름과입사일을표시
SELECT LAST_NAME, HIRE_DATE
FROM EMPLOYEES
WHERE HIRE_DATE BETWEEN '01-JAN-1994' AND '31-DEC-1994';
-- 08 관리자가없는모든사원의이름과업무ID를표시
SELECT LAST_NAME, JOB_ID
FROM EMPLOYEES
WHERE MANAGER_ID IS NULL;
-- 09 커미션을받는모든사원의이름, 급여및커미션을급여및커미션을기준으로내림차순으로정렬하여표시
SELECT LAST_NAME, SALARY, COMMISSION_PCT
FROM EMPLOYEES
WHERE COMMISSION_PCT IS NOT NULL
ORDER BY SALARY DESC, COMMISSION_PCT DESC;
-- 10 이름의세번째문자가a인모든사원의이름을표시
SELECT LAST_NAME
FROM EMPLOYEES
WHERE LAST_NAME LIKE '__a%';
-- 11 이름에a와e가있는모든사원의이름을표시
SELECT LAST_NAME
FROM EMPLOYEES
WHERE LAST_NAME LIKE '%e%' OR LAST_NAME LIKE'%a%';
-- 12 업무가영업사원(SA_REP)또는사무원(ST_CLERK)이면서급여가$2,500, $3,500 또는$7,000가아닌모든사원의이름, 업무및급여를표시
SELECT LAST_NAME, JOB_ID, SALARY
FROM EMPLOYEES
WHERE JOB_ID IN ('SA_REP', 'ST_CLERK') AND SALARY NOT IN (2500, 3500, 7000);
-- 13 커미션비율이20%인모든사원의이름, 급여및커미션을표시
SELECT LAST_NAME, SALARY, COMMISSION_PCT
FROM EMPLOYEES
WHERE COMMISSION_PCT = 0.2;
