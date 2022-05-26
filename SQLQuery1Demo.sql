Create  table Person(
personId int,
personName varchar(20),
)


alter table Person add city varchar(40)


alter table Person drop column city

alter table Person alter column personName varchar(40)
--oracle
--alter table Person modify column personName varchar(40)
alter table Person add constraint pk_Person primary key(personId)
alter table Person alter column personId int not null	


create table Order1(
orderId int,
orderNo int,
personId int,
constraint pk_order primary key(orderId),
constraint pk_order_person foreign key (personId) references Person(personId)
)

sp_help Order1

--alter table Order1 add constraint pk_order_person foreign key (personId) references Person(personId)
alter table Person add age int check(age>=18)
alter table Person add constraint chk_age check(age>=18)

--mysql
--alter table Person drop check chk_age

-- table is already exits & want to add col with default value

alter table Person add Country varchar(20) default 'India'


-- column is already exist & want to add default constraint
--alter table person add constraint default_con default 'india' for country

--mysql
--alter table person alter country set default 'india'

--oracle
--alter table person modify country default 'india'
--index
--create index index_person2 on person (name,country);

create unique index index_person on person (personId);

Select* from Person

insert into Person values (1,'Ankita',25,'india')
insert into Person values (2,'Vijay',21,'india')
insert into Person values (3,'Rohit',30,'india')
insert into Person (personId,name,age) values (4,'Ajay',23)
insert into Person (personId,name,age) values (5,'Ram',32)
insert into Person (personId,name,age) values (6,'Ram',32)
update Person set name = 'Aahsa' where  personId=6
delete from Person where personId=6
insert into Person (personId,name,age) values (6,'Rani',34)
insert into Person (personId,name,age) values (7,'Vrushali',20)
insert into Person (personId,name,age) values (8,'Ved',22)
insert into Person (personId,name,age) values (9,'Amol',19)
insert into Person (personId,name,age) values (10,'Sai',20)
update Person set age=33 where personId=4

Select name,age from Person
Select * from Person where personId=3
Select distinct Country from Person
Select * from Person where personId<=4
Select * from Person where personId<>4
Select * from Person where personId>=3
Select * from Person where personId<5
Select * from Person where personId>8
Select * from Person where name='Ankita'
Select * from Person where age=30

Select * from Person