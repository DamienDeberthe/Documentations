## Logrotate

Logrotate permet de réaliser la rotation des fichiers afin d'éviter que les fichiers de logs soient trop lourd.
<br/>
De base logrotate est installé sur la distribution Debian.

<br/>

### Configuration

La configuration se trouve dans le dossier <code>/etc/logrotate.d/\<app\></code>

<br/>

### Test

Pour tester, utiliser la commande :
```bash
logrotate --force <config_file_in_logrotate.d>
```
