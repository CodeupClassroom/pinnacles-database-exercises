SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM dept_manager
)
LIMIT 10;


# SELECT first_name, last_name, birth_date
# FROM employees
# WHERE emp_no IN (110022, 110039, ...)
# LIMIT 10;

select emp_no from dept_manager;


-- the name of the departments managed by women

select *
from departments
where dept_no in (
  select dept_no from dept_manager
  where emp_no in (
    select emp_no from employees where gender = 'F'
  )
);

-- the names of current women managers

select *
from employees
where gender = 'F'
  and emp_no in (
    select emp_no
    from dept_manager
    where to_date > now()
  );

-- use a subquery when you only need information from one table
-- but need filter results by another table

-- Find all the employees with the same hire date as employee 101010 using a sub-query.

select *
from employees where hire_date = (
  select hire_date from employees where emp_no = 101010
);

-- Find all the titles held by all employees with the first name Aamod.

select title
from titles
where emp_no in (
  select emp_no from employees
  where first_name = 'Aamod'
);

-- Find all the department managers that are female.

select * from employees
where gender = 'F'
  and emp_no in (
  select emp_no from dept_manager where to_date > now()
);
