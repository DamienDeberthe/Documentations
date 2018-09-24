## Install Jekyll

```bash
apt-get update && apt-get install ruby ruby-dev build-essential
```

```bash
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME=$HOME/gems' >> ~/.bashrc
echo 'export PATH=$HOME/gems/bin:$PATH' >> ~/.bashrc
source ~/.bashrc
```

```bash
gem install jekyll bundler
```
