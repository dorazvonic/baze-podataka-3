--brise delatnike u tablici s id 2 ,moze se stavit i naziv nekog drugog stupca(hourly_pay)
delete from employees
where employee_id = 2;
delete from employees
where hourly_pay < 10;

select *
from employees;

