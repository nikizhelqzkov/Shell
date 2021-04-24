#ex9_2
read d1
read d2
firstD=$(ls "$d1" | grep .out | wc -l)
secondD=$(ls "$d2" | grep .out | wc -l)
if [ $firstD -gt $secondD ]; then
	read d3
	mkdir $d3
	arr=$(ls "$d1")
	cd $d1
	for i in $arr; do
		if [ -r "$i" -a -w "$i" -a ! -x "$i" ]; then

			cp $i ../$d3
		fi
	done
	cd ../
fi
