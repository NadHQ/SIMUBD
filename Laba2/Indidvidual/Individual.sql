use simubd


create table workers(
id int identity(1,1) primary key,
gender varchar(255),
nameof varchar(255),
secondname varchar(255),
thirdname varchar(255)
)

insert into workers values
('male', 'Смирнов', 'Станислав', 'Григорьевич'),
('male', 'Чумак', 'Остап', 'Максимович'),
('male', 'Дроздов', 'Николай', 'Евгеньевич'),
('male', 'Посидайло', 'Эдуард', 'Станиславович'),
('male', 'Таранец', 'Никита', 'Петрович')


create table cars(
id int identity(1,1) primary key,
charactr varchar(255),
[hours] int,
miles float(3),
[name] varchar(255),
repairs int
)

insert into cars values
('char1', 2, 5.4,'somename1', 3),
('char2', 3, 6.4,'somename2', 1),
('char3', 4, 8.4,'somename3', 6),
('char4', 5, 7.4,'somename4', 5),
('char5', 6, 9.4,'somename5', 4)

create table [route](
id int identity(1,1) primary key,
[name] varchar(255),
car int,
worker int,
schedule varchar(255),
constraint FK_cars_id foreign key (car) references cars(id),
constraint FK_worker_id foreign key (worker) references workers(id),
)

insert into [route] values
('name1', 1,1,'schedule1'),
('name2', 2,2,'schedule2'),
('name3', 3,3,'schedule3'),
('name4', 4,4,'schedule4'),
('name5', 5,5,'schedule5')


create table sec_workers(
id int identity(1,1) primary key,
[name] varchar(255),
secondname varchar(255),
thirdname varchar(255),
inviteyear datetime,
gender varchar(255),
)

insert into sec_workers values
('Игнатьев', 'Цицерон', 'Фёдерович', getdate(), 'male'),
('Гайчук', 'Иммануил', 'Андреевич', getdate(), 'male'),
('Козлов', 'Борис', 'Данилович', getdate(), 'male'),
('Пилипейко', 'Юлий', 'Эдуаржович', getdate(), 'male'),
('Королёв', 'Шарль', 'Васильевич', getdate(), 'male')

create table garage(
id int identity(1,1) primary key,
datein datetime,
dateout datetime,
garage_name varchar(255),
result varchar(255),
typeof varchar(255),
car int,
sec_worker int,

constraint FK_cars_id_2 foreign key (car) references cars(id),
constraint FK_sec_workers_id foreign key (sec_worker) references sec_workers(id),
)


insert into garage values
(getdate(), GETDATE()+1, 'garage_name1', 'OK', 'type1', 1,1),
(getdate(), GETDATE()+2, 'garage_name2', 'Not OK', 'type2', 2,2),
(getdate(), GETDATE()+3, 'garage_name3', 'OK', 'type3', 3,3),
(getdate(), GETDATE()+4, 'garage_name4', 'Not OK', 'type4', 4,4),
(getdate(), GETDATE()+5, 'garage_name5', 'OK', 'type5', 5,5)