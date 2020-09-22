## Posgresql commands

Postgresql command line:
```bash
su - postgres
psql
```

List all databases:
```bash
\list
```

Create a new database:
```bash
create database <NEW_DATABASE>;
```

Connect to a database:
```bash
\c <DATABASE>
```

List all tables in a database:
```bash
\d
```

Create database:
```bash
CREATE DATABASE <DATABASE>;
```

Create user:
```bash
CREATE USER <USER> WITH PASSWORD '<PASSWORD>';
```

Give privilege to a user on a dabatase:
```bash
GRANT ALL PRIVILEGES ON DATABASE "<DATABASE>" to <USER>;
```

Leave PSQL prompt:
```bash
\q
```
