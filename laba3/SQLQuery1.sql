use simubd
select * from garage


select * from garage
where result = 'OK'


select * from garage
where result = 'OK' AND car >=3


select * from garage
where (result = 'OK' AND car >=3) OR DAY(dateout) = DAY(GETDATE())+1



select
	nameof + secondname + thirdname as newname
from workers
where gender = 'male'


select * from workers
where secondname in ('Никита', 'Остап')


select * from cars
where miles between 5 and 7.4

select * from sec_workers
where [name] like '%ев' or [name] like '%ов'

--------------------------------------------------------


select cars.[name], garage.car, garage.sec_worker
from cars, garage;

select 
	workers.nameof + workers.secondname as fullname,
	[route].[name]
	from workers
	join [route] on [route].worker = workers.id
	where workers.gender != 'male'


select garage.garage_name, garage.result, 
sec_workers.[name] + sec_workers.secondname as fullname, cars.charactr
from garage
join cars on garage.car = cars.id
join sec_workers on garage.sec_worker = sec_workers.id



select garage.garage_name, garage.result, 
sec_workers.[name] + sec_workers.secondname as fullname, cars.charactr
from garage
full join cars on garage.car = cars.id
full join sec_workers on garage.sec_worker = sec_workers.id

select 
	workers.nameof + workers.secondname as fullname,
	[route].[name]
	from workers
	left join [route] on [route].worker = workers.id
	where workers.gender != 'male'

	select 
	workers.nameof + workers.secondname as fullname,
	[route].[name]
	from workers
    right join [route] on [route].worker = workers.id
	where workers.gender = 'male'

	select * 
	from garage cross join sec_workers
	where garage.id > 2 and sec_workers.gender = 'male'

	------------------------------------------------------
	select COUNT(*) from workers
	where workers.gender = 'male'

	select SUM(miles) from cars

	select * from workers
	where UPPER(gender) like 'MALE'


	select gender, COUNT(*) 
	from workers
	group by gender


	select gender, nameof, COUNT(*) from workers
	group by gender, nameof


	select sum(miles) from cars
	having SUM(miles) > 4

	select gender, nameof, COUNT(*) from workers
	group by gender, nameof
	having COUNT(*) > 2

	select * from cars
	order by miles DESC

	update cars
	set miles = NULL
	where id < 3

	delete from workers
	where id between 14 and 20



