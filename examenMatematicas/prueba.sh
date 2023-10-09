simb=${simbolo[$(random 4 0)]}
rand1=$(random $digitos 1)
rand2=$(random $digitos 1)

while [[ $simb = "/" && $rand1 -gt $rand2 ]]
      do
        rand1=$(random $digitos 1)
      done