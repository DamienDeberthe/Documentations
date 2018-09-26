## Jekyll
Jekyll is a static site generator, with easy configuration. It contains a lot of template for create simple site.


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
