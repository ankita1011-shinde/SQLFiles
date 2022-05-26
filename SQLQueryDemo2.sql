create table Course
(
	Id int ,
	courseName varchar(20)
	
)
Select * from Course 
--sp_help Course

		alter table course add city varchar(20)
		alter table course drop column city
		alter table Course drop constraint pk_Course
		alter table Course add constraint pk_Course primary key(Id)
		alter table Course alter column Id int not null	
		alter table Course add  courseFees int
		