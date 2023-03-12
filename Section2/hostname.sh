#! /bin/bash

SERVER_NAME=$(hostname)
echo "You are running this script on $SERVER_NAME !"
echo "You are running this script on ${SERVER_NAME}!"

SERV_NAME=`hostname`
echo "Using back quote(\`XVZ\`) for variable instead:"
echo "You are running this script on ${SERV_NAME}!"
echo "You are running this script on $SERV_NAME !"
