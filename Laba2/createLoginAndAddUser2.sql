exec sp_addlogin 'Petrov_Stud', 'Petrov', 'DB_Laba'
use DB_Laba
exec sp_adduser 'Petrov_Stud', 'Petrov_Stud'
exec sp_addrolemember 'NOTUSER', 'Petrov_Stud'