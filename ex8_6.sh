count=$(expr $(ls $1 | wc -c))
echo $count > $count
while who | grep $2
do
write $2 < $count
cat $count
break
done
rm $count
