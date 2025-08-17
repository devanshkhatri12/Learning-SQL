
-- DML (data manipulation language)

-- 1. INSERT
-- single values
 insert into employee_account values
 (001, 'devansh', 22, 1204.5, null);
 
 -- multiple values
 insert into employee_account(id, employee_name, age, balance, email) 
 values (002, 'saurbh', 23, 101.56, 'daurbh12gmail.com'),
        (003, 'rohit', 21, 11000, 'rohit123gmail.com'),
        (004, 'durgesh', 24, null, 'null');
        
-- insert particular data
insert into employee_account(id, employee_name) values (005, 'sachin');
insert into employee_account(id, employee_name, age) values(006, 'deep', 23);
 
-- 2. UPDATE
-- single value 
update employee_account set pincode = 282005 where employee_name = 'devansh';

-- multiple values
set sql_safe_updates = 0;
update employee_account set address = 'Home';          -- for edit whole coulmn value u need to enable safe mode


-- 3. DELETE 
-- normal way (single value)
delete from employee where employee_id = 8;

-- normal way (delete a column)
set sql_safe_updates = 0;
delete from order_summary;