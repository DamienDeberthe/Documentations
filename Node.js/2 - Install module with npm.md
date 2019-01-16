## Install module with npm

### Install
Create a directory for you projet and go in 
```bash
cd ~ && mkdir mod && cd mod
```

<br>

Install a module, for example 
```bash
npm install <module name>
```
List of all modules at: https://www.npmjs.com/

<br>

### Test with http-server
We want to create a simple http-server with Node.js:

* Install module http-server:
```bash
cd /tmp && mkdir http-server && cd http-server
npm install http-server
```

* Create an <code>index.html</code> file:
```bash
echo "http-server test" > index.html
```

* Run http-server:
```bash
node_modules/http-server/bin/http-server
```

* *Optionnaly* ! It's possible to run http-server with a command:
```bash
ln -s /tmp/http-server/node_modules/http-server/bin/http-server /usr/bin/http-server
http-server
```

* Connect to <code>http://<IP>:8080</code> and see our wonderful page
