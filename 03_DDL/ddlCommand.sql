
-- DDL (Data Definition query)


create table account (

-- 1. primary Key 
ID int primary key,

name varchar(30) unique,
age tinyint(15),
balance double
);



create table order_summary (
id int primary key not null,
order_date date,
delivery_date date,
customer_id int,

-- 2. Foreign key
foreign key (customer_id) references employee(employee_id)
);


 
 
 -- Alter Operations
 
 -- 1. ALTER  &&  3. Unique
 alter table account add email varchar(300) unique;
 
 -- 1. ALTER &&  4. CHECK(constraint)
 alter table account add constraint check_age check(age > 12);
 
 -- 1. ALTER  && 5. DEFAULT 
 alter table order_summary add saving_rate double not null default 4.25;
 
 alter table order_summary add address varchar(100) not null default "City_Post_Office";
 
 -- 2. MODIFY
 alter table account modify age int;
 
 -- 3. CHANGE COLUMN 
 alter table account change column name employee_name varchar(100);
 
 -- 4. DROP COLUMN
 alter table order_summary drop column address;
 
 -- 5. RENAME
 alter table account rename to Employee_Account;