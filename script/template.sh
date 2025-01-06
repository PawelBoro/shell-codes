#!/usr/bin/env bash

# Age=23
# if [ "$Age" -ge 18 ]; then
#   echo "You can vote"
# else
#   echo "You cannnnot vote"
# fi

# Nazwa="Anna"
# Age=17
# echo "$Nazwa ma $Age"

# var1="Apple" #global variable
# myfun() {
#   local var2="Banana" #local variable
#   var3="Cherry"       #global variable
#   echo "The name of first fruit is $var1"
#   echo "The name of second fruit is $var2"
# }
# myfun #calling function

# echo "The name of first fruit is $var1"
# #trying to access local variable
# echo "The name of second fruit is $var2"
# echo "The name of third fruit is $var3"

#7.1
# echo "Dzisiaj jest $(date)"
# echo "Katalog bieżący to $(pwd), a nazwa hosta to $(hostname)"

#7.2
# ONE=$1
# TWO=$2
# THREE=$3

# echo "Mamy $# parametrow zawierajacych $@"
# echo "Pierwszt to $ONE, drugi to $TWO, trzeci  to $THREE"

#7.3
# read -p "Przy jakiej ulicy mieszkałeś w dzieciństwie: " ulica
# read -p "W jakim miescie: " miasto
# echo "Dorastałem przy ulicy $ulica w mieście $miasto"

#7.4
# read -p "Let me know what Operating System are you using, do not use capital words " os
# # echo "$os"
# case "${os}" in
# "linux")
#   echo "You are using $os, great choice!"
#   ;;
# "windows" | "macos")
#   echo "What are you doing?!, just switch for the Linux!"
#   ;;
# *)
#   echo "Is $os even an Operating System?"
#   ;;
# esac

#7.5
for item in {pies,kot,mors,kon}; do
  echo "Moje ulubione zwierze to ${item}"
done
