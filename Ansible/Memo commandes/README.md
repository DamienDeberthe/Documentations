## MEMO COMMANDES ANSIBLE

### Fichier YML

Simple fichier YML :
```bash
# file.yml
---

- hosts: 
  remote_user: 

  tasks:
  - name: 1.
    shell:

```

Exécution des commandes en sudo, avec le paramètre <code>--ask-become-pass</code> lors de l’exécution du playbook :
