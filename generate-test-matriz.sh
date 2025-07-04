#!/bin/bash

# Gera um tamanho aleatório da matriz entre 2 e 5
N=$((RANDOM % 4 + 2))

# Lista de operações possíveis
OPERACOES=("a" "s" "m")

# Escolhe uma operação aleatória
OPERACAO=${OPERACOES[$RANDOM % ${#OPERACOES[@]}]}

# Cria o arquivo de entrada
echo $N > input.txt

# Gera a primeira matriz
for ((i = 0; i < N * N; i++)); do
    echo $((RANDOM % 21 - 10)) >> input.txt
done

# Gera a segunda matriz
for ((i = 0; i < N * N; i++)); do
    echo $((RANDOM % 21 - 10)) >> input.txt
done

# Adiciona a operação
echo $OPERACAO >> input.txt

# Compila o programa
make matriz > /dev/null

# Executa com o input e salva a saída
./matriz < input.txt > output.txt

# Mostra a entrada e saída
echo "Entrada de teste:"
cat input.txt

echo -e "\nSaída produzida:"
cat output.txt
