## Postgresql commands

Postgresql command line:
```bash
su - postgres
psql
```

Leave PSQL prompt:
```bash
\q
```

### List

List all databases:
```bash
\list
```

Connect to a database:
```bash
\c <database>
```

List all tables in a database:
```bash
\d
```

List all roles:
```bash
\du
```

### Actions

Create database:
```bash
CREATE DATABASE <database>;
```

Create user:
```bash
CREATE USER <user> WITH PASSWORD '<password>';
```

Give privilege to a user on a dabatase:
```bash
GRANT ALL PRIVILEGES ON DATABASE "<database>" to <user>;
```

Delete database:
```bash
DROP DATABASE <database>;
```
