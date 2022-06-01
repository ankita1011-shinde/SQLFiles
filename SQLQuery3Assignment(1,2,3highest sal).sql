select * from Emp

--Subquery in sql/inner query

--Find 1st highest salary
--Creation of view

create view FirstHigh as
select FirstName,LastName,salary from Emp where salary=(
select max(salary) from Emp
)

--Find 2nd highest salary

create view SeconHigh as
select FirstName,LastName,salary from Emp where salary=(
select max(salary) from Emp where salary <>(select max(salary) from Emp)
)

--find 3rd highest salary
create view thirdHighSal as
select FirstName,LastName,salary from Emp where salary=(
select max(salary) from Emp where salary<(
select max(salary) from Emp where salary<>(select max(salary) from Emp)
)
)
--Execution of view
select * from FirstHigh
select * from SeconHigh
select * from thirdHighSal

select * from Emp where empid in (
select empid from Emp where salary > 30000
)

--dispaly person name who has purchesed  the product whose price is>5000
select p.name,o.price
from Person p inner join Order1 o on p.personId=o.personId
where price>5000

select * from Person
select * from Order1
select * from Emp

--dispaly name of employee who take higher salary than emp id 5
select FirstName,salary from Emp where salary>(select salary from Emp where empid=5)

--display emp  details whoes city is same as emp id 4
select empId,FirstName,LastName,city from Emp where city=(select city from Emp where empid=4)


--display emp details whoes salary is greater than the avg sal of all emp
select FirstName,LastName,city,salary from Emp where salary>(select avg(salary) from Emp)

--find emp whoes salary is more than avg sal of any dept
select Firstname,Lastname,salary,city,deptid from Emp where salary >all(select avg(salary) from Emp  group by deptid)

--add deptname in Emp table
alter table Emp drop column deptname 

/*
update Emp set deptname='HR' where empId=1
update Emp set deptname='Sales' where empId=2
update Emp set deptname='HR' where empId=3
update Emp set deptname='HR' where empId=4
update Emp set deptname='HR' where empId=5
update Emp set deptname='HR' where empId=6
update Emp set deptname='HR' where empId=1
update Emp set deptname='HR' where empId=8
update Emp set deptname='HR' where empId=1
update Emp set deptname='HR' where empId=11
*/

select * from dept
--dispay sum od salary dept wise
select deptid,sum(salary)as SumOfSal from Emp group by deptid
--display emp who get moew than avg salray sales dept
select FirstName from Emp where salary>(select avg(salary) from Emp where
deptId=(select id from dept where dname='Sales'))
select * from dept


--Sub query with update statement

select * from Emp
--Update the salary by 30% of emp who work in IT dept
update Emp set salary = salary*0.30 where deptid = (select id from dept where dname='IT')

--subquery with delete statement
delete from Emp where deptid = (select id from dept where dname='Sales')
