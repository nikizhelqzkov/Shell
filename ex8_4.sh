until who | grep $1; do
    echo "waiting for the user"
    sleep 30
done
echo "he comes"
