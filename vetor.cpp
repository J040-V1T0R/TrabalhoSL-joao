#include <iostream>  // Inclui a biblioteca para operações de entrada e saída (cin, cout)
#include <vector>    // Inclui a biblioteca para usar a classe std::vector
#include <algorithm> // Inclui a biblioteca para usar a função std::max_element

int main() {
    int n; // Declara uma variável inteira 'n' para armazenar o tamanho do vetor

    // Lê o número inteiro 'n' da entrada padrão (teclado ou arquivo)
    std::cin >> n;

    // Declara um vetor de inteiros chamado 'vetor' com 'n' elementos
    std::vector<int> vetor(n);

    // Loop para ler cada um dos 'n' elementos do vetor
    for (int i = 0; i < n; ++i) {
        // Lê um número e armazena-o na posição 'i' do 'vetor'
        std::cin >> vetor[i];
    }