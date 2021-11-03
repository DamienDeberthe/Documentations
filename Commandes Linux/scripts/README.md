## SCRIPTS

### Parameters
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


### Call function from another script
Two files:
* main.sh: Contain main program
* functions.sh: Contain functions. Here two simple commands touch and mkdir

functions.sh
```bash
#!/bin/bash
function_touch()
{
  touch test1
}
function_mkdir()
{
  mkdir $1
}
```

main.sh
```bash
#!/bin/bash
source functions.sh
function_touch
function_mkdir test2

exit 0
```

Execution:
```bash
$ ./main.sh
# Result
$ ls
test1 test2
```
<br/>


### Date
To create a date, for log for example (result: dd/mm/yyyy:hh:mm:ss):
```bash
date=`date +"%m/%d/%Y:%T"`
```

Example: yyyymmddhhmmss
```bash
date +"%Y%m%d%H%M%S"
```
<br/>


### Random value
To generate random values:
```bash
# 6 random letters (lowercase only)
rand=$(cat /dev/urandom | tr -dc 'a-z' | fold -w 6 | head -n 1)

# 10 random letters (uppercase & lowercase)
rand=$(cat /dev/urandom | tr -dc 'a-zA-Z' | fold -w 10 | head -n 1)

# 32 random letters (uppercase & lowercase) + numbers
rand=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
```
<br/>
