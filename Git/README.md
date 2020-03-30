# Git

### Identifiants
Permanent authentification:
```bash
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
