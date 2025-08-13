use practice;


-- DRL(Data Retrival Commands):

-- 1. SELECT
select * from employee;

-- 2. WHERE
select * from employee where department = 'HR';

-- 3. BETWEEN
select * from employee where salary between 1000 and 5000;

-- 4. IN(it reduce OR comdition)

-- method 1
select * from employee where department in('HR' , 'Admin');

-- method 1 (type 2)
select * from employee where (department,salary) in (('HR', 1000));


-- method 2
select * from employee where department = 'HR' or department = 'admin';

-- 5. NOT
select * from employee where salary not in(1000, 5000);

-- 6. IS NULL
select * from employee where department is null;

-- 7. PATTERN ( '%' any number of charac, '_' only one char)
select * from employee where name like '%v%';

-- 8. ORDER BY
select * from employee order by salary asc; 

-- 9. GROUP BY (without aggregation GROUP BY is working like DISTINCT)
select name, count(department) as count_members from employee group by name;

-- 10. GROUP BY HAVING
select department, count(department) as new_col from employee group by department having count(department) > 1;

-- 11. DISTINCT (give unique values)
select distinct name from employee;


select name from employee where name = 'devansh';

-- desrcibe table 
desc order_summary;

