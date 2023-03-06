#!/bin/bash
HOST="gocogle.com"

ping -c 1 $HOST
if [ "$?" -eq "0" ]
then
    echo "$HOST reachable"
else
    echo "$HOST  un-reachable"
fi