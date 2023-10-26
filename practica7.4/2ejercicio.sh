#!/bin/bash

if dialog --title "Equipo" --yesno "Eres del Barcelona" 5 50
    then
        dialog --title "Equipo" --msgbox "Eres cule" 5 50
    else
        dialog --title "Equipo" --msgbox "no eres cule" 5 50    
fi

clear