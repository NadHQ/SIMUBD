DECLARE @mytable TABLE (id INT, myname CHAR(20) DEFAULT '������ ����')
INSERT INTO @mytable(id) VALUES (1)
INSERT INTO @mytable(id, myname) VALUES (2,'����� �������') 
SELECT * FROM @mytable

--
declare @a int
declare @b int
declare @c char(30)
set @a = (select COUNT(*) from workers where gender = 'male')
set @b = (select COUNT(*) from workers where gender = 'female')
if @a > @b begin 
set @c = '������ ������'
select @c
end
else begin
set @c = '������ ������'
select @c
end
--

declare @miles int
set @miles = 10
while @miles > 0
begin
print @miles
set @miles -= 1 
end



GO
IF OBJECT_ID (N'dbo.ISOweek', N'FN') IS NOT NULL 
DROP FUNCTION dbo.ISOweek;

GO
CREATE FUNCTION dbo.ISOweek (@DATE date) RETURNS CHAR(15)
WITH EXECUTE AS CALLER AS
BEGIN
DECLARE @man int; 
DECLARE @ISOweek char(15); 
SET @man= MONTH(@DATE)

IF (@man=1) SET @ISOweek='������'; 
IF (@man=2) SET @ISOweek='�������';
IF (@man=3) SET @ISOweek='����';
IF (@man=4) SET @ISOweek='������'; 
IF (@man=5) SET @ISOweek='���';
IF (@man=6) SET @ISOweek='����'; 
IF (@man=7) SET @ISOweek='����';
IF (@man=8) SET @ISOweek='������';
IF (@man=9) SET @ISOweek='��������'; 
IF (@man=10) SET @ISOweek='�������'; 
IF (@man=11) SET @ISOweek='������';
IF (@man=12) SET @ISOweek='�������';

RETURN(@ISOweek); 
END;

go
select dbo.ISOweek(GETDATE())

GO
IF OBJECT_ID (N'find_notNull', N'IF') IS NOT NULL
DROP FUNCTION dbo.find_notNull; 

go
create function dbo.find_notNull() returns table
as return(select * from cars where miles is not NULL );

go
select * from dbo.find_notNull();




go
create procedure Count_males
as
select COUNT(*) as 'Count'
from workers
where gender = 'male'
go
exec Count_males


go
create procedure Count_males_param @var as char(30)
as
select COUNT(*) as 'Count'
from workers
where gender = @var
go
exec Count_males_param 'male'



go
create procedure gen_param @var char(30) = NULL
as
if @var is NULL
	begin
	print 'Enter your var'
	return 1
	end
	else begin
	select * from workers
	where gender = @var
	return 2
	end;
	go


go
exec gen_param 'male'

go 
create procedure update_cars
as
update cars 
set miles = 2
where miles is NULL


go 
exec update_cars