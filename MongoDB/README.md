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


### Explications

MongoDB have 2 elemnts:
* Document : 
* Collection : Contains the documents


### Mongo Shell

#### Databases
Show all databases:
```bash
show dbs
```

Create and use a database:
```bash
use <db_name>
```

#### Collections
Show collections into the database in use:
```bash
show collections
```

Create a collection into the database in use:
```bash
db.createCollection("<collection_name>");
```

#### Documents

SHOW <br>
Show all documents into a collection:
```bash
db.<collection_name>.find()
```

Show a specific document into a collection:
```bash
db.<collection_name>.find({"<doc1>: "<value1>"})
```


<br>CREATE <br>
Create a document into a collection:
```bash
db.<collection_name>.insert({<doc1>: "<value1>", <doc2>: "<value2>", <doc3>: "<value3>"})
```
