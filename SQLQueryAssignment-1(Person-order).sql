Select * from Person
Select * from Order1

alter table Order1 add productname varchar(20)
alter table Order1 add price int

insert into Order1 values(1,1001,1,'keyboard',980)
insert into Order1 values(2,1002,1,'mouse',788)
insert into Order1 values(3,1003,5,'laptop',34000)
insert into Order1 values(4,1004,4,'keyboard',980)
insert into Order1 values(5,1005,4,'mobile',23900)
insert into Order1 values(6,1006,6,'led sreen',28000)
insert into Order1 values(7,1007,6,'t-shirt',699)
insert into Order1 values(8,1008,8,'mouse',788)

--inner joint
Select p.personId,p.name,p.Country,o.orderNo,o.productname,o.price
from Person p
inner join Order1 o on o.personId = p.personId
where p.personId=5


--left joint
Select p.personId, p.name,p.Country,o.orderNo,o.productname,o.price
from Person p
left join Order1 o on o.personId = p.personId
where p.personId=5

--right joint
Select p.name,p.Country,o.orderNo,o.productname,o.price
from Person p
right join Order1 o on o.personId = p.personId
where p.personId=5


--full joint
Select p.name,p.Country,o.orderNo,o.productname,o.price
from Person p
full join Order1 o on o.personId = p.personId
where p.personId=5


