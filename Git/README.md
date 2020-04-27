# Git

### Identifiants
Permanent authentification:

* Repo already clone:
```bash
cd <repo>
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
git config --global user.password "your password"
git config credential.helper store
```

* Git clone + authentication:
```bash
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
git config --global user.password "your password"

git clone <repo>
Username for 'https://gitlab.com': <username>
Password for 'https://<username>@gitlab.com': <password>

cd <repo>
git config credential.helper store
git pull
Username for 'https://gitlab.com': <username>
Password for 'https://<username>@gitlab.com': <password>
```

<br/>

### Options
Utiliser git au travers d'un proxy :
```bash
git config --global http.proxy http://proxy.domain.com:port
```
