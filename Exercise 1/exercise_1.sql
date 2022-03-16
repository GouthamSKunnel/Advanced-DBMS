create database Exercise1;
use Exercise1;

drop table employees; 
drop table jobs;
drop table dependents;
drop table departments;
drop table locations;
drop table countries;
drop table regions;


create table employees(employee_id varchar(10) primary key,first_name varchar(20),last_name varchar(20),
email varchar(20),phone_number bigint,hire_date date,job_id varchar(10),salary int,manager_id varchar(10),
department_id varchar(10),foreign key(job_id) references jobs(job_id)ON DELETE CASCADE ON UPDATE CASCADE,
foreign key(department_id) references departments(department_id)ON DELETE CASCADE ON UPDATE CASCADE,
foreign key(manager_id) references employees(employee_id)ON DELETE CASCADE ON UPDATE CASCADE);

create table jobs(job_id varchar(10) primary key,job_title varchar(20),min_salary int,max_salary int);

create table dependents(dependent_id varchar(10) primary key,first_name varchar(20),last_name varchar(20),
relationship varchar(20),employee_id varchar(10),
foreign key(employee_id) references employees(employee_id) ON DELETE CASCADE ON UPDATE CASCADE);

create table departments(department_id varchar(10) primary key,department_name varchar(20),
location_id varchar(10),foreign key(location_id) references locations(location_id) ON DELETE CASCADE
ON UPDATE CASCADE);

create table locations(location_id varchar(10) primary key,street_address varchar(20),postal_code int,
city varchar(20),state_province varchar(20),country_id varchar(10),
foreign key(country_id) references countries(country_id)ON DELETE CASCADE ON UPDATE CASCADE);

create table countries(country_id varchar(10) primary key,country_name varchar(20),region_id varchar(10),
foreign key(region_id) references regions(region_id) ON DELETE CASCADE ON UPDATE CASCADE);

create table regions(region_id varchar(10) primary key,region_name varchar(20));

ALTER TABLE departments RENAME Dept;
ALTER TABLE employees MODIFY COLUMN salary smallint;
ALTER TABLE employees ADD commission int;

show tables;





