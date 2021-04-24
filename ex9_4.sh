#ex.4
z=$(cat f_niz)
if [ -n "$3" ]; then
    z=$3
fi
cntC=$(ls | grep .txt | wc -l)
cntOut=$(ls | grep .sh | wc -l)
cntAll=$(ls | wc -l)
rest=$(($cntAll - $cntC - $cntOut))
echo "Ne polzvaemi failove : " $rest
if [ ! -d "$z" ]; then
    mkdir $z
fi
cd $z
touch names
cd ../
cp *.txt $1
echo *.txt > $z/names
cp *.sh $2
echo *.sh >> $z/names
