#!/bin/bash

echo los usuario logeados son $(users)
echo el nivel de ejecucion es 
echo $(who -r | cut -c 1-22)
echo la fecha y hora de arranque del sistema es $(uptime -s)