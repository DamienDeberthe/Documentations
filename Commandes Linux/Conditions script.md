### IF
Syntax:
```bash
#!/bin/bash
if <command> ; then
  echo "Result command OK"
else
  echo "Result command NONOK"
fi
```
Example 1:
```bash
#!/bin/bash
# Test with argument in command line like: ./script.sh 2
if [ "$1" == "2" ] ; then
  echo "Result command OK"
else
  echo "Result command NONOK"
fi
```
Exemple 2:
```bash
#!/bin/bash
# Si fichier existe alors je fais rien, sinon je lance la commande
if [ -f "<file>" ]; then
  echo "File not exist"
fi
# Si fichier n'existe pas alors je fais rien, sinon je lance la commande
if [ ! -f "<file>" ]; then
  echo "File exist"
fi
```

<br>

### FOR

Syntax:
```bash
#!/bin/bash
for i in <value/command>; do
  echo "Value for i: $i"
done
```

Example 1:
```bash
#!/bin/bash
for i in `seq 1 5`; do
  echo "Value for i: $i"
done
```

<br>

### WHILE

Syntax:
```bash
cat <file> | while read line
do
  echo "$line"
done
```

Example 1:
```bash
cat packages.txt | while read line
do
   echo "PACKAGE $line"
   dpkg -i | grep $line
   echo -e "------------\n\n"
done
```
