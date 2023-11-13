-- create a scghema
create schema tutorial;


-- create a table
create table tutorial.employees
(
	id numeric primary key,
	first_name varchar not null,
	last_name varchar not null, 
	email varchar,
	hire_date date default current_date,
	department varchar default 'Unassigned'
);


-- fetch data from a table
select * from tutorial.employees;

-- alter colum add
alter table tutorial.employees add column age INT;

-- alter column delete
alter table tutorial.employees drop column age;

--alter column change deafult
alter table tutorial.employees alter column department set default 'Reassigned';

select * from tutorial.employees;

-- insert statement

insert into tutorial.employees
	(
		id,
		first_name,
		last_name,
		email
	)
	values
	(
		1,
		'john',
		'doe',
		'johndoe@example.com'
	);
	
insert into tutorial.employees(id,first_name,last_name,email) values 
(2,'Jane','Smith','jane@gmail.com'),
(3,'Bob','Jonson','bon@gmail.com'),
(4,'Alce','William','alice@gmail.com');


select * from tutorial.employees;


-- update statement

update tutorial.employees 
	set first_name = 'Jane',
	last_name = 'doe',
	email = 'janedoe@gmail.com'
where id = 2;
	
select * from tutorial.employees where id = 2;

-- delete/ truncate statement
delete from tutorial.employees where id = 3;

-- multiple delete
delete from tutorial.employees where id in (1,4);


-- truncate the table
truncate table tutorial.employees;

select * from tutorial.employees;



-- merge statement
-- combines the delete update and insert statement
-- only mordam db like postgres has it
-- it can update and insert and delete at the same time
-- to give example we use another table call employees2

-- create a table
create table tutorial.employees_two
(
	id INT not null,
	first_name varchar(50) not null,
	last_name varchar(50) not null, 
	email varchar(50) not null,
	hire_date date not null,
	department varchar not null,
	primary key(id)
);

insert into 
	tutorial.employees_two
	(id,first_name,last_name,email,hire_date,department)
values
	(1,'john','doe','johndoe@example.com','2022-01-01','Sales');
	
insert into tutorial.employees_two(id,first_name,last_name,email,hire_date,department) values 
(2,'Jane','Doe','jane@gmail.com','2021-01-02','Sales'),
(3,'Bob','Smith','bon@gmail.com','2022-01-03','Human Resource'),
(4,'Alce','Jones','alice@gmail.com','2022-01-03','Sales'),
(5,'Tom','Wilson','tom@gmail.com','2022-01-05','Marketing');

SELECT * FROM tutorial.employees_two;


-- now we write the merge statement
-- it will be something like this
-- it will copy value from the employees_two table to employees table
-- and it will try to match the id of between two table like a join query
-- if matched found we can update the value of the employees table with the 
-- value of employees_two table which is a update statement
-- if not mathced then this are the new data of employees_two
-- so we inserted this data into employee table






MERGE INTO tutorial.employees AS e1
USING tutorial.employees_two AS e2
ON e1.id = e2.id
WHEN MATCHED 
	THEN 
		UPDATE SET 
		first_name = e2.first_name,
		last_name = e2.last_name,
		email = e2.email,
		hire_date = e2.hire_date,
		department = e2.department
WHEN NOT MATCHED 
	THEN 
		INSERT (id,first_name,last_name,email,hire_date,department)
		VALUES(e2.id,e2.first_name,e2.last_name,e2.email,e2.hire_date,e2.department);
	
SELECT * FROM tutorial.employees;
SELECT * FROM tutorial.employees_two;


DROP TABLE tutorial.employees;
DROP TABLE tutorial.employees_two;
		



	