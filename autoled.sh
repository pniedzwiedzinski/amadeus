#!/bin/sh

compose_path="/home/pi/amadeus"

cd $compose_path

state=0
docker-compose exec hyperion hyperion-remote --color black

while true; do
  sleep 5
  tvinfo=`tvservice -s | cut -d ' ' -f 2`

  # If Hyperion set black and tv turned on
  [ $state -eq 0 ] && [ "$tvinfo" == "0xa" ] && \
    docker-compose exec hyperion hyperion-remote --clear && state=1

  # If Hyperion running normally and tv turned off
  [ $state -eq 1 ] && [ "$tvinfo" == "0x9" ] && \
    docker-compose exec hyperion hyperion-remote --color black && state=0
done
