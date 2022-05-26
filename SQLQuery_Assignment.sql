Create table Emp
(
empId int primary key identity(1,1),
FirstName varchar(20),
LastName varchar(20),
Salary int,
City varchar(30),
DeptName varchar(20),
)


drop table Emp

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

drop 
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
Select Max(empId) as MaxEmployee from Emp

