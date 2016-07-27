#!/bin/bash


HOW_MANY=$1
PREFIX=docker_pie
IMAGE=docker_pie

start=`date +%s`


for (( instance=$HOW_MANY; $instance > 1; instance=$instance - 1 )); do
	NAME=$(docker run -d --name ${PREFIX}_${instance} $IMAGE)
	docker inspect --format '{{ .NetworkSettings.IPAddress }}' $NAME
done


end=`date +%s`
runtime=$(python -c "print '%u:%02u' % ((${end} - ${start})/60, (${end} - ${start})%60)")
echo "Time Taken to run " $HOW_MANY "Containers" $runtime