#!/bin/bash
if [[ $(cut -d":" -f 1 /etc/passwd | grep -Z $1) = $1 ]]
    then
        echo el usuario: $1 existe
    else
        echo el usuario: $1 no existe
fi