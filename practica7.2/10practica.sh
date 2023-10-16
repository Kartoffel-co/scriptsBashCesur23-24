#!/bin/bash
read -p "nombre de usuario a buscar " usuario

if [[ $(cut -d":" -f 1 /etc/passwd | grep -Z $usuario) = $usuario ]]
    then
        echo el usuario: $usuario existe
    else
        echo el usuario: $usuario no existe
fi