#!/bin/bash

# Gera um número aleatório entre -10 e 100
NUM=$((RANDOM % 111 - 10))

# Cria arquivo de entrada com esse número
echo "$NUM" > input.txt

# Compila o programa, se necessário
make primo > /dev/null

# Executa o programa com o arquivo de entrada
./primo < input.txt > output.txt

# Mostra os arquivos gerados
echo "Entrada de teste gerada:"
cat input.txt

echo -e "\nSaída produzida:"
cat output.txt
