### Postgresql

### Server
#### Install

```bash
apt-get update && apt-get install -y postgresql96-server
```

Start Postgresql:
```bash
# Initialize Posgresql
/usr/pgsql-9.6/bin/postgresql96-setup initdb
# Start/Enable postgresql-9.6 service
systemctl enable postgresql-9.6.service
systemctl start postgresql-9.6.service
```

Restart service:
```bash
service postgresql-9.6 restart
```

<br/>

Tests:
```bash
su - postgres
psql
```

#### Local access
Configure for local access
* Modify <code>/var/lib/pgsql/9.6/data/pg_hba.conf</code>: <code>local   all             all                                     trust</code>
* Modify <code>/var/lib/pgsql/9.6/data/pg_hba.conf</code>: <code>host    all             all             127.0.0.1/32            trust</code>
* Restart service: <code>service postgresql-9.6 restart</code>

#### Distant access
Configure for distant access
* Uncomment and modify <code>/var/lib/pgsql/9.6/data/postgresql.conf</code>: <code>listen_addresses = '*'</code>
* Add at the end of the file <code>/var/lib/pgsql/9.6/data/pg_hba.conf</code>: <code>host    all             all             0.0.0.0/0               trust</code>
* Restart service: <code>service postgresql-9.6 restart</code>

### Client
