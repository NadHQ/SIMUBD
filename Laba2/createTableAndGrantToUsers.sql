use DB_Laba
create table Univer(
id int NOT NULL primary key,
name nchar(30) NULL,
kol_chasov int NULL
);


grant delete, insert, update, select on Univer to MEGAUSER
grant execute to MEGAUSER


grant select on Univer to NOTUSER