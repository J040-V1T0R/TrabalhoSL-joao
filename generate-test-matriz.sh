#!/bin/bash

# Gera um tamanho aleatório para a matriz entre 2 e 5
N=$((RANDOM % 4 + 2))

# Operações possíveis
OPERACOES=("a" "s" "m")
OPERACAO=${OPERACOES[$RANDOM % ${#OPERACOES[@]}]}

# Cria o arquivo de entrada
echo $N > input.txt

# Gera primeira matriz (N x N)
for ((i = 0; i < N * N; i++)); do
    echo $((RANDOM % 21 - 10)) >> input.txt
done

# Gera segunda matriz (N x N)
for ((i = 0; i < N * N; i++)); do
    echo $((RANDOM % 21 - 10)) >> input.txt
done

# Adiciona operação no final
echo $OPERACAO >> input.txt

# Compila o programa usando o Makefile
make matriz > /dev/null

# Executa o programa com o input.txt e salva a saída
./matriz < input.txt > output.txt

# Mostra a entrada e a saída
echo "=== Entrada de teste (input.txt) ==="
cat input.txt

echo -e "\n=== Saída produzida pelo programa (output.txt) ==="
cat output.txt
