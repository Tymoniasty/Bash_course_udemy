#!/bin/bash
HOST="google.com"

ping -c 1 $HOST
if [ "$?" -eq "0" ] #'-eq' = 'equal' and '-ne' = 'non equal'
then
    echo "$HOST reachable"
else
    echo "$HOST  un-reachable"
fi