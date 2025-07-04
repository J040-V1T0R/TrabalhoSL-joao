#!/bin/bash

# Define um tamanho aleatório para o vetor (entre 1 e 20)
N=$((RANDOM % 20 + 1))

# Gera N números aleatórios entre -100 e 100
echo $N > input.txt
for ((i = 0; i < N; i++)); do
    echo $((RANDOM % 201 - 100)) >> input.txt
done

# Compila o programa vetor (silenciosamente)
make vetor > /dev/null

# Executa o programa com input.txt e salva a saída em output.txt
./vetor < input.txt > output.txt

# Exibe os arquivos gerados
echo "Entrada de teste gerada:"
cat input.txt

echo -e "\nSaída produzida:"
cat output.txt
