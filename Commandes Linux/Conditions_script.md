### IF
Template 1:
```bash
#!/bin/bash
if <command> ; then
  echo "Result command OK"
else
  echo "Result command NONOK"
fi
```

Template 2:
```bash
if [ condition ]
then
  <execute command>
elif [ condition ]
then
  <execute another command>
else
  <execute default command>
fi
```

<br>

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

Example 2:
```bash
#!/bin/bash
# -f : file /// -d : directory
# Si fichier n'existe pas je lance la commande, sinon je fais rien
if [ ! -f "file>" ]; then
  echo "File not exist"
fi
# Si fichier existe je lance la commande, sinon je fais rien
if [ -f "<file>" ]; then
  echo "File exist"
fi

# Si fichier existe afficher "file exist", sinon existe pas afficher "file not exist"
if [ -f "<file>" ]; then
  echo "File exist"
else
  echo "File not exist"
fi
```

Exemple 3:
```bash
#!/bin/bash
# Si "<SEARCH_CONTENT>" existe dans <file> remplacer la ligne avec <REPLACE_CONTENT>
# Sinon ajouter la ligne en fin du fichier <file>
if [[ ! -z $(grep "<SEARCH_CONTENT>" "<file>") ]]; then
  sed -i "s/.*<SEARCH_CONTENT>.*/<REPLACE_CONTENT>" <file>
then
  echo "<REPLACE_CONTENT>" >> <file>
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

Example 2:
```bash
#!/bin/bash
# Display every minute for waiting
minutes=5 && echo_minutes=$(($minutes + 1))
for i in `seq 1 $minutes`; do
  res=$(($echo_minutes - $i))
  echo "Waiting $res min..."
  sleep 60
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
