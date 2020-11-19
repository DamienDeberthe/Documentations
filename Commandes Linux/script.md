## SCRIPTS

#### Parameters
Script:
```bash
#!/bin/bash
echo "$1"
```

Execution:
```bash
./script.sh test
# Result
test
```

<br/>

#### Date
Pour dater dans un fichier de log, créer la variable (résultat : dd/mm/yyyy:hh:mm:ss) :
```bash
date=`date +"%m/%d/%Y:%T"`
```

<br/>

#### Valeur aléatoire
Générer des valeurs aléatoires :
```bash
# 6 random letters (lowercase only)
rand=$(cat /dev/urandom | tr -dc 'a-z' | fold -w 6 | head -n 1)

# 10 random letters (uppercase & lowercase)
rand=$(cat /dev/urandom | tr -dc 'a-zA-Z' | fold -w 10 | head -n 1)

# 32 random letters (uppercase & lowercase) + numbers
rand=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
```
<br/>
