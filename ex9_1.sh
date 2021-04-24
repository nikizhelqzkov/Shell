if [ -d "$1" ]
then
   arr=$(ls "$1")
   cd $1
    for i in $arr
     do
	
	if [ $(cat "$i" | wc -c) -gt $2 ]
	then
	   echo $i
	fi
     done
   cd ../
else
 echo "No such directory"
fi
