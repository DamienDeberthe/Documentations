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

Exemple:
```bash
#!/bin/bash
if find . -type f | grep <file> > /dev/null ; then #Si fichier existe renvoie OK, sinon NONOK
  echo "File exist"
else
  echo "File not exist"
fi

```

### FOR
