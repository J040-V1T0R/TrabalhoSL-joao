#!/bin/bash

# Gera um número aleatório entre -10 e 100
NUM=$((RANDOM % 111 - 10))

# Cria o arquivo de entrada com o número gerado
echo $NUM > input.txt

# Compila o programa usando o Makefile
make primo > /dev/null

# Executa o programa com input.txt como entrada e salva em output.txt
./primo < input.txt > output.txt

# Mostra a entrada e a saída
echo "=== Entrada de teste (input.txt) ==="
cat input.txt

echo -e "\n=== Saída produzida pelo programa (output.txt) ==="
cat output.txt