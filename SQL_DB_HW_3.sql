-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами
select employee_name, monthly_salary 
from employees e
join employee_salary es 
on e.id = es.employee_id 
join salary s
on es.salary_id = s.id 

-- 2. Вывести всех работников у которых ЗП меньше 2000
select employee_name, monthly_salary 
from employees e
join employee_salary es 
on e.id = es.employee_id 
join salary s
on es.salary_id = s.id 
where monthly_salary < 2000;

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает)
 select e.employee_name, es.employee_id, s.id, s.monthly_salary
 from employees e 
 full join employee_salary es 
 on e.id = es.employee_id 
 full join salary s 
 on es.salary_id = s.id
 where e.employee_name is null; # из-за отсутствия реляции в таблицах roles_employee и employee_salary
# в табл. employee_id могут быть внесены несуществующие employee_id и им назначена заработная плата

-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает)
 select e.employee_name, es.employee_id, s.id, s.monthly_salary
 from employees e 
 full join employee_salary es 
 on e.id = es.employee_id 
 full join salary s 
 on es.salary_id = s.id
 where e.employee_name is null and s.monthly_salary < 2000;
 
 -- 5. Найти всех работников кому не начислена ЗП
select employee_name, monthly_salary 
from employees e
left join employee_salary es 
on e.id = es.employee_id 
left join salary s
on es.salary_id = s.id
where monthly_salary is null;

--6а. Вывести всех работников с названиями их должности /тех у кого название должности указано
select e.employee_name, r.role_name
from employees e
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id;

--6б. Вывести всех работников с названиями их должности / и тех у кого название должности не указано
select e.employee_name, r.role_name
from employees e
full join roles_employee re 
on e.id = re.employee_id 
full join roles r 
on re.role_id = r.id
where e.employee_name is not null;

-- 7. Вывести имена и должность только Java разработчиков
select e.employee_name, r.role_name
from employees e
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id
where role_name like '% Java %';

-- 8. Вывести имена и должность только Python разработчиков
select e.employee_name, r.role_name
from employees e
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id
where role_name like '%Python%';

--9. Вывести имена и должность всех QA инженеров
select e.employee_name, r.role_name
from employees e
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id
where role_name like '%QA%';

-- 10. Вывести имена и должность ручных QA инженеров
select e.employee_name, r.role_name
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join roles r
on re.role_id = r.id 
where role_name like '%Manual QA%';

-- 11. Вывести имена и должность автоматизаторов QA
select e.employee_name, r.role_name 
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id 
where r.role_name like 'Automation QA%';

--12. Вывести имена и зарплаты Junior специалистов
select e.employee_name, s.monthly_salary, r.role_name
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join roles r
on re.role_id = r.id 
join employee_salary es 
on e.id = es.employee_id 
join salary s 
on es.salary_id = s.id 
where role_name like '%Junior%';

-- 13. Вывести имена и зарплаты Middle специалистов
select e.employee_name, s.monthly_salary
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join roles r
on re.role_id = r.id 
join employee_salary es 
on e.id = es.employee_id 
join salary s 
on es.salary_id = s.id 
where r.role_name like '%Middle%';

-- 14. Вывести имена и зарплаты Senior специалистов
select e.employee_name, s.monthly_salary
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join roles r
on re.role_id = r.id 
join employee_salary es 
on e.id = es.employee_id 
join salary s 
on es.salary_id = s.id 
where r.role_name like '%Senior%';

-- 15. Вывести зарплаты Java разработчиков
select s.monthly_salary
from roles r
join roles_employee re 
on r.id = re.role_id 
join employee_salary es 
on re.employee_id =es.employee_id 
join salary s 
on es.salary_id =s.id 
where r.role_name like '% Java %';

-- 16. Вывести зарплаты Python разработчиков
select s.monthly_salary
from roles r
join roles_employee re 
on r.id = re.role_id 
join employee_salary es 
on re.employee_id =es.employee_id 
join salary s 
on es.salary_id =s.id 
where r.role_name like '%Python%';

--17. Вывести имена и зарплаты Junior Python разработчиков
select e.employee_name, s.monthly_salary
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id 
join employee_salary es 
on re.employee_id = es.employee_id
join salary s 
on es.salary_id = s.id 
where r.role_name like '%Junior Python%';

 --18. Вывести имена и зарплаты Middle JS разработчиков
select e.employee_name, s.monthly_salary
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id 
join employee_salary es 
on re.employee_id = es.employee_id
join salary s 
on es.salary_id = s.id 
where r.role_name like '%Middle JavaScript%';

--19. Вывести имена и зарплаты Senior Java разработчиков
select e.employee_name, s.monthly_salary
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id 
join employee_salary es 
on re.employee_id = es.employee_id
join salary s 
on es.salary_id = s.id 
where r.role_name like '%Senior Java%';

--20. Вывести зарплаты Junior QA инженеров
select s.monthly_salary
from roles r
join roles_employee re 
on r.id = re.role_id 
join employee_salary es 
on re.employee_id =es.employee_id 
join salary s 
on es.salary_id =s.id 
where r.role_name like '%Junior%QA%';

-- 21. Вывести среднюю зарплату всех Junior специалистов
select AVG (s.monthly_salary) as AVG_salary_junior  
from roles r
join roles_employee re 
on r.id = re.role_id 
join employee_salary es 
on re.employee_id =es.employee_id 
join salary s 
on es.salary_id =s.id 
where r.role_name like '%Junior%';

--22. Вывести сумму зарплат JS разработчиков
select sum (s.monthly_salary) as sum_salary_js 
from roles r
join roles_employee re 
on r.id = re.role_id 
join employee_salary es 
on re.employee_id =es.employee_id 
join salary s 
on es.salary_id =s.id 
where r.role_name like '%JavaScript%';

--23. Вывести минимальную ЗП QA инженеров
select min (s.monthly_salary) as min_salary_QA 
from roles r
join roles_employee re 
on r.id = re.role_id 
join employee_salary es 
on re.employee_id =es.employee_id 
join salary s 
on es.salary_id =s.id 
where r.role_name like '%QA%';

--24. Вывести максимальную ЗП QA инженеров
select max (s.monthly_salary) as max_salary_QA
from roles_employee re 
join roles r 
on re.role_id = r.id 
join employee_salary es 
on re.employee_id = es.employee_id 
join salary s 
on es.salary_id = s.id 
where r.role_name like '%QA%';

-- 25. Вывести количество QA инженеров
select count (employee_id) as count_QA
from roles_employee re 
join roles r 
on re.role_id =r.id 
where r.role_name like '%QA%';

-- 26. Вывести количество Middle специалистов
select count (r.role_name) as count_middle
from roles_employee re 
join roles r 
on re.role_id =r.id 
where r.role_name like '%Middle%'

-- 27. Вывести количество разработчиков 
select count (r.role_name) as count_developers
from roles_employee re 
join roles r 
on re.role_id = r.id 
where r.role_name like '%developer%';

--28. Вывести фонд (сумму) зарплаты разработчиков
select sum (monthly_salary) as sum_salary_dev
from roles r 
join roles_employee re 
on r.id = re.role_id 
join employee_salary es 
on re.employee_id = es.employee_id 
join salary s 
on es.salary_id = s.id 
where r.role_name like '%developer%';

--29. Вывести имена, должности и ЗП всех специалистов по возрастанию ЗП
select e.employee_name, r.role_name, s.monthly_salary 
from employees e 
join roles_employee re 
on e.id =re.employee_id 
join roles r 
on re.role_id = r.id 
join employee_salary es 
on re.employee_id = es.employee_id 
join salary s 
on es.salary_id = s.id
order by s.monthly_salary; 

--30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select e.employee_name, r.role_name, s.monthly_salary 
from employees e 
join roles_employee re 
on e.id =re.employee_id 
join roles r 
on re.role_id = r.id 
join employee_salary es 
on re.employee_id = es.employee_id 
join salary s 
on es.salary_id = s.id
where s.monthly_salary between 1700 and 2300
order by s.monthly_salary;

--31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select e.employee_name, r.role_name, s.monthly_salary 
from employees e 
join roles_employee re 
on e.id =re.employee_id 
join roles r 
on re.role_id = r.id 
join employee_salary es 
on re.employee_id = es.employee_id 
join salary s 
on es.salary_id = s.id
where s.monthly_salary < 2300
order by s.monthly_salary;

--32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select e.employee_name, r.role_name, s.monthly_salary 
from employees e 
join roles_employee re 
on e.id =re.employee_id 
join roles r 
on re.role_id = r.id 
join employee_salary es 
on re.employee_id = es.employee_id 
join salary s 
on es.salary_id = s.id
where s.monthly_salary in (1100, 1500, 2000)
order by s.monthly_salary;
