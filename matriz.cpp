#include <iostream> // Para entrada e saída de dados (cin, cout)
#include <vector>   // Para usar vetores, que são ideais para representar matrizes

using namespace std; // Permite usar elementos da biblioteca padrão (como cin, cout, vector) diretamente, sem o prefixo std::

// Função para ler uma matriz de tamanho n x n
vector<vector<int>> lerMatriz(int n) {
    // Cria uma matriz (vetor de vetores) de tamanho n x n
    vector<vector<int>> matriz(n, vector<int>(n));
    // Percorre as linhas
    for (int i = 0; i < n; ++i) {
        // Percorre as colunas
        for (int j = 0; j < n; ++j) {
            // Lê o valor para a posição atual da matriz
            cin >> matriz[i][j];
        }
    }
    return matriz; // Retorna a matriz lida
}

// Função para imprimir uma matriz
void imprimirMatriz(const vector<vector<int>>& matriz) {
    // Percorre cada linha da matriz
    for (const auto& linha : matriz) {
        // Percorre cada valor na linha atual
        for (int valor : linha) {
            // Imprime o valor seguido de um espaço
            cout << valor << " ";
        }
        // Quebra de linha após imprimir todos os valores de uma linha
        cout << endl;
    }
}
