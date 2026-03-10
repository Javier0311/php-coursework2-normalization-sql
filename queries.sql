SELECT AVG(employees.salary) AS 'Average Salary', SUM(employees.salary) AS 'Total Salary' FROM employees;

SELECT COUNT(*) AS 'Employee Count' FROM employees WHERE Deptcode = '3D';

SELECT * FROM employees WHERE Name LIKE 'B%' AND LENGTH(Name) >= 4;

SELECT * FROM employees WHERE Job = 'Executive Secretary';

SELECT * FROM employees WHERE hiredate BETWEEN '2018-01-01' AND '2020-12-31' ORDER BY Name;

SELECT MIN(salary) AS 'Minimum Salary', MAX(salary) AS 'Maximum Salary' FROM employees;

SELECT MIN(hiredate) AS 'Earliest Hire Date', MAX(hiredate) AS 'Latest Hire Date' FROM employees;

SELECT departments.Deptlocation, COUNT(employees.Empno) AS 'Count' FROM employees INNER JOIN departments ON employees.Deptcode = departments.Deptcode GROUP BY departments.Deptlocation;

SELECT departments.Deptlocation, AVG(employees.salary) AS 'Average Salary' FROM employees INNER JOIN departments ON employees.Deptcode = departments.Deptcode GROUP BY departments.Deptlocation;

SELECT departments.Deptlocation, SUM(employees.salary) AS 'Total Salary' FROM employees INNER JOIN departments ON employees.Deptcode = departments.Deptcode GROUP BY departments.Deptlocation HAVING SUM(employees.salary) > 100000;

SELECT employees.Name, employees.Job, employees.hiredate, employees.salary, departments.Deptlocation FROM employees INNER JOIN departments ON employees.Deptcode = departments.Deptcode WHERE departments.Deptlocation = 'Santiago';

SELECT departments.Deptlocation, employees.Job, SUM(employees.salary) AS 'Total Salary' FROM employees INNER JOIN departments ON employees.Deptcode = departments.Deptcode GROUP BY departments.Deptlocation, employees.Job;