echo "SHTE UBIQ UBUNTUUUTUU\n"
sleep 2
echo "Broq procesi saa: $(ps -u $1 -o "pid" | tail -n +2 | wc -l)"
sleep 2
echo "bye\n"
sleep 3
set `ps -u $1 -o "pid" | tail -n +2`

for i in $@
do
kill -9 $i
done
