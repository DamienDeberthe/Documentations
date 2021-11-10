## MYSQL

### Server
Authorize remote connection :
```bash
rgrep "bind-address" /etc/mysql/*
### CHANGE THE BIND ADDRESS WITH 0.0.0.0
bind-address            = 0.0.0.0
```
<br/>


### Commands
Connection to database
```bash
mysql -u <user> -p
```

List databases:
```bash
show databases;
```

Dump a database
```bash
mysqldump -u <user> -p <database_name> > <database_name>.sql
```

<br/>

Create database :
```bash
CREATE DATABASE IF NOT EXISTS <new_database>;
```
<br/>

Create an intern user :
```bash
CREATE USER '<user>'@'localhost' IDENTIFIED BY '<password>';
GRANT ALL PRIVILEGES ON <new_database>.* TO '<user>'@'localhost' IDENTIFIED BY '<password>';
FLUSH PRIVILEGES;
```
Update an user for remote access :
```bash
UPDATE mysql.user SET host = '%' WHERE host = 'localhost' AND user = '<user>';
UPDATE mysql.user SET host = '192.168.x.%' WHERE host = 'localhost' AND user = '<user>';
```
<br/>

Create user with remote access :
```bash
CREATE USER '<user>'@'%' IDENTIFIED BY '<password>';
GRANT ALL PRIVILEGES ON <new_database>.* TO '<user>'@'%' IDENTIFIED BY '<password>';
FLUSH PRIVILEGES;
```
<br/>

List users :
```bash
use myslq;
select * from user;
select * from user where user='<user>';
```
