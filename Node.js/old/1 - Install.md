## Install and test Node.js


### Install

#### Debian

```bash
curl -sL https://deb.nodesource.com/setup_11.x | bash -
apt-get install -y nodejs
```

Source:
https://github.com/nodesource/distributions/blob/master/README.md#deb

<br>

### Test
Create a file <code>testnode.js</code> with content:
```bash
console.log("Test123");
```
<br>

To execute this file with Node.js, run:
```bash
node testnode.js
```
<br>

If you see <code>Test123</code> in terminal it's ok
