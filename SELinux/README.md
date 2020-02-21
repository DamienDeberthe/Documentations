## SELinux

### Etat
Afficher état de SELinux :
```bash
getenforce
```
* Disabled :
* Permissive : SELinux n’empêche pas les processus de réaliser des actions non préalablement autorisées mais logue tous les accès non autorisés dans <code>/var/log/messages</code>.
* Enforcing : SELinux est activé. Toutes les actions non préalablement autorisées sont bloquées par sécurité et logué dans <code>/var/log/audit/audit.log</code> et <code>/var/log/messages</code>.

<br>

Changer état SELinux, fichier <code>/etc/selinux/config</code> :
```bash
SELINUX=disabled
SELINUX=permissive
SELINUX=enforcing
```
