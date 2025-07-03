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

// Função para realizar a adição de duas matrizes
vector<vector<int>> somarMatrizes(const vector<vector<int>>& mat1,
                                  const vector<vector<int>>& mat2,
                                  int n) {
    // Cria uma matriz resultado de tamanho n x n
    vector<vector<int>> resultado(n, vector<int>(n));
    // Percorre as linhas
    for (int i = 0; i < n; ++i) {
        // Percorre as colunas
        for (int j = 0; j < n; ++j) {
            // Soma os elementos correspondentes das duas matrizes
            resultado[i][j] = mat1[i][j] + mat2[i][j];
        }
    }
    return resultado; // Retorna a matriz resultante da soma
}

// Função para realizar a subtração de duas matrizes
vector<vector<int>> subtrairMatrizes(const vector<vector<int>>& mat1,
                                    const vector<vector<int>>& mat2,
                                    int n) {
    // Cria uma matriz resultado de tamanho n x n
    vector<vector<int>> resultado(n, vector<int>(n));
    // Percorre as linhas
    for (int i = 0; i < n; ++i) {
        // Percorre as colunas
        for (int j = 0; j < n; ++j) {
            // Subtrai os elementos correspondentes da segunda matriz da primeira
            resultado[i][j] = mat1[i][j] - mat2[i][j];
        }
    }
    return resultado; // Retorna a matriz resultante da subtração
}

// Função para realizar a multiplicação de duas matrizes
vector<vector<int>> multiplicarMatrizes(const vector<vector<int>>& mat1,
                                        const vector<vector<int>>& mat2,
                                        int n) {
    // Cria uma matriz resultado de tamanho n x n, inicializada com zeros
    vector<vector<int>> resultado(n, vector<int>(n, 0));
    // Percorre as linhas da primeira matriz
    for (int i = 0; i < n; ++i) {
        // Percorre as colunas da segunda matriz
        for (int j = 0; j < n; ++j) {
            // Percorre as colunas da primeira matriz (ou linhas da segunda) para o produto interno
            for (int k = 0; k < n; ++k) {
                resultado[i][j] += mat1[i][k] * mat2[k][j];
            }
        }
    }
    return resultado; // Retorna a matriz resultante da multiplicação
    
}
// Função principal do programa
int main() {
    int n;
    // Lê o tamanho N das matrizes
    cin >> n;

    // Lê as duas matrizes
    vector<vector<int>> matriz1 = lerMatriz(n);
    vector<vector<int>> matriz2 = lerMatriz(n);

    char operacao;
    // Lê o caractere que indica a operação
    cin >> operacao;

    vector<vector<int>> matrizResultante; // Declara a matriz que irá armazenar o resultado

    // Usa um switch para decidir qual operação executar com base no caractere lido
    switch (operacao) {
        case 'a': // Se a operação for 'a' (adição)
        case 'A': // ou 'A'
            matrizResultante = somarMatrizes(matriz1, matriz2, n);
            break;
        case 's': // Se a operação for 's' (subtração)
        case 'S': // ou 'S'
            matrizResultante = subtrairMatrizes(matriz1, matriz2, n);
            break;
        case 'm': // Se a operação for 'm' (multiplicação)
        case 'M': // ou 'M'
            matrizResultante = multiplicarMatrizes(matriz1, matriz2, n);
            break;
        default: // Se o caractere da operação for inválido
            cout << "Operação inválida." << endl;
            return 1; // Retorna 1 para indicar que houve um erro
    }

    // Imprime a matriz resultante da operação
    imprimirMatriz(matrizResultante);

    return 0; // Retorna 0 para indicar que o programa foi executado com sucesso
}