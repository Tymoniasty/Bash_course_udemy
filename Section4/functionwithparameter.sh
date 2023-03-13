#!/bin/bash
function hello(){
    echo "hello $1"
}
hello Tymon
hello Ania

echo "function with multiple parameters: "
hellomulti(){
    for Name in $@
    do
        echo "Hello $Name"
    done
}
hellomulti Tymon Ania Olivia