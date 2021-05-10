counting() {
   c=$#
   suming=$(($1 + $2))
   echo $c
   echo $suming
   echo "-------\n"
   i=0
   while [ $i -lt 100000 ]; do
      echo $i
      mkdir $suming"aba"
      cd $suming"aba"
      pwd
      i=$(($i + 1))
   done
}

counting 7 4 5
