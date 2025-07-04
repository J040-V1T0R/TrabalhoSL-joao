#!/bin/bash

# Gera tamanho aleatório do vetor
N=$((RANDOM % 20 + 1))

# Arquivos específicos
INPUT="vetor_input.txt"
OUTPUT="vetor_output.txt"

# Cria entrada
echo "$N" > "$INPUT"
for ((i = 0; i < N; i++)); do
    echo $((RANDOM % 201 - 100)) >> "$INPUT"
done

# Compila o programa
make vetor > /dev/null

# Executa e salva saída
./vetor < "$INPUT" > "$OUTPUT"

# Mostra entrada e saída
echo "=== Entrada ($INPUT) ==="
cat "$INPUT"
echo -e "\n=== Saída ($OUTPUT) ==="
cat "$OUTPUT"
