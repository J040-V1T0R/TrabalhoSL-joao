#!/bin/bash

# Gera um tamanho aleatório para o vetor entre 1 e 20
N=$((RANDOM % 20 + 1))

# Cria o arquivo de entrada
echo $N > input.txt

# Gera N números aleatórios entre -100 e 100
for ((i = 0; i < N; i++)); do
    echo $((RANDOM % 201 - 100)) >> input.txt
done

# Compila o programa vetor
make vetor > /dev/null

# Executa o programa com input.txt e salva a saída
./vetor < input.txt > output.txt

# Exibe a entrada e saída
echo "=== Entrada de teste (input.txt) ==="
cat input.txt

echo -e "\n=== Saída produzida pelo programa (output.txt) ==="
cat output.txt
