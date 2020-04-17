#!/bin/bash


# Colors and variables
green='\033[0;32m'
red='\e[0;31m'
normal='\033[0m' #Normal color
line="\n" #New line


### FUNCTIONS

#function_1
function_1 () {
  echo -e "Folder /tmp"
  ls -l /tmp

}

#function_2
function_2 () {
  echo -e "${green}Folder /home $normal"
  ls -l /home
}

#function_3
function_3 () {
  echo -e "$line${red}Folder /srv $normal"
  ls -l /srv
}


### MAIN

main () {
  echo -e "-> Run program:$line"

  function_1
  function_2
  function_3
  #...
}


#Exec program
main
