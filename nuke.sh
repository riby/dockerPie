#!/bin/bash

HOW_MANY=$1
PREFIX=docker_pie
IMAGE=riby/docker_pie


for (( instance=$HOW_MANY; $instance > 1; instance=$instance - 1 )); do

	docker rm -f ${PREFIX}_${instance}
done
