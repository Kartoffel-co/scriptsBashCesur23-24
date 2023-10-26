#!/bin/bash

user=$(who | cut -f1 -d" ")

dialog --title "Buenos dias" --msgbox "Buenos dias tenga usted $user" 5 50

clear