#!/bin/bash

# Gera tamanho aleatório da matriz
N=$((RANDOM % 4 + 2))

# Operações possíveis
OPERACOES=("a" "s" "m")
OPERACAO=${OPERACOES[$RANDOM % 3]}

# Arquivos específicos
INPUT="matriz_input.txt"
OUTPUT="matriz_output.txt"

# Cria entrada
echo "$N" > "$INPUT"

# Primeira matriz
for ((i = 0; i < N * N; i++)); do
    echo $((RANDOM % 21 - 10)) >> "$INPUT"
done

# Segunda matriz
for ((i = 0; i < N * N; i++)); do
    echo $((RANDOM % 21 - 10)) >> "$INPUT"
done

# Operação
echo "$OPERACAO" >> "$INPUT"

# Compila o programa
make matriz > /dev/null

# Executa e salva saída
./matriz < "$INPUT" > "$OUTPUT"

# Mostra entrada e saída
echo "=== Entrada ($INPUT) ==="
cat "$INPUT"
echo -e "\n=== Saída ($OUTPUT) ==="
cat "$OUTPUT"
