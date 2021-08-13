!#/bin/bash

#autor: Clarissa Assunção
#descrição: Estrura de repetição que mostra se um número é positivo ou negativo 

echo "Digite um número inteiro"
read num_int

if [ $num_int -gt 0 ]
then
        echo "O número é positivo"
elif [ $num_int -lt 0 ]
then
        echo "O número é negativo"
elif [ $num_int -eq 0 ]
then
        echo "O número é nulo"
fi

