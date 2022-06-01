create procedure sp_Insert_Dept
(@id int,@dname varchar(20))
as begin
insert into dept values (@id,@dname)
return
end

create procedure sp_Update_Dept
(@id int,@dname varchar(20))
as begin
update dept set dname=@dname where id=@id
return
end

create procedure SP_SelectAll_Dept
as begin
select * from dept
return
end

exec SP_SelectAll_Dept

exec SP_Insert_Dept
@id=5,
@dname='Sales'
