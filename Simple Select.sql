/*
  simple select this project is utlizing the select query from a database.
select 
	*
from 
	mcrutger_employees.departments

-- select all fields from departments
select * from departments;

-- select all but emp_no column from employees
select birth_date, first_name, last_name, gender, hire_date
from mcrutger_employees.employees

-- select all from salary with emp_no (employee number) is equal to 10001
select * from mcrutger_employees.salaries
where emp_no in (
select emp_no from mcrutger_employees.employees
where emp_no = 10001
)

-- select all from salaries... format future code like this... We cojoined the tables to grab/differentiate the two tables that share same name columns
select 
	employees.first_name,
	employees.last_name,
	salaries.salary 
from 
	mcrutger_employees.salaries 
inner join -- this will cause an error if both columns exist in both as long the select statement has * (it grabs everything)
	mcrutger_employees.employees on employees.emp_no = salaries.emp_no 
where 
	employees.emp_no  = 10002 
and 
	to_date = '9999-01-01'

select * from mcrutger_employees.employees where emp_no = 10002;

select * from mcrutger_employees.salaries where emp_no = 10002
*/