# Difference between dictionnary and list

## Dictionnary 

All variables in a dictionnary start with indentation.

Playbook example:
```yml
- name: Récupérer une variable d'un dictionnaire avec Ansible.
  hosts: localhost
  vars:
    mon_dictionnaire:
      nom: "John"
      age: 30
      ville: "Paris"
  tasks:
    - name: Afficher la valeur associée à la clé "ville".
      debug:
        msg: "La ville est {{ mon_dictionnaire['ville'] }}"
```

Result:
```bash
La ville est Paris
```

## List

All variable in a list start with identation and "-".

### Playbook example:
```yml
- name: Récupérer une variable d'une liste avec Ansible.
  hosts: localhost
  vars:
    ma_liste:
      - a
      - b
      - c
  tasks:
    - name: Afficher l'élément de la liste à l'index 1.
      debug:
        msg: "L'élément à l'index 1 est {{ ma_liste[1] }}"
```

Result:
```bash
L'élément à l'index 1 est b
```
