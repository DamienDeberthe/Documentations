## Create_command


### Create alias
Create alias from script to /usr/local/bin:
```bash
ln -s <script> /usr/local/bin/<new_command>
```


### Code
```bash
#!/bin/bash

## Functions

function usage {
  echo "Command"
  echo "  <Command usage>"
  echo ""
  echo "Usage"
  echo "  <command> [-c1] [-c2] [-e|--echo] [-h|--help] [-t|--test]"
  echo ""
  echo "  -c1 -c2       Use several parameters"
  echo "  -e --echo     Collect parameter to echo"
  echo "  -h --help     Help"
  echo "  -t --test     Command usage test"
  echo ""
}


## Command

# If no parameter, help
if [ $# == 0 ]; then
  usage
  exit 1

# Else, use parameter with case to choose actions 
else
  while [[ $# -gt 0 ]]; do
    param="$1"
    
    case $param in
      -h|--help)
        usage
        exit 0
      ;;
      -t|--test)
        echo "Command usage test"
        exit 0
      ;;
      -c1)
        echo "Command 1"
      ;;
      -c2)
        echo "Command 2"
      ;;
      -e|--echo)
        echo "Param to echo is: $2"
        exit 0
      ;;
    esac

    shift
  done

fi


exit 0



```
