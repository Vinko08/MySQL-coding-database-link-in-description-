USE employees;
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Kellie' AND gender = 'F';
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Kellie'
        OR first_name = 'Aruna';
SELECT 
    *
FROM
    employees
WHERE
    gender = 'F'
        AND (first_name = 'Kellie'
        OR first_name = 'Aruna');
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('Cathie' , 'Mark', 'Nathan');
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('John' , 'Mark', 'Jacob');
SELECT 
    *
FROM
    employees
WHERE
    hire_date LIKE ('%2000%');
SELECT 
    *
FROM
    employees
WHERE
    emp_no LIKE ('1000_');
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%Jack%');
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT LIKE ('%Jack%');
SELECT 
    *
FROM
    employees
WHERE
    hire_date BETWEEN '1990-01-01' AND '2000-01-01';
SELECT 
    *
FROM
    employees
WHERE
    hire_date NOT BETWEEN ('1990-01-01') AND ('2000-01-01');
SELECT 
    *
FROM
    salaries;
SELECT 
    *
FROM
    salaries
WHERE
    salary BETWEEN ('66000') AND ('70000');
SELECT 
    *
FROM
    employees
WHERE
    emp_no NOT BETWEEN ('10004') AND ('10012');
SELECT 
    dept_name
FROM
    departments
WHERE
    dept_no BETWEEN ('d003') AND ('d006');
SELECT 
    first_name, hire_date
FROM
    employees
WHERE
    hire_date NOT BETWEEN ('1995-01-01') AND ('2005-01-01');
SELECT 
    first_name, last_name, emp_no
FROM
    employees
WHERE
    emp_no BETWEEN ('10000') AND ('11000');
SELECT 
    *
FROM
    employees
WHERE
    emp_no BETWEEN ('11000') AND ('11111') AND gender='F';
SELECT 
    first_name, last_name
FROM
    employees
WHERE
    first_name LIKE ('Mar%') AND gender='M';
SELECT 
    *
FROM
    employees
WHERE
    emp_no IS NULL;
SELECT 
    *
FROM
    employees
WHERE
    first_name IS NOT NULL;
SELECT 
    *
FROM
    employees
WHERE
    first_name IS NULL;
SELECT 
    dept_name
FROM
    departments
WHERE
    dept_no IS NOT NULL;
SELECT 
    *
FROM
    employees
WHERE
    first_name != 'Mark';
SELECT 
    *
FROM
    employees
WHERE
    hire_date >= '2000-01-01';
SELECT 
    *
FROM
    employees
WHERE
    hire_date <= '1985-02-01';
SELECT 
    *
FROM
    employees
WHERE
    hire_date >= '2000-01-01'
        AND gender = 'F';
SELECT 
    *
FROM
    salaries
WHERE
    salary > '150000';
SELECT 
    gender
FROM
    employees;
SELECT DISTINCT
    gender
FROM
    employees;
SELECT DISTINCT
    last_name
FROM
    employees;
SELECT DISTINCT
    first_name
FROM
    employees;
SELECT 
    COUNT(*)
FROM
    employees
WHERE
    first_name = 'Mark';
SELECT DISTINCT
    COUNT(salary)
FROM
    salaries;
SELECT 
    COUNT(emp_no)
FROM
    employees;
SELECT 
    *
FROM
    employees
WHERE
    first_name IS NULL;
SELECT 
    COUNT(first_name)
FROM
    employees;
SELECT 
    COUNT(DISTINCT first_name)
FROM
    employees;
SELECT 
    COUNT(salary)
FROM
    salaries
WHERE
    salary >= '100000';
SELECT 
    COUNT(*)
FROM
    dept_manager;
SELECT 
    COUNT(from_date)
FROM
    dept_manager;
SELECT 
    COUNT(*)
FROM
    departments;
SELECT 
    COUNT(DISTINCT dept_no)
FROM
    departments;
SELECT 
    COUNT( DISTINCT title)
FROM
    titles;
SELECT 
    *
FROM
    employees;
SELECT 
    first_name, last_name
FROM
    employees
ORDER BY first_name;
SELECT 
    *
FROM
    employees
ORDER BY first_name DESC;
SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC;
SELECT 
    *
FROM
    employees
ORDER BY first_name , last_name ASC;
SELECT 
    *
FROM
    employees
ORDER BY hire_date DESC;
SELECT 
    first_name
FROM
    employees
GROUP BY first_name;
SELECT DISTINCT
    first_name
FROM
    employees;
SELECT 
    COUNT(first_name)
FROM
    employees
GROUP BY first_name;

SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
GROUP BY first_name
ORDER BY first_name;

SELECT * FROM salaries;

SELECT 
    salary, COUNT(emp_no) AS emps_with_same_salary
FROM
    salaries
WHERE
    salary > '80000'
GROUP BY salary
ORDER BY salary;

SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
GROUP BY first_name
ORDER BY first_name ASC;
SELECT 
    salary, COUNT(emp_no) AS emps_with_same_salary
FROM
    salaries
WHERE
    salary > '80000'
GROUP BY salary
ORDER BY salary ASC;
SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
GROUP BY first_name
HAVING COUNT(first_name) > '250'
ORDER BY first_name;
SELECT 
    emp_no, ROUND(AVG(salary), 2) AS average_salary
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > '120000'
ORDER BY emp_no;
SELECT 
    *, ROUND(AVG(salary), 2) AS average_salary
FROM
    salaries
WHERE
    salary > '120000'
GROUP BY emp_no
ORDER BY emp_no;
SELECT 
    *, ROUND(AVG(salary), 2) AS average_salary
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000
ORDER BY emp_no;

SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC
LIMIT 10;
INSERT INTO employees 
(	emp_no,
    birth_date,
    first_name,
    last_name,
    gender,
    hire_date
 )VALUES
 (	999901,
    '1986-04-21',
    'John',
	'Smith',
	'M',
	'2011-01-01'
);
INSERT INTO employees
(	emp_no,
	birth_date,
    first_name,
    last_name,
    gender,
    hire_date
)VALUES
(	999902,
	'1973-3-26',
    'Patricia',
    'Lawrence',
    'F',
    '2005-01-01'
);
INSERT INTO employees
VALUES
(	999903,
	'1977-09-14',
    'Johnatan',
    'Creek',
    'M',
    '1999-01-01'
);
SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC
LIMIT 10;
UPDATE departments 
SET 
    dept_name = 'Data Analysis'
WHERE
    dept_no = 'd010';
SELECT 
    *
FROM
    departments
WHERE
    dept_no = 'd010';
UPDATE employees
SET 
	first_name ='Stella',
	last_name='Parkinson',
    birth_date='1990-12-31',
    gender='F'
WHERE emp_no=999901;
SELECT 
    *
FROM
    employees
WHERE
    emp_no = 999901;
COMMIT;
SELECT 
    *
FROM
    employees
WHERE
    emp_no = 999903;
DELETE FROM employees 
WHERE
    emp_no = 999903;
ROLLBACK;
SELECT 
    *
FROM
    employees
WHERE
    emp_no = 999903;
COMMIT;
CREATE TABLE IF NOT EXISTS employees_dup (
    emp_no INT,
    birth_date DATE,
    first_name VARCHAR(14),
    last_name VARCHAR(16),
    gender ENUM('M', 'F'),
    hire_date DATE
);
#insert into employees_dup
insert into employees_dup 
select * from employees limit 20;
#DUPLICATE FIRST ROW
INSERT INTO employees_dup 
VALUES (10001,'1953-09-02','Georgi','Facello', 'M', '1986-06-26');
SELECT 
    *
FROM
    employees_dup
ORDER BY emp_no ASC;
SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    NULL AS dept_no,
    NULL AS from_date
FROM
    employees_dup e
WHERE
    e.emp_no = 10001 
UNION ALL SELECT 
    NULL AS emp_no,
    NULL AS first_name,
    NULL AS last_name,
    m.dept_no,
    m.from_date
FROM
    dept_manager m;
SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    NULL AS dept_no,
    NULL AS from_date
FROM
    employees_dup e
WHERE
    e.emp_no = 10001 
UNION SELECT 
    NULL AS emp_no,
    NULL AS first_name,
    NULL AS last_name,
    m.dept_no,
    m.from_date
FROM
    dept_manager m;
#UNION ALL HAVE DUPLICATE ROWS
SELECT 
    d.dept_name, AVG(salary) AS average_salary
FROM
    departments d
        JOIN
    dept_manager m ON m.dept_no = d.dept_no
        JOIN
    salaries s ON m.emp_no = s.emp_no
GROUP BY d.dept_name
HAVING AVG(salary) > '60000'
ORDER BY average_salary DESC;
SELECT 
    e.gender, COUNT(dm.emp_no) AS gender_count
FROM
    employees e
        JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
GROUP BY gender
ORDER BY gender_count ASC;
#select the first and last name from the 'Employees' table for the same emp_no that can be found in the 'Departments Manager' table
SELECT 
    e.first_name, e.last_name, e.emp_no
FROM
    employees e
WHERE
    e.emp_no IN (SELECT 
            emp_no
        FROM
            dept_manager)
ORDER BY e.first_name;
#VIEWS
#CREATE VIEW WITH THE LAST CONTRACT SIGNED WITH EVERY EMPLOYEE
CREATE OR REPLACE VIEW v_dept_emp_latest_date AS
    SELECT 
        emp_no, MAX(from_date) AS from_date, MAX(to_date) AS to_date
    FROM
        dept_emp
    GROUP BY emp_no;
#CREATE VIEW WITH LAST CONTRCT SIGNED WITH EVERY EMPLOYEE THAT STILL WORKS IN COMPANY
CREATE OR REPLACE VIEW v_dept_emp_still_working AS
    SELECT 
        emp_no, from_date, MAX(to_date) AS to_date
    FROM
        dept_emp
    WHERE
        to_date = '9999-01-01'
    GROUP BY emp_no;
#HOW TO RUN VIEW
SELECT * FROM employees.v_dept_emp_still_working;
#CREATE THE STORED PROCEDURE (NONPARAMETRIC)
DELIMITER $$
CREATE PROCEDURE select_employees()
BEGIN
SELECT * FROM employees 
LIMIT 1000;
END $$
DELIMITER ;
#INVOKE THE STORED PROCEDURE
CALL employees.select_employees();
#CREATEING THE STORED PROCEDURE (INPUT PARAMETER)
DELIMITER $$
CREATE PROCEDURE emp_avg_salary(IN p_emp_no INTEGER)
BEGIN 
SELECT 
e.emp_no,e.first_name, e.last_name, round(avg(s.salary),2) AS average_salary
from employees e
join salaries s on e.emp_no=s.emp_no
where e.emp_no=p_emp_no;
end $$
DELIMITER ;
#INVOKE PROCEDURE
CALL emp_avg_salary(11300);
#CREATE THE STORED PROCEDURE (IN-OUT PARAMETER)
DELIMITER $$
CREATE PROCEDURE emp_avg_salary_out(in p_emp_no INTEGER, out p_avg_salary DECIMAL(10,2))
BEGIN 
	SELECT AVG(s.salary) INTO p_avg_salary 
    FROM employees e 
		join 
	salaries s on e.emp_no=s.emp_no 
where p_emp_no=e.emp_no;
END $$
DELIMITER ;
#INVOKE (IN-OUT PARAMETER) PROCEDURE (VARIABLES)
SET @p_avg_salary = 0;
CALL employees.emp_avg_salary_out(11300, @p_avg_salary);
SELECT @p_avg_salary;
#CREATE FUNCTION (IN PARAMETER EMP NO, OUT AVERAGE SALARY)
drop function if exists f_emp_avg_salary;
DELIMITER $$
CREATE FUNCTION f_emp_avg_salary (p_emp_no INTEGER) RETURNS DECIMAL(10,2)
DETERMINISTIC NO SQL READS SQL DATA
BEGIN
DECLARE v_avg_salary DECIMAL(10,2);
SELECT 
    AVG(s.salary) 
INTO v_avg_salary FROM
    salaries s
        JOIN
    employees e ON e.emp_no = s.emp_no
WHERE
    e.emp_no = p_emp_no; return v_avg_salary; 
END $$ 
DELIMITER ;
SELECT F_EMP_AVG_SALARY(11300);
#CREATE TRIGGERS 
#BEFORE INSERT IN SALARIES
DELIMITER $$
CREATE TRIGGER before_salaries_insert
BEFORE INSERT ON salaries
FOR EACH ROW
BEGIN 
IF NEW.salary < 0 THEN 
set new.salary=0;
end if;
end $$
delimiter ;
COMMIT;
insert into salaries values(10001,-92800,'2010-06-22','9999-01-01');
SELECT 
    *
FROM
    salaries
WHERE
    emp_no = 10001;
ROLLBACK;
#BEFORE UPDATE TRIGGER
DELIMITER $$
CREATE TRIGGER before_salaries_update
BEFORE UPDATE ON salaries FOR EACH ROW
BEGIN
if new.salary<0 then
set NEW.salary=OLD.salary;
end if;
end $$
delimiter ;
COMMIT;
SELECT 
    *
FROM
    salaries
WHERE
    emp_no = 10001;
UPDATE salaries 
SET 
    salary = - 50000
WHERE
    emp_no = 10001
        AND from_date = '2002-06-22';
UPDATE salaries 
SET 
    salary = 98765
WHERE
    emp_no = 10001
        AND from_date = '2002-06-22';
rollback;
#CREATE INDEX (FASTER WHEN WE SEARCH SOME DATA)
CREATE INDEX i_hire_date ON employees (hire_date);
SELECT 
    *
FROM
    employees
WHERE
    hire_date > '2000-01-01';
#SHOW INDEX
SHOW INDEX FROM employees from employees;
#DROP INDEX
ALTER TABLE employees
DROP INDEX i_hire_date;
#CASE
SELECT 
    emp_no,
    first_name,
    last_name,
    CASE
        WHEN gender = 'M' THEN 'Male'
        WHEN gender = 'F' THEN 'Female'
        ELSE 'N/A'
    END AS gender
FROM
    employees;
    
#PARTITION BY WINDOW FUNCTION
#ROW NUMBER FOR EVERY EMP NO AND SALARY FROM HIGHEST TO LOWEST
SELECT emp_no, salary,
ROW_NUMBER() OVER(PARTITION BY emp_no ORDER BY salary DESC) AS row_num
FROM salaries;
#ROW NUMBER FOR EVERY ROW (EVERY ROW INCREMENT BY 1) AND SALARY FROM HIGHEST TO LOWEST
SELECT		emp_no,
			salary,
            ROW_NUMBER() OVER(ORDER BY salary DESC) as row_num
FROM salaries;
SELECT 	emp_no,
		salary,
		ROW_NUMBER() OVER() AS row_num1,
        ROW_NUMBER() OVER(PARTITION BY emp_no ORDER BY salary ASC) AS row_num2,
        ROW_NUMBER() OVER(PARTITION BY emp_no ORDER BY salary DESC) AS row_num3,
        ROW_NUMBER() OVER(ORDER BY salary DESC) AS row_num4
	FROM
		salaries;
#ROW_NUM1:COUNT EVERY ROW STARTING FROM THE LOWEST SALARY VALUE AS HIGHEST VALUE
#ROW_NUM2:COUNT EVERY ROW FOR SAME EMP_NO AND STARTING FROM THE LOWEST SALARY VALUE
#ROW_NUM3:COUNT EVERY ROW FOR SAME EMP_NO AND STARTING FROM THE HIGHEST SALARY VALUE
#ROW_NUM4:COUNT EVERY ROW STARTING FROM THE HIGHEST SALARY VALUE

#WINDOW FUNCTION
SELECT	
		emp_no,
		salary,
        ROW_NUMBER() OVER w AS row_num
	FROM
		salaries
WINDOW w AS (PARTITION BY emp_no ORDER BY salary DESC);
#ROW_NUM:COUNT EVERY ROW FOR SAME EMP_NO STARTING FROM THE HIGHEST SALARY VALUE

#RANK
SELECT
	emp_no,
    salary,
    RANK() OVER (PARTITION BY emp_no ORDER BY salary DESC) AS rank_num
FROM  salaries
    WHERE emp_no=10560;
#RANK_NUM:SAME NUMBER FOR IDENTICAL CELL IN TABLE(SAME NUMBER SAME VALUES)
#E.G. 	 11000 1
		#11001 2
        #11001 2
        #11002 4
#DENSE_RANK
#Write a query that upon execution retrieves a result set containing all salary values that employee 10560 has ever signed a contract for. Use a window function to rank all salary values from highest to lowest in a way that equal salary values bear the same rank and that gaps in the obtained ranks for subsequent rows are not allowed.
SELECT
		emp_no,
        salary,
        DENSE_RANK() OVER w1 AS dense_rank_num
        FROM salaries
        WHERE emp_no=10560
        WINDOW w1 AS (PARTITION BY emp_no ORDER BY salary DESC);

#GROUP BY AND WINDOW
#WRITE A QUERY THAT RETRIEVES A RESULT SET CONTAINING THE LOWEST SALARY VALUES FOR EVERY EMP_NO
SELECT
		e.emp_no,
        MIN(e.salary) AS min_salary
	FROM( SELECT 
					emp_no,
                    salary,
                    ROW_NUMBER() OVER w AS row_num1
			FROM salaries
            WINDOW w AS(PARTITION BY emp_no ORDER BY salary ASC)) e
		GROUP BY e.emp_no;
#Write a query that ranks the salary values in descending order of all contracts signed by employees numbered between 10500 and 10600 inclusive. Let equal salary values for one and the same employee bear the same rank. Also, allow gaps in the ranks obtained for their subsequent rows.
#Use a join on the “employees” and “salaries” tables to obtain the desired result.
SELECT 	
		e.emp_no,
        s.salary,
        RANK() OVER w2 AS rank_num1
FROM salaries s
	JOIN
    employees e ON e.emp_no=s.emp_no
    WHERE s.emp_no BETWEEN 10500 AND 10600
    WINDOW w2 AS(PARTITION BY e.emp_no ORDER BY s.salary DESC);
#LAG()-RETURNS SPECIFIC VALUE FROM A SPECIFIC COLUMN THAT PRECEDES THE CURRENT ROW
#LEAD()-RETURNS SPECIFIC VALUES FROM A SPECIFIC COLUMN THAT FOLLOWS THE CURRENT ROW

#Write a query that can extract the following information from the "employees" database:
#- the salary values (in ascending order) of the contracts signed by all employees numbered between 10500 and 10600 inclusive
#- a column showing the previous salary from the given ordered list
#- a column showing the subsequent salary from the given ordered list
#- a column displaying the difference between the current salary of a certain employee and their previous salary
#- a column displaying the difference between the next salary of a certain employee and their current salary
#Limit the output to salary values higher than $80,000 only.
#Also, to obtain a meaningful result, partition the data by employee number.
SELECT 
		emp_no,
        salary,
        LAG(salary) OVER w AS previous_salary,
        LEAD(salary) OVER w AS next_salary,
        (salary - LAG(salary) OVER w) AS diff_current_previous_salary,
        (LEAD(salary) OVER w - salary) AS diff_next_current_salary
FROM salaries
	WHERE emp_no BETWEEN 10500 AND 10600 AND salary>80000
	WINDOW w AS(PARTITION BY emp_no ORDER BY salary ASC);