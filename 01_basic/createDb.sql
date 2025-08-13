create database Practice;

use Practice;

create table First (
    id int not null ,
    name varchar(20),
    age tinyint
);

insert into First(id, name, age) 
    values(1, 'devansh', 21),
    (2, 'dk', 22),
    (3, 'dev', 23);


select * from first;

