#!/usr/bin/env bash

Age=23
if [ "$Age" -ge 18 ]; then
  echo "You can vote"
else
  echo "You cannnnot vote"
fi

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
