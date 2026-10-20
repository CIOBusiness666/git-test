
create table ceo (
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    designation VARCHAR(100),
    company VARCHAR(100),
    emailid VARCHAR(150),
    Stacs VARCHAR (150)
);

-- incerting values in table--
insert into ceo values ('aman' ,'jain', 'ceo', 'cbv', 'aman@cbv.com', 'verifed');
select * from ceo;
drop table ceo;

create table ceo (
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    designation VARCHAR(100),
    company VARCHAR(100),
    emailid VARCHAR(150),
    Stacs VARCHAR (150)
    );
Rename table ceo to cybersecurity;
create database db2;
create table student (
Student_Name VARCHAR (20),
age varchar (20),
roll_no varchar (50),
address varchar (70)
);
drop table student;
select * from student;
alter table student
add column grade varchar (20);
select * from student;
alter table student
add column percent varchar (20) after student_name;
select * from student;
alter table student drop roll_no;
select * from student;

alter table student rename column percent to per;
select * from student;

alter table student
rename column Student_Name to sname;
select * from student;

alter table student add column lname varchar (50) after sname;
select * from student;

alter table student drop column age;
select * from student;
alter table student rename column per to percentage;
select * from student;
describe student; 

alter table student modify column percentage int(20);
describe student;


Select * from offices;
select * from offices;
select *, coalesce addressline1,state,coutry from offices;
select * from offices;

start transaction;
update offices set addressline2 = coalesce(addressline2,state,country);
select * from offices;
rollback;

select * from office;
/* We are creating the table with constraains (Rules)*/ 
Create table practise
(id int primary key,
first_name Varchar (40) not null,
last_name Varchar (40),
Phon_no varchar (10) unique,
age int check(age>18),
Adhar_no varchar (16) unique,
Address varchar (40),
Country varchar (20) default 'India',
Joinning_date datetime default now());

INSERT INTO practise 
(id, first_name, last_name, Phon_no, age, Adhar_no, Address)
VALUES
(101, 'Vaibhav', 'Jain', '8786755586', 34, '8767554487654358', 'Nagpur');

select * from practise;
insert into practise values ('101','Vaibhav', 'Jain','8786755586','34','8767554487654358','Nagpur');

INSERT INTO practise 
(id, first_name, last_name, Phon_no, age, Adhar_no, Address)
VALUES ('102','mohan','sharma','8786768787','31','4525425454356532','Mumbai');

select * from practise;

/*Thinks to keep rember:

Constrains has tjis  value (unique, check , not null, default, primery key)
1. unique - in unique every value is unique it cannot be repete. it can be null but it can not be repete.
2. Not null - The value present should be mandatory.
3. default - if you choose default constrain then then if you didnt enter valuse it will auto takes the default values. 
if you want to change you can do this.
4. check -  it can check the condition if it is true then it accept the value like in age is given.
5. Primary key:- If primary key is set  
*/
select * from practise;


 