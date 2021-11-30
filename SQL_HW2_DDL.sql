
-- create table employees
create table employees (
id serial primary key,
employee_name varchar (50) not null
);


-- insert data into employees
insert into employees (employee_name)
values  ('$)A')'`'d'`'S '!'b'd'e'b'),
		(''"'V']'q'V'S'Q '!']'Z'_'Q'),
		(''.'`'b'`'Y'`'S '"'`'T'U'Q'_'),
		(''/'Z'\'`']'Q'V'_'\'` '%'V'_'Z'c'),
		('','`'d '*'T'`'b'n'),
		(''"'`'T'U'Q'_'`'S'Q '0']'V'c'q'),
		(''%'e'R'`'S '%'^'Z'd'b'Z'['),
		(''*'T'_'Q'd'n'V'S '/'Z'\'`']'Q'['),
		(''#'V'b'V'^'V'V'S '!']'V'\'c'Q'_'U'b'),
		('','b'Z'S'V'_'\'` '!']'Z'c'Q'),
		('','b'e'd '4'Q'^'Z']'Q'),
		(''$'`']'e'R '#'q'i'V'c']'Q'S'),
		(''"'`'d '$']'V'R'),
		(''$'b'Z'_'n'\'` '#'Z'\'d'`'b'Z'q'),
		('','`']'`'c '3'S'V'd']'Q'_'Q'),
		(''.'`'b'`'Y '#'Z'd'Q']'Z'['),
		('','e'i'^'Q '!'_'Q'd'`']'Z'['),
		(''0'T'`'_'n '$'b'Z'T'`'b'Z'['),
		(''"']'`'\ '3'V'^'V'_'),
		('')'`']'`'d'`'S '0']'V'T'),
		('','e'S'T'Z'_ '!'_'d'`'_'),
		(''!'R'b'Q'^'`'S '!'_'U'b'V'['),
		(''"'`'b'Y'`'S'Q '-'p'U'^'Z']'Q'),
		(''3'd'`'q'_ '#'Z'\'d'`'b'),
		(''0'b'_'` '!'b'd'e'b'),
		(''-'V'b'i'V'_'\'` ')']'Q'd'Q'),
		(''9'V']'_'`'\'`'S '4'Q'b'Q'c'),
		('','Z'c'V']'V'S '-'e'\'Q'),
		(''%'e'R'_'` '.'Q'\'Q'b'),
		('':'Z']'`'S '&'S'T'V'_'Z'['),
		(''"'e'd'`'S'Q '&'S'T'V'_'Z'q'),
		(''.'Q'b'\'` '1'V'd'b'),
		(''1'`']'e'q'_ '!'_'U'b'V'['),
		('','`'S'R'Q'c'Q '2'`'^'Q'_'),
		(''%'`'R'b'm'[ '3'V'b'T'V'['),
		('','`'S'd'e'_ '#']'Q'U'Z'^'Z'b'),
		(''3'`']'`'S'V'[ '.'Q'b'Z'q'),
		('',']'Z'_'`'S '#'Q']'V'b'Z'['),
		(''3'S'V'd '.'Q'\'Q'b'),
		(''!']'V'\'c'V'V'S '$']'V'R'),
		(''"'V'b'V'Y'Q '3'V'b'T'V'['),
		(''"'`'_'U'Q'b'n '4'Q'd'n'q'_'Q'),
		('','b'`'d '('`'b'X'),
		('')'Q'V'h '*'b'Z'_'Q'),
		(''8'S'V'd'`'\ '0'\'c'Q'_'Q'),
		(''.'e'g'Q '3'V'b'T'V'['),
		(''.'Z'g'Q'[']'`'S'Q '&'\'Q'd'V'b'Z'_'Q'),
		(''#'`'U'Q ','Q'b'Z'_'Q'),
		(''.'e'Y'Q '!'_'d'`'_'),
		(''%'`'b'j'V'_'\'` '.'Q'\'c'Z'^'),
		('','`'b'`']'n '#'Q'c'Z']'Z'['),
		(''#']'Q'c'`'S '.'Z'g'Q'Z']'),
		(''4'Q'b'Q'c'`'S'Q '0']'n'T'Q'),
		('','`'d'`'S'Q '3'S'V'd']'Q'_'Q'),
		(''6'b'Q'_'h '.'Q'b'Z'_'Q'),
		(''4'`']'c'd'`'[ '!']'V'\'c'V'['),
		(''$'b'`'^'`'S '#'Z'\'d'`'b'),
		(''$'b'`'^'`'S'Q '.'Q'b'Z'q'),
		(''1'`'b'`'j'V'_'\'` '@'b'Z'['),
		(''4'`'\'`'S ','`'_'c'd'Q'_'d'Z'_'),
		(''"'b'Q'S'` '!'_'U'b'V'['),
		(''/'Z'\'Z'd'Z'_ '#']'Q'c'),
		('';'Z'd'`'S '.'Q'd'S'V'['),
		(''3'd'b'p'\'`'S'Q '$'Q']'Z'_'Q'),
		(''-'p'R'Z'^'`'S'Q '-'Z'U'Z'q'),
		('','b'Z'S'V'_'\'` '/'Q'U'V'X'U'Q'),
		(''$'b'Z'j'\'` '-'p'R'`'S'n'),
		(''"'`'T'`']'p'R'`'S '/'Z'\'`']'Q'['),
		(''"'`'T'`']'p'R'`'S'Q '!'_'Q'c'd'Q'c'Z'q'),
		('':'V'S'i'V'_'\'` '3'S'q'd'`'c']'Q'S'),
		(''"'`'b'k '.'Q'\'c'Z'^');


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


-- delete table employee_salary	
drop table employee_salary; 	


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





