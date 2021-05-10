read user file
src=$(cat "$file" | tail -n 1 | cut -d "1" -f1)
count=$(find ../ -name $src | wc -l)
if [ $count -gt 0 ]; then
    echo "Failovete s takova ime sa: " $count
else
    echo "BRAAT NQQ TAKIVA FAILOVE" >writer
    write $user <writer
    rm writer
fi
