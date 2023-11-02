#!/bin/bash
read -p "nombre de usuario: " nombre

nombreLenght=${#nombre}
usuario=$( users | grep $nombre | cut -c 1-$nombreLenght)

if [[ $usuario = $nombre ]]
    then
        echo el usuario esta activo
    else
        echo el usuario no esta activo
fi