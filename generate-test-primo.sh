#!/bin/bash

# Gera número aleatório entre -10 e 100
NUM=$((RANDOM % 111 - 10))

# Arquivos específicos
INPUT="primo_input.txt"
OUTPUT="primo_output.txt"

# Cria arquivo de entrada
echo "$NUM" > "$INPUT"

# Compila o programa
make primo > /dev/null

# Executa e salva saída
./primo < "$INPUT" > "$OUTPUT"

# Mostra entrada e saída
echo "=== Entrada ($INPUT) ==="
cat "$INPUT"
echo -e "\n=== Saída ($OUTPUT) ==="
cat "$OUTPUT"
