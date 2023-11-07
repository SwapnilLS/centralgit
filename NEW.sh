#!/bin/bash


##########################################################

#  Author : SATYA
#  Date   : 04/11/2023
#  Use case : Script gives inforamtion about node health
#  Version : 1.0

##########################################################

set -x #debug mode
set -e #shows error and exits
set -o #if pipe fails gives error

echo "Print Disk Space"

df -h

echo "Print Memory Usage"

free -g

echo "Print total number of cpu"

nproc

echo "Find process-id have name sbin "

ps -ef | grep "sbin" | awk -F" " '{print $2}'
