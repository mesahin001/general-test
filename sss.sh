#!/bin/bash 
while true; do 
  #run
  #zaman=$(date '+%Y/%m/%d %H:%M:%S')  
  status=$(docker exec -it shardeum-dashboard operator-cli status | awk '/state:/ {print $NF}')
  #echo "$status"
   #check 
   echo "Your node stopp I am trying to start now1"
   echo "$status"
   echo "$stopd"
   if [ "$status" == "stopped" ]; then 
  echo "Your node stopp  I am trying to start now2 "
  sleep 2
    # if 
  docker exec -it shardeum-dashboard operator-cli start 
  sleep 10 
  else
  echo "3"
  fi 
   #wait 
  sleep 60 
done
