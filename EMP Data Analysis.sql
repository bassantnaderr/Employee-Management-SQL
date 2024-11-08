

-- 1. Display the details of those managers who do not have any person working under them.

SELECT emp1.job, emp1.empno,emp2.ename 
FROM emp AS emp1
JOIN emp AS emp2
ON emp1.empno = emp2.mgr
WHERE emp1.job LIKE 'MANAGER' AND emp2.empno IS NULL ;



-- 2. Display the details of those employees who are in the sales department and have a grade of 3.

SELECT e.*, d.dname
FROM emp AS e
JOIN dept AS d
ON e.deptno = d.deptno
JOIN salgrade AS s 
ON e.sal BETWEEN s.losal AND s.hisal
WHERE d.dname = 'sales' AND s.grade = '3';


-- 3. Display those employees whose names contain no fewer than 4 characters.

SELECT ename
FROM emp
WHERE length(ename) >= '4';

-- 4. Display those departments whose names start with 'A' and locations end with 'K'.

SELECT *
FROM dept
WHERE dname LIKE 'A%' AND loc LIKE '%K' ;


-- 5. Display those employees whose salary is more than 3000 after a 20% increment.

SELECT *
FROM (
    SELECT *, sal * 1.2 AS new_sal
    FROM emp
) AS increment
WHERE new_sal > 3000;


-- 6. Display all employees along with their department names.

SELECT e.ename, d.dname
FROM emp AS e
JOIN dept AS d
ON e.deptno = d.deptno;


-- 7. Display employees who are working in the sales department.

SELECT e.ename, d.dname
FROM emp AS e
JOIN dept AS d
ON e.deptno = d.deptno
WHERE dname = 'Sales';

-- 8. Display employee name, department name, salary, and commission for those employees whose salary is between 2000 and 5000 and location is 'Chicago'.

SELECT e.ename, d.dname, e.sal, e.comm
FROM emp AS e
JOIN dept AS d
ON e.deptno = d.deptno
WHERE d.loc = 'Chicago' AND sal BETWEEN 2000 AND 5000;

-- 9. Display those employees whose salary is greater than their manager's salary.

SELECT emp1.empno, emp1.ename, emp2.ename AS manager_name
FROM emp AS emp1
JOIN emp AS emp2
ON emp1.mgr = emp2.empno
WHERE emp1.sal > emp2.sal;

-- 10. Display grade and employee names for department numbers 10 or 30 where the grade is not 4 and they joined before 31-Dec-1982.

SELECT s.grade, e.ename
FROM emp AS e
JOIN dept AS d
ON e.deptno = d.deptno
JOIN salgrade AS s 
ON e.sal BETWEEN s.losal AND s.hisal
WHERE e.hiredate < '1982-12-31' AND s.grade != '4' AND d.deptno IN (10 , 30);

-- 11.Update the salary of each employee by a 10% increment if they are not eligible for commission.

SELECT ename, CASE WHEN comm IS NULL THEN sal * 1.1 END AS sal_increase
FROM emp;

UPDATE emp
SET sal = sal * 1.1
WHERE comm IS NOT NULL;

-- 12. Display those employees who joined before 31-Dec-1982 and whose department location is New York or Chicago.

SELECT e.ename
FROM emp AS e
JOIN dept AS d
ON e.deptno = d.deptno
WHERE e.hiredate < '1982-12-31' AND d.loc IN ( 'New york', 'Chicago');

-- 13. Display employee name, job, department name, and location for all who are working as managers.

SELECT e.ename, e.job, d.dname, d.loc
FROM emp AS e
JOIN dept AS d
ON e.deptno = d.deptno
WHERE e.job = 'Manager';

-- 14. list all employees' names, jobs, salaries, grades, and department names except 'CLERK'. Sort by salary in descending order.

SELECT e.ename, s.grade, e.job, e.sal, d.dname
FROM emp AS e
JOIN dept AS d
ON e.deptno = d.deptno
JOIN salgrade AS s 
ON e.sal BETWEEN s.losal AND s.hisal
WHERE d.dname != 'Clerk'
ORDER BY e.sal DESC;

-- 15. Find the top 5 earners in the company.

SELECT ename, sal
FROM emp
ORDER BY sal DESC
LIMIT 5;

-- 16. Display those employees whose salary equals the maximum and minimum salaries.

SELECT *
FROM emp
WHERE sal = (SELECT MAX(sal) FROM emp)
   OR sal = (SELECT MIN(sal) FROM emp);

-- 17. Select the count of employees in each department where the count is greater than 3.

SELECT d.dname, COUNT(*) AS count
FROM emp AS e
JOIN dept AS d
ON e.deptno = d.deptno
GROUP BY d.dname
HAVING COUNT(*) > 3;

-- 18. Display names of managers whose salary is more than the average salary of employees.

SELECT ename
FROM emp 
WHERE job = 'Manager' AND sal > (SELECT AVG(sal) FROM emp);

-- 19. Display all employee names with the total salary of the company for each employee.

SELECT ename, sal, SUM(SAL) OVER() AS total_salary
FROM emp;


