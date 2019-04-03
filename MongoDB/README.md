## MongoDB

### Install

```bash
apt install dirmngr
echo "deb http://repo.mongodb.org/apt/debian stretch/mongodb-org/4.0 main" >> /etc/apt/sources.list
apt-get update && apt-get install -y mongodb-org
```

Test with:
```bash
mongod
```
If there an error, do this:
```bash
sudo mkdir -p /data/db/
sudo chown -R mongodb: /data/db
sudo mongod
```

To connect the base, use the command <code>mongo</code> in another terminal.


