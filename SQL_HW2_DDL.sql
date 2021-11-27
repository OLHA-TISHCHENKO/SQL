
-- create table employees
create table employees (
id serial primary key,
employee_name varchar (50) not null
);


-- insert data into employees
insert into employees (employee_name)
values  ('Зотов Артур'),
		('Беляева Алина'),
		('Морозов Богдан'),
		('Николаенко Денис'),
		('Кот Игорь'),
		('Богданова Олеся'),
		('Дубов Дмитрий'),
		('Игнатьев Николай'),
		('Веремеев Александр'),
		('Кривенко Алиса'),
		('Крут Тамила'),
		('Голуб Вячеслав'),
		('Бот Глеб'),
		('Гринько Виктория'),
		('Колос Светлана'),
		('Мороз Виталий'),
		('Кучма Анатолий'),
		('Огонь Григорий'),
		('Блок Семен'),
		('Золотов Олег'),
		('Кувгин Антон'),
		('Абрамов Андрей'),
		('Борзова Людмила'),
		('Стоян Виктор'),
		('Орно Артур'),
		('Лерченко Злата'),
		('Челноков Тарас'),
		('Киселев Лука'),
		('Дубно Макар'),
		('Шилов Евгений'),
		('Бутова Евгения'),
		('Марко Петр'),
		('Полуян Андрей'),
		('Ковбаса Роман'),
		('Добрый Сергей'),
		('Ковтун Владимир'),
		('Соловей Мария'),
		('Клинов Валерий'),
		('Свет Макар'),
		('Алексеев Глеб'),
		('Береза Сергей'),
		('Бондарь Татьяна'),
		('Крот Жорж'),
		('Заец Ирина'),
		('Цветок Оксана'),
		('Муха Сергей'),
		('Михайлова Екатерина'),
		('Вода Карина'),
		('Муза Антон'),
		('Доршенко Максим'),
		('Король Василий'),
		('Власов Михаил'),
		('Тарасова Ольга'),
		('Котова Светлана'),
		('Франц Марина'),
		('Толстой Алексей'),
		('Громов Виктор'),
		('Громова Мария'),
		('Порошенко Юрий'),
		('Токов Константин'),
		('Браво Андрей'),
		('Никитин Влас'),
		('Щитов Матвей'),
		('Стрюкова Галина'),
		('Любимова Лидия'),
		('Кривенко Надежда'),
		('Гришко Любовь'),
		('Боголюбов Николай'),
		('Боголюбова Анастасия'),
		('Шевченко Святослав'),
		('Борщ Максим');


-- create table salary
create table salary (
id serial primary key,
monthly_salary int not null
);


-- insert data into salary
insert into salary (monthly_salary)
values  (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);
	
	
--create table employee_salary_1
create table employee_salary_1 (
id serial primary key,
employee_id int unique not null,
salary_id int not null);


--insert data into employee_salary_1
insert into employee_salary_1 (id, employee_id, salary_id)
values  (default, 1, 15),
		(default, 2, 1),
		(default, 3, 2),
		(default, 5, 2),
		(default, 11, 100),
		(default, 12, 2),
		(default, 102, 3),
		(default, 4, 10),
		(default, 13, 11),
		(default, 14, 8),
		(default, 72, 5),
		(default, 1002, 100),
		(default, 15, 1),
		(default, 17, 0),
		(default, 18, 2),
		(default, 19, 3),
		(default, 20, 4),
		(default, 22, 5),
		(default, 23, 6),
		(default, 25, 7),
		(default, 26, 8),
		(default, 29, 9),
		(default, 32, 88),
		(default, 42, 10),
		(default, 52, 11),
		(default, 62, 12),
		(default, 82, 12),
		(default, 92, 13),
		(default, 31, 14),
		(default, 63, 15),
		(default, 64, 16),
		(default, 65, 17),
		(default, 67, 18),
		(default, 66, 13),
		(default, 68, 4),
		(default, 69, 8),
		(default, 70, 5),
		(default, 99, 4),
		(default, 10000, 9);

	
 --create table employee_salary
create table employee_salary (
id serial primary key,
employee_id int unique not null,
salary_id int not null,
foreign key (employee_id)
	references employees (id),
foreign key (salary_id)
	references salary (id)
);


--insert data into employee_salary and look at error
insert into employee_salary (id, employee_id, salary_id)
values  (default, 1, 15),
		(default, 2, 1),
		(default, 3, 2),
		(default, 5, 2),
		(default, 11, 100),
		(default, 12, 2),
		(default, 102, 3),
		(default, 4, 10),
		(default, 13, 11),
		(default, 14, 8),
		(default, 72, 5),
		(default, 1002, 100),
		(default, 15, 1),
		(default, 17, 0),
		(default, 18, 2),
		(default, 19, 3),
		(default, 20, 4),
		(default, 22, 5),
		(default, 23, 6),
		(default, 25, 7),
		(default, 26, 8),
		(default, 29, 9),
		(default, 32, 88),
		(default, 42, 10),
		(default, 52, 11),
		(default, 62, 12),
		(default, 82, 12),
		(default, 92, 13),
		(default, 31, 14),
		(default, 63, 15),
		(default, 64, 16),
		(default, 65, 17),
		(default, 67, 18),
		(default, 66, 13),
		(default, 68, 4),
		(default, 69, 8),
		(default, 70, 5),
		(default, 99, 4),
		(default, 10000, 9);


-- create table roles
create table roles (
id serial primary key,
role_name int unique not null
);


--change type column role_name
alter table roles
alter column role_name type varchar (30);


--insert data into roles
insert into roles (role_name)
values ('Junior Python developer'),
	('Middle Python developer'),
	('Senior Python developer'),
	('Junior Java developer'),
	('Middle Java developer'),
	('Senior Java developer'),
	('Junior JavaScript developer'),
	('Middle JavaScript developer'),
	('Senior JavaScript developer'),
	('Junior Manual QA engineer'),
	('Middle Manual QA engineer'),
	('Senior Manual QA engineer'),
	('Project Manager'),
	('Designer'),
	('HR'),
	('CEO'),
	('Sales manager'),
	('Junior Automation QA engineer'),
	('Middle Automation QA engineer'),
	('Senior Automation QA engineer');


--create table roles_employee
create table roles_employee (
id serial primary key,
employee_id int unique not null,
role_id int not null,
foreign key (employee_id) 
	references employees (id),
foreign key (role_id)
	references roles (id) 
);


-- insert data into roles_employee
insert into roles_employee (employee_id, role_id)
values  (1, 4),
		(2, 5),
		(4, 6),
		(5, 8),
		(8, 9),
		(9, 1),
		(10, 15),
		(12, 11),
		(13, 6),
		(15, 7),
		(17, 10),
		(18, 4),
		(19, 6),
		(22, 2),
		(23, 7),
		(25, 9),
		(28, 3),
		(30, 6),
		(32, 7),
		(37, 9),
		(38, 1),
		(39, 7),
		(40, 12),
		(43, 9),
		(45, 5),
		(47, 11),
		(49, 14),
		(50, 5),
		(52, 13),
		(55, 11),
		(56, 10),
		(58, 10),
		(60, 15),
		(62, 3),
		(65, 8),
		(69, 4),
		(67, 9),
		(68, 11),
		(70, 14),
		(71, 7);





