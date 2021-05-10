echo $#
i=1
for args in $@; do
    echo $i $args
    i=$(expr $i + 1)
done
set $(ls)
shift
shift
echo $#
i=1
for args in $@; do
    echo $i $args
    i=$(expr $i + 1)
done
