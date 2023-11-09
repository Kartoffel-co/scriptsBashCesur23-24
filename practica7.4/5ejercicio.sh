#!/bin/bash

dialog --title "contraseña" --insecure --passwordbox "introduce tu contraseña" 10 50 2>pass
pass=$(cat pass)
echo $pass

dialog --title "contraseña y usuario" --infobox "Nombre de usuario $(whoami) ,Contraseña $pass" 3 50