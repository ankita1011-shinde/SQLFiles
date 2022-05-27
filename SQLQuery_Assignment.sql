Create table Emp
(
empId int primary key identity(1,1),
FirstName varchar(20),
LastName varchar(20),
Salary int,
City varchar(30),
DeptName varchar(20),
)




insert into Emp values ('Ankita','Patil',30000,'Mumbai','Develpoer')
insert into Emp values ('Shneha','Raut',34000,'Pune','Testing')
insert into Emp values ('Chaten','Bhagat',26000,'Nashik','Operations')
insert into Emp values ('Gauri','Joshi',33000,'Pune','HR')
insert into Emp values ('Rohit','Patil',43000,'Mumbai','HR')
insert into Emp values ('Neha','Shinde',28000,'Sangli','Staff')
insert into Emp values ('Sachin','Yadav',32000,'Thane','Cleaning')
insert into Emp values ('Shree','Mhatre',25000,'Thane','Engineer')
insert into Emp values ('Farina','Khan',29000,'Kolhapur','Mechine Learning')
insert into Emp values ('Roshan','Dev',55000,'Latur','Home Science')
insert into Emp values ('Deven','Lad',46000,'Pune','Marketing')
insert into Emp values ('Mohan','Jadhav',34500,'Latur','Maintanance')
insert into Emp values ('vrushali','Patil',37500,'Mumbai',null)
insert into Emp values ('Hresh','Kumar',26300,'UP','Manager')


--1.dispaly all employees from table
Select * from Emp
--2
Select * from Emp where DeptName='Sale'
--3
Select * from Emp where Salary>35000
--4
Select * from Emp where City in('Mumbai','Pune')
--5
Select * from Emp where Salary between 25000 and 30000

--6
Select * from Emp where FirstName like'T%'
--7
Select * from Emp where FirstName like'%A'
--8 
Select * from Emp where not DeptName='HR' or DeptName='Sale'
--9--Write a query to get unique department ID from employee table
Select distinct DeptName from Emp

--Aggregate Function
--count,sum,avg,max,min

Select count (DeptName) from Emp



Select count (distinct DeptName) from Emp
Select count(*) from Emp

Select avg(Salary) as AvgSalary from Emp
Select min(Salary) as MinSalary from Emp

--group by clause
Select City,count(empId) as Empcount from Emp
group by City

--Write a query to display first_name and last_name using alias ‘First Name’ & ‘Last Name’ from employee table
Select FirstName,LastName as firstname from Emp

--Write a query to get all employee details from employee table display in descending order
Select * from  Emp order by empId desc

--Write a query to display employee details with salary, calculate the PF as 12 % 
Select Salary ,PF_Salary=Salary*0.12 from Emp

--Write a query to get total salaries payable to all employees from employee table
Select sum(Salary) as SumSalary from Emp

--Write a query to get max and min salary of employee
Select max(Salary) as MaxSalary from Emp

--Write a query to get number of employees are working in company
Select count (distinct empId) from Emp

----Write a query to get first 10 records from the employee table
Select Top 10 * from Emp


--Create Manager table
Create table Manager(
id int primary key,
name varchar(20)
)
drop table Manager
Select * from Emp

alter table Emp add managerid int
Select * from Manager

update Emp set managerid=1 where empid in(2,3,4,5)
update Emp set managerid=4 where empid in(7,8,9,10)
update Emp set managerid=6 where empid in(12,13)

Select e1.Firstname as empName,e2.Firstname as managerName
from Emp e1,Emp e2
where e1.managerid=e2.empid


--Create Student table
Create table Stud
(studId varchar(5),
courseId varchar(5),
year int,)

insert into Stud values ('s1','c1',2016)
insert into Stud values ('s2','c2',2017)
insert into Stud values ('s1','c2',2017)

Select * from Stud
Select sa1.studId,sa1.courseId,sa1.year
from Stud sa1, Stud sb2
where sa1.studId=sb2.studId and sa1.courseId<>sb2.courseId

Select * from Emp
alter table Emp drop column DeptName;

Create table dept(
id int primary key,
dname varchar(5),
)
alter table Emp add deptid int
alter table Emp add deptname  varchar(5)

alter table Emp drop column deptname
Select * from dept
insert into dept values(1,'HR') 
insert into dept values(2,'Sales') 
insert into dept values(3,'IT') 
insert into dept values(4,'BA') 
 

update Emp set deptid=1 where empId in(1,3,4)
update Emp set deptid=2 where empId in(2,5,6)
update Emp set deptid=3 where empId in(7,9,10)
update Emp set deptid=4 where empId in(11,12,8)

Select * from Emp

-- display employees who work in their dept uisng inner join
Select e.empId,e.FirstName,e.LastName, e.salary,d.id,d.dname
from Emp e inner join dept d on e.deptid=d.id

-- display emp & dept name who work in hr dept
Select e.empId,e.FirstName,e.LastName,e.salary,d.id,d.dname
from Emp e inner join dept d on e.deptid=d.id
where d.dname='HR'

-- display emp in hr dept , desending order of their salary
Select e.empId,e.FirstName,e.LastName,e.salary,d.id,d.dname
from Emp e inner join dept d on e.deptid=d.id
where d.dname='HR' order by (salary) desc

-- display emp from sales dept in asending order of name
Select e.empId,e.FirstName,e.LastName, e.salary,d.id,d.dname
from Emp e inner join dept d on e.deptid=d.id
where d.dname='Sales' order by (Firstname)

-- display emp & dept asending order of name & salary
Select e.empId,e.FirstName,e.LastName, e.salary,d.id,d.dname
from Emp e inner join dept d on e.deptid=d.id
 order by e.Firstname 

 
/* 
 --display emp count in hr & sales dept using having clause
 Select dname,count(deptid) as NoOfcount from dept
 group by dname
 having dname in('HR','Sales')
 order by count(deptid)
 */

 --Build in Functions
 select * from Emp

 update Emp set Salary=45399.98 where empId=3
 select SUBSTRING(FirstName,0,3) as TempName from Emp 
 select CONCAT (FirstName,' ',LastName) as FullName from Emp 
 select LEN(FirstName) as length from Emp
 select UPPER(LastName)as uppercase from Emp
 select LOWER(City)as lowercase from Emp
 select ROUND(Salary,4) as salary from Emp where empId=3
 select ROUND(354.533,0) as salary 
 select CAST(salary as numeric) from Emp
 select REVERSE(City) as reverse from Emp
 select REPLACE(FirstName,'Ankita','Ani')as info from Emp where empId=1
 select salary,RANK()over (order by salary desc)as salsryrank from Emp