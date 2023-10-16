#!/bin/bash
n1=1
n2=0
for i in {0..19}
    do
        echo n1=$n1
        echo n2=$n2
        echo $n1+$n2
        n3=$(($n1+$n2))
        echo $n3
        n2=$n1
        n1=$n3
done