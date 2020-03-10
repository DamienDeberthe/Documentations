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
if [ "$1" == "2" ] ; then #Test with variable in command line like: ./script.sh 2
  echo "Result command OK"
else
  echo "Result command NONOK"
fi
```
Exemple 2:
```bash
#!/bin/bash
if find . -type f | grep <file> > /dev/null ; then #Si fichier existe renvoie OK, sinon NONOK
  echo "File exist"
else
  echo "File not exist"
fi
```

### FOR
