for i in 1 2 3
do
cp $1 $1_$i
done
echo -n "Enter the name: "
read name
grep $2 $1
grep $2 $1 | wc -l > $name
