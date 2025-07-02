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
    
      // Verifica se o vetor não está vazio para evitar erros com std::max_element
    if (n > 0) {
        // Encontra o maior elemento no vetor usando std::max_element
        // std::max_element retorna um iterador para o maior elemento,
        // então usamos '*' para obter o valor que o iterador aponta.
        int maior_valor = *std::max_element(vetor.begin(), vetor.end());

        // Imprime o maior valor encontrado, seguido por uma quebra de linha
        std::cout << maior_valor << std::endl;
    } else {
        // Caso 'n' seja 0 (vetor vazio), embora o problema implique n > 0.
        // Você poderia adicionar um tratamento de erro ou mensagem aqui, se necessário.
        // Para este problema, assumimos que 'n' sempre será maior que 0.
    }

    // Retorna 0 para indicar que o programa foi executado com sucesso
    return 0;
}