#!/bin/sh

counting() {
   c=$#
   # $1++
   # $2--
   suming=$(($1 + $2))

   echo $c
   echo $suming
   echo "-------\n"
   i=0
   while [ $i -lt 100000 ]; do
      echo $i
      mkdir $suming"kur"
      cd $suming"kur"
      pwd
      i=$(($i + 1))
   done
}

counting 7 4 5
