## Jekyll
Jekyll is a static site generator, with easy configuration. It contains a lot of template for create simple site.
<br><br>

### Install Jekyll
Install pre-requist:
```bash
apt-get update && apt-get install ruby ruby-dev build-essential
```
Install system variables:
```bash
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME=$HOME/gems' >> ~/.bashrc
echo 'export PATH=$HOME/gems/bin:$PATH' >> ~/.bashrc
source ~/.bashrc
```
Install Jekyll:
```bash
gem install jekyll bundler
```
<br>

### Create first site
Create an index.html file like :
```bash
<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <title>My awesome Jekyll site</title>
  </head>
  <body>
    <center><h1>My awesome Jekyll site</h1></center>
  </body>
</html>
```
Build the dev with the command and go to <code>http://<IP>:4000</code>:
```bash
jekyll serve --host 0.0.0.0
```


https://www.netlify.com/blog/2015/10/28/a-step-by-step-guide-jekyll-3.0-on-netlify/
