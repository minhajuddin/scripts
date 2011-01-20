#!/bin/bash
while true
do
  curl http://my.cosmicvent.com/log/<api key>/login
  if [ $? -ne 0 ]
  then
    sleep 10
  else
    break
  fi
done
