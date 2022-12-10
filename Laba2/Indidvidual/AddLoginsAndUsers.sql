exec sp_addlogin 'mem1', '123321', 'simubd'
exec sp_addlogin 'usr1', 'user', 'simubd'

use simubd

exec sp_adduser 'mem1', 'mem1'
exec sp_addrolemember 'Administrator', 'mem1'

exec sp_adduser 'usr1', 'usr1'
exec sp_addrolemember 'JustUser', 'usr1'