## MEMO COMMANDES ANSIBLE


### Exemples de fichiers YML
* Simple fichier YML
```bash
# file.yml
---

- hosts: 
  remote_user: 

  tasks:
  - name: 1.
    shell:

```
* Fichier executé avec droits sudo<br/>
Exécution des commandes en sudo, avec le paramètre <code>--ask-become-pass</code> ou <code>-K</code> lors de l’exécution du playbook demandant le mot de passe sudo :
```bash
# file.yml
---

- hosts: 
  remote_user: 
  become: yes

  tasks:
  - name: 1.
    shell:

```
<br/>

### Commandes utiles
* Lancer le playbook en sudo, en renseignant le password dans le fichier (ne pas renseigner l'option -K lors du lancement du playbook) :
```bash
  become: yes
  
  vars:
    ansible_sudo_pass: <secret_password>
```
<br/>

* Exécuter une commande bash :
```bash
  - name: 1. Command 
    shell: 
```
* Afficher le résultat d'une commande : (eviter les "-" dans le nom des variables)
```bash
  - name: 1. cat /etc/passwd
    shell: cat /etc/passwd
    register: <var>
  - name: 2. Affichage du resultat de la commande
    debug: var=<var>.stdout_lines
```
<br/>

* Ignorer les erreurs et continuer l'execution du playbook (pour l'ensemble du playbook) :
```bash
- hosts: <hosts>
  remote_user: ansible
  become: yes
  ignore_errors: yes
```
* Ignorer les erreurs et continuer l'execution du playbook (pour une fonction particulière) :
```bash
  - name: 1. cat impossible_file
    shell: cat impossible_file
    ignore_errors: yes
```
