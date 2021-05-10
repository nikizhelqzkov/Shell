echo -n "Write the string: "
read str
for i in $@; do
    echo "In $i has $(expr $(grep $str $i | wc -l))"
done
