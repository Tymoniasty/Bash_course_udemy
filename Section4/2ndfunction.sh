#!/bin/bash

hello(){
    echo "Hello!"
    now
}
now(){
    echo
    echo "It's $(date +%R) hrs" #'R' = 24h format 'r' = 12h format
}

hello