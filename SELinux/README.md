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

Changer état SELinux, fichier <code>/etc/selinux/config</code> & reboot la machine pour que les changements soient effectif :
```bash
SELINUX=disabled
SELINUX=permissive
SELINUX=enforcing
```

<br>


### Contextes
Afficher les informations SELinux sur un fichier/dossier :
```bash
ls -lZ <file>
utilisateur:rôle:type:niveau <file>
user:role:type/context:level <file> #English
```

Afficher le contexte que devrait posséder un fichier/dossier :
```bash
matchpathcon <file>
```

Restaurer le contexte du fichier/dossier :
```bash
restorecon -v <file>
```

<br>

Modifier le contexte d'un fichier/dossier :
```bash
semanage fcontext -a -t <type> <file>
restorecon -v <file>

```
