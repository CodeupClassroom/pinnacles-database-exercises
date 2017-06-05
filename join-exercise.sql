use employees;

-- write a query that shows each department along with the name of the current manager for that department

select d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as 'Department Manager'
from departments as d
join dept_emp as de on d.dept_no = de.dept_no
join employees as e on e.emp_no = de.emp_no
join dept_manager as dm on e.emp_no = dm.emp_no
where dm.to_date > now()
order by d.dept_name;

-- Find the name of all departments currently managed by women.

select d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as 'Manager Name'
from departments d
join dept_manager dm on d.dept_no = dm.dept_no
join employees e on dm.emp_no = e.emp_no
where dm.to_date > now()
  and e.gender = 'F'
order by d.dept_name;


-- Find the current titles of employees currently working in the Customer Service department.

select t.title as Title, count(*) as Count
from titles as t
join employees as e on t.emp_no = e.emp_no
join dept_emp as de on e.emp_no = de.emp_no
join departments as d on de.dept_no = d.dept_no
where t.to_date > now()
  and de.to_date > now()
  and d.dept_name = 'Customer Service'
group by t.title;

-- Find the current salary of all current managers.

select
  d.dept_name as 'Department Name',
  concat(e.first_name, ' ', e.last_name) as 'Manager Name',
  s.salary as 'Salary'
from salaries as s
join employees as e on s.emp_no = e.emp_no
join dept_manager as dm on e.emp_no = dm.emp_no
join departments as d on dm.dept_no = d.dept_no
where s.to_date > now()
  and dm.to_date > now()
order by d.dept_name;

select * from salaries as s join employees as e on s.emp_no = e.emp_no;
