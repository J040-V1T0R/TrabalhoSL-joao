#João Vitor da Graça Américo

# 📘 Trabalho – Programas em C++

Este projeto contém três programas escritos em C++ para práticas de entrada, saída e manipulação de dados.

## 📂 Programas

- **`primo.cpp`**: Verifica se um número inteiro é primo.
- **`vetor.cpp`**: Lê um vetor de inteiros e imprime o maior valor.
- **`matriz.cpp`**: Realiza adição, subtração ou multiplicação entre duas matrizes quadradas.

---

## 🛠️ Compilação com Makefile

Você pode compilar todos os programas ao mesmo tempo ou individualmente.
#
### 🔧 Compilar todos:
bash

### Compilar separadamente 
make primo
make vetor
make matriz

### Limpar executáveis:
make clean

## Testes Automatizados
Há três scripts que geram entradas aleatórias e executam os programas automaticamente.

### Executar testes:
./generate-test-primo.sh     # Gera primo_input.txt e primo_output.txt
./generate-test-vetor.sh     # Gera vetor_input.txt e vetor_output.txt
./generate-test-matriz.sh    # Gera matriz_input.txt e matriz_output.txt



