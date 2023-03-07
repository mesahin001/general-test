#!/bin/bash 
STR_1=$(docker exec -it shardeum-dashboard operator-cli status | awk '/state:/ {print $NF}')
STR_2="stopped"
echo $STR_1
echo $STR_2
if [ $STR_1 == $STR_2 ]
then
        echo "Strings are equal"
else
        echo "Strings are not equal"
fi
