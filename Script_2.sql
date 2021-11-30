--1)таблица employees

create table employees_1 (
	id serial primary key,
	employee_name varchar(50) not null
);
--2)наполнить таблицу 70 строками
insert into employees_1 (employee_name)
values ('Aaron'),
		('Ashton'),
		('Anton'),
		('Alise'),
		('Abram'),
		('Avraam'),
		('Bobby'),
		('Brad'),
		('Brandon'),
		('Billy'),
		('Burt'),
		('Curtis'),
		('Clarise'),
		('Ciara'),
		('Paul'),
		('Patrick'),
		('John'),
		('Jeramy'),
		('George'),
		('Dwayn'),
		('Margo'),
		('Jinger'),
		('Tom'),
		('Erick'),
		('Julia'),
		('Robert'),
		('Rayan'),
		('Silvester'),
		('Boris'),
		('Elena'),
		('Helga'),
		('Jason'),
		('Arnold'),
		('Ronny'),
		('Phill'),
		('Joe'),
		('Will'),
		('Tiffany'),
		('Carla'),
		('Tedd'),
		('Todd'),
		('Otto'),
		('Hans'),
		('Victor'),
		('Piter'),
		('May'),
		('Emma'),
		('Lida'),
		('Ethan'),
		('Andrew'),
		('Sonya'),
		('Batista'),
		('Emanuel'),
		('Mike'),
		('Latisha'),
		('Omar'),
		('Nick'),
		('Jax'),
		('Rob'),
		('Jan'),
		('jacky'),
		('Marshal'),
		('Pavel'),
		('Tanya'),
		('Victoria'),
		('Mary'),
		('Berta'),
		('Louis'),
		('Kim'),
		('CHris'),
		('Dmitriy');

delete from employees_1
where id=71;
select * from employees_1;

--3)таблица salary

create table salary_2 (
	id serial primary key,
	monthly_salary int not null
);

--4)наполнить таблицу 15 строками

insert into salary_2 (monthly_salary)
values (1000),
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
select * from salary_2;

--5)таблица employee_salary

create table employee_salary_1(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

--6)наполнить таблицу 40 строками(10 строк несуществующих employee_id)

insert into employee_salary_1(employee_id, salary_id)
values (1,1),
		(2,2),
		(3,3),
		(4,4),
		(5,5),
		(6,6),
		(7,7),
		(8,7),
		(9,9),
		(10,10),
		(11,11),
		(12,12),
		(13,13),
		(14,14),
		(15,15),
		(16,16),
		(17,17),
		(18,18),
		(19,19),
		(20,20),
		(21,21),
		(22,22),
		(23,23),
		(24,24),
		(25,25),
		(26,26),
		(27,27),
		(28,28),
		(29,29),
		(30,30),
		(71,31),
		(72,32),
		(73,33),
		(74,34),
		(75,35),
		(76,36),
		(77,37),
		(78,38),
		(79,39),
		(80,40);


select * from employee_salary_1;

--7)таблица roles
--создать таблицу

create table roles_1 (
	id serial primary key,
	role_name int not null unique
);
--8)поменять тип столба

alter table roles_1 
alter column role_name type varchar (30);

--9)наполнить таблицу 20 строками

insert into roles_1 (role_name)
values ('Automation_qa_junior'),
		('Automation_qa_middle'),
		('Automation_qa_senior'),
		('Python_developer_junior'),
		('Python_developer_middle'),
		('Python_developer_seniot'),
		('Java_developer_junior'),
		('Java_developer_middle'),
		('Java_developer_senior'),
		('HR'),
		('Manager'),
		('CEO'),
		('JS_developer_junior'),
		('JS_developer_middle'),
		('JS_developer_senior'),
		('Accountent'),
		('Lawyer'),
		('IT'),
		('Support'),
		('Designer');

select * from roles_1;

--10)таблица roles_employee

create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees_1(id),
	foreign key (role_id)
		references roles_1(id)
);

select * from roles_employee;

--11)наполнить таблицу roles_employee 40 строками

insert into roles_employee(employee_id, role_id)
values (1,1),
		(2,2),
		(3,3),
		(4,4),
		(5,5),
		(6,6),
		(7,7),
		(8,7),
		(9,9),
		(10,10),
		(11,10),
		(12,10),
		(13,10),
		(14,11),
		(15,11),
		(16,16),
		(17,7),
		(18,8),
		(19,9),
		(20,2),
		(21,1),
		(22,12),
		(23,3),
		(24,4),
		(25,5),
		(26,6),
		(27,17),
		(28,18),
		(29,19),
		(30,3),
		(31,19),
		(32,20),
		(33,16),
		(34,16),
		(35,17),
		(36,19),
		(37,17),
		(38,13),
		(39,13),
		(40,13);
	
select * from roles_employee;
