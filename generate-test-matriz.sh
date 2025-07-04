#!/bin/bash

# Gera tamanho aleatório da matriz entre 2 e 5
N=$((RANDOM % 4 + 2))

# Operações possíveis
OPERACOES=("a" "s" "m")
OPERACAO=${OPERACOES[$RANDOM % 3]}

# Arquivos específicos
INPUT="matriz_input.txt"
OUTPUT="matriz_output.txt"

# Inicia o arquivo com o valor de N
echo "$N" > "$INPUT"

# Função para gerar uma matriz N x N
gerar_matriz() {
    for ((i = 0; i < N; i++)); do
        for ((j = 0; j < N; j++)); do
            printf "%d " $((RANDOM % 21 - 10)) >> "$INPUT"
        done
        echo "" >> "$INPUT"  # Nova linha para próxima linha da matriz
    done
}

# Gera duas matrizes
gerar_matriz  # primeira
gerar_matriz  # segunda

# Adiciona a operação no final
echo "$OPERACAO" >> "$INPUT"

# Compila o programa
make matriz > /dev/null

# Executa o programa com a entrada e salva a saída
./matriz < "$INPUT" > "$OUTPUT"

# Exibe entrada e saída
echo "=== Entrada ($INPUT) ==="
cat "$INPUT"
echo -e "\n=== Saída ($OUTPUT) ==="
cat "$OUTPUT"
