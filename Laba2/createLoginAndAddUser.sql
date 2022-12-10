exec sp_addlogin 'ivanov_dek', 'ivanov', 'DB_Laba'
use DB_Laba
exec sp_adduser 'ivanov_dek', 'ivanov_dek'
exec sp_addrolemember 'MEGAUSER', 'ivanov_dek'