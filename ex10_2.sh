read str
if [ ! -d $str ]; then
    mkdir $str
    arr=$(ls)
    count=0
    for i in $arr; do
        if [ -r "$i" -a -w "$i" -a ! -x "$i" -a ! -d "$i" ]; then
            cp $i $str
        else
            count=$(expr "$count" + 1)
            echo "other: " $i
        fi

    done
    echo "Other files: " $count
fi
