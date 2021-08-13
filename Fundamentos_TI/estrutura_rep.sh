#!/bin/bash

#autor: Clarissa Assuncao
#descrição: Atividade de estrutura de repeticao, que faz contagem de números em ordem crescente até número desejado

echo "Esccreva o número desejado"
read numero

i=1

while [ $i -lt $numero ]
do
        echo "- $i"
        i=$((i+1))
done

