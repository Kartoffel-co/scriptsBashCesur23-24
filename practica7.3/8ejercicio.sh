#!/bin/bash
source colors

for i in {1..1000}
    do
        multiplo=$(($i*7))
        multiplo7[$i]=$multiplo
done

for i in {1..1000}
    do
        echo $i. ${multiplo7[$i]}
done