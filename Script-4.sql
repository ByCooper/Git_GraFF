--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employee_name, salary_2.monthly_salary from employee_salary_1 
join employees_1 on employee_salary_1.employee_id = employees_1.id 
join salary_2 on employee_salary_1.salary_id = salary_2.id;

--2. Вывести всех работников у которых ЗП меньше 2000.

select employee_name, salary_2.monthly_salary from employee_salary_1 
join employees_1 on employee_salary_1.employee_id = employees_1.id 
join salary_2 on employee_salary_1.salary_id = salary_2.id
where monthly_salary<2000;

--3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select employee_name, salary_2.monthly_salary from employee_salary_1 
join employees_1 on employee_salary_1.employee_id = employees_1.id 
full join salary_2 on employee_salary_1.salary_id = salary_2.id
where employee_name is null;

--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select employee_name, salary_2.monthly_salary from employee_salary_1 
join employees_1 on employee_salary_1.employee_id = employees_1.id 
full join salary_2 on employee_salary_1.salary_id = salary_2.id
where employee_name is null and monthly_salary < 2000;

-- 5. Найти всех работников кому не начислена ЗП.

select * from employee_salary_1 join employees_1 on employee_salary_1.employee_id = employees_1.id 
full join salary_2 on employee_salary_1.salary_id = salary_2.id
where monthly_salary is null;

--6. Вывести всех работников с названиями их должности.

select role_name, employees_1.employee_name from roles_employee 
join roles_1 on roles_employee.role_id = roles_1.id 
join employees_1 on roles_employee.employee_id = employees_1.id;

--7. Вывести имена и должность только Java разработчиков.

select role_name, employees_1.employee_name from roles_employee 
join roles_1 on roles_employee.role_id = roles_1.id 
join employees_1 on roles_employee.employee_id = employees_1.id
where role_name like 'Java%';

-- 8. Вывести имена и должность только Python разработчиков.

select role_name, employees_1.employee_name from roles_employee 
join roles_1 on roles_employee.role_id = roles_1.id 
join employees_1 on roles_employee.employee_id = employees_1.id
where role_name like 'Python%';

--9. Вывести имена и должность всех QA инженеров.

select role_name, employees_1.employee_name from roles_employee 
join roles_1 on roles_employee.role_id = roles_1.id 
join employees_1 on roles_employee.employee_id = employees_1.id
where role_name like '%qa%';

--10. Вывести имена и должность ручных QA инженеров.

select role_name, employees_1.employee_name from roles_employee 
join roles_1 on roles_employee.role_id = roles_1.id 
join employees_1 on roles_employee.employee_id = employees_1.id
where role_name like 'qa%';

--11. Вывести имена и должность автоматизаторов QA

select role_name, employees_1.employee_name from roles_employee 
join roles_1 on roles_employee.role_id = roles_1.id 
join employees_1 on roles_employee.employee_id = employees_1.id 
where role_name like 'Automation%';

--12. Вывести имена и зарплаты Junior специалистов

select role_name, employees_1.employee_name, salary_2.monthly_salary from roles_employee  
join employees_1 on roles_employee.employee_id = employees_1.id 
join roles_1 on roles_employee.role_id = roles_1.id
join employee_salary_1 on roles_employee.employee_id = employee_salary_1.id
join salary_2 on employee_salary_1.salary_id = salary_2.id
where role_name like '%junior';

--13. Вывести имена и зарплаты Middle специалистов

select role_name, employees_1.employee_name, salary_2.monthly_salary from roles_employee  
join employees_1 on roles_employee.employee_id = employees_1.id 
join roles_1 on roles_employee.role_id = roles_1.id
join employee_salary_1 on roles_employee.employee_id = employee_salary_1.id
join salary_2 on employee_salary_1.salary_id = salary_2.id
where role_name like '%middle';

--14. Вывести имена и зарплаты Senior специалистов

select role_name, employees_1.employee_name, salary_2.monthly_salary from roles_employee  
join employees_1 on roles_employee.employee_id = employees_1.id 
join roles_1 on roles_employee.role_id = roles_1.id
join employee_salary_1 on roles_employee.employee_id = employee_salary_1.id
join salary_2 on employee_salary_1.salary_id = salary_2.id
where role_name like '%senior';

--15. Вывести зарплаты Java разработчиков

select role_name, salary_2.monthly_salary from roles_employee 
join roles_1 on roles_employee.role_id = roles_1.id
join employee_salary_1 on roles_employee.employee_id = employee_salary_1.id
join salary_2 on employee_salary_1.salary_id = salary_2.id
where role_name like 'Java%';

--16. Вывести зарплаты Python разработчиков

select role_name, salary_2.monthly_salary from roles_employee 
join roles_1 on roles_employee.role_id = roles_1.id
join employee_salary_1 on roles_employee.employee_id = employee_salary_1.id
join salary_2 on employee_salary_1.salary_id = salary_2.id
where role_name like 'Python%';

--17. Вывести имена и зарплаты Junior Python разработчиков

select role_name, employees_1.employee_name, salary_2.monthly_salary from roles_employee  
join employees_1 on roles_employee.employee_id = employees_1.id 
join roles_1 on roles_employee.role_id = roles_1.id
join employee_salary_1 on roles_employee.employee_id = employee_salary_1.id
join salary_2 on employee_salary_1.salary_id = salary_2.id
where role_name like 'Python%junior';

--18. Вывести имена и зарплаты Middle JS разработчиков

select role_name, employees_1.employee_name, salary_2.monthly_salary from roles_employee  
join employees_1 on roles_employee.employee_id = employees_1.id 
join roles_1 on roles_employee.role_id = roles_1.id
join employee_salary_1 on roles_employee.employee_id = employee_salary_1.id
join salary_2 on employee_salary_1.salary_id = salary_2.id
where role_name like 'JS%middle';

--19. Вывести имена и зарплаты Senior Java разработчиков

select role_name, employees_1.employee_name, salary_2.monthly_salary from roles_employee  
join employees_1 on roles_employee.employee_id = employees_1.id 
join roles_1 on roles_employee.role_id = roles_1.id
join employee_salary_1 on roles_employee.employee_id = employee_salary_1.id
join salary_2 on employee_salary_1.salary_id = salary_2.id
where role_name like 'Java%senior';

--20. Вывести зарплаты Junior QA инженеров

select role_name, employees_1.employee_name, salary_2.monthly_salary from roles_employee join employees_1 on roles_employee.employee_id = employees_1.id 
join roles_1 on roles_employee.role_id = roles_1.id
join employee_salary_1 on roles_employee.employee_id = employee_salary_1.id
join salary_2 on employee_salary_1.salary_id = salary_2.id
where role_name like '%qa_junior';

--21. Вывести среднюю зарплату всех Junior специалистов

select avg(monthly_salary) from roles_employee join roles_1 on roles_employee.role_id = roles_1.id
join employee_salary_1 on roles_employee.employee_id = employee_salary_1.id
join salary_2 on employee_salary_1.salary_id = salary_2.id
where role_name like '%junior';

--22. Вывести сумму зарплат JS разработчиков

select sum(monthly_salary) from roles_employee join roles_1 on roles_employee.role_id = roles_1.id
join employee_salary_1 on roles_employee.employee_id = employee_salary_1.id
join salary_2 on employee_salary_1.salary_id = salary_2.id
where role_name like 'JS%';

--23. Вывести минимальную ЗП QA инженеров

select min(monthly_salary) from roles_employee join roles_1 on roles_employee.role_id = roles_1.id
join employee_salary_1 on roles_employee.employee_id = employee_salary_1.id
join salary_2 on employee_salary_1.salary_id = salary_2.id
where role_name like '%qa%';

--24. Вывести максимальную ЗП QA инженеров

select max(monthly_salary) from roles_employee join roles_1 on roles_employee.role_id = roles_1.id
join employee_salary_1 on roles_employee.employee_id = employee_salary_1.id
join salary_2 on employee_salary_1.salary_id = salary_2.id
where role_name like '%qa%';

-- 25. Вывести количество QA инженеров

select count(role_name) from roles_employee join roles_1 on roles_employee.role_id = roles_1.id
join employee_salary_1 on roles_employee.employee_id = employee_salary_1.id
join salary_2 on employee_salary_1.salary_id = salary_2.id
where role_name like '%qa%';

--26. Вывести количество Middle специалистов.

select count(role_name) from roles_employee join roles_1 on roles_employee.role_id = roles_1.id
join employee_salary_1 on roles_employee.employee_id = employee_salary_1.id
join salary_2 on employee_salary_1.salary_id = salary_2.id
where role_name like '%middle';

-- 27. Вывести количество разработчиков

select count(role_name) from roles_employee join roles_1 on roles_employee.role_id = roles_1.id
join employee_salary_1 on roles_employee.employee_id = employee_salary_1.id
join salary_2 on employee_salary_1.salary_id = salary_2.id
where role_name like '%developer%';

--28. Вывести фонд (сумму) зарплаты разработчиков.

select sum(monthly_salary) from roles_employee join roles_1 on roles_employee.role_id = roles_1.id
join employee_salary_1 on roles_employee.employee_id = employee_salary_1.id
join salary_2 on employee_salary_1.salary_id = salary_2.id
where role_name like '%developer%';

--29. Вывести имена, должности и ЗП всех специалистов по возрастанию

select role_name, employees_1.employee_name, salary_2.monthly_salary from roles_employee 
join employees_1 on roles_employee.employee_id = employees_1.id
join roles_1 on roles_employee.role_id = roles_1.id
join employee_salary_1 on roles_employee.employee_id = employee_salary_1.id
join salary_2 on employee_salary_1.salary_id = salary_2.id 
order by(monthly_salary);

--30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

select role_name, employees_1.employee_name, salary_2.monthly_salary from roles_employee 
join employees_1 on roles_employee.employee_id = employees_1.id
join roles_1 on roles_employee.role_id = roles_1.id
join employee_salary_1 on roles_employee.employee_id = employee_salary_1.id
join salary_2 on employee_salary_1.salary_id = salary_2.id 
where monthly_salary between 1700 and 2300
order by monthly_salary;

--31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

select role_name, employees_1.employee_name, salary_2.monthly_salary from roles_employee 
join employees_1 on roles_employee.employee_id = employees_1.id
join roles_1 on roles_employee.role_id = roles_1.id
join employee_salary_1 on roles_employee.employee_id = employee_salary_1.id
join salary_2 on employee_salary_1.salary_id = salary_2.id 
where monthly_salary<2300
order by monthly_salary;

--32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

select role_name, employees_1.employee_name, salary_2.monthly_salary from roles_employee 
join employees_1 on roles_employee.employee_id = employees_1.id
join roles_1 on roles_employee.role_id = roles_1.id
join employee_salary_1 on roles_employee.employee_id = employee_salary_1.id
join salary_2 on employee_salary_1.salary_id = salary_2.id 
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary;