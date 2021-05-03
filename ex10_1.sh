# $1, $2 - directorii
oldD=$PWD
cd $1
br1=$(ls | grep ".c" | wc -l)
cd $oldD
cd $2
br2=$(ls | grep ".c" | wc -l)
br3=$(expr $br1 + $br2)
if [ $br3 -gt 2 ]; then
    touch source.txt
    cd $1
    echo *.c >>$oldD/source.txt
    cd $oldD
    cd $2
    echo *.c >>$oldD/source.txt
    cd $oldD
    chmod 444 source.txt
else
    echo "Count of C files : " $br3
fi
