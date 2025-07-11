#include <iostream> // Para entrada e saída (cin, cout)
#include <cmath>    // Para a função sqrt (raiz quadrada)

// Função para verificar se um número é primo
// Retorna 1 se for primo, 0 se não for.
int isPrime(int num) {
    // Números menores ou iguais a 1 não são primos por definição.
    // 0, 1 e números negativos não são primos.
    if (num <= 1) {
        return 0; // Falso (não é primo)
    }

    // 2 é o único número primo par
    if (num == 2) {
        return 1; // Verdadeiro (é primo)
    }

    // Se o número for par e maior que 2, ele não é primo
    if (num % 2 == 0) {
        return 0; // Falso (não é primo)
    }

    // Verifica divisibilidade apenas por números ímpares a partir de 3
    // até a raiz quadrada do número.
    // Se um número tem um divisor maior que sua raiz quadrada,
    // ele também terá um divisor menor que sua raiz quadrada.
    // Portanto, basta verificar até a raiz quadrada.

    for (int i = 3; i <= static_cast<int>(std::sqrt(num)); i += 2) {
        if (num % i == 0) {
            return 0; // Falso (encontrou um divisor, então não é primo)
        }
    }

    // Se não encontrou nenhum divisor, o número é primo
    return 1; // Verdadeiro (é primo)
}

int main() {
    int numero;


    std::cout << "Digite um numero inteiro: "
   
    std::cin >> numero;

    // A função isPrime agora retorna 1 para verdadeiro e 0 para falso
    if (isPrime(numero) == 1) { // Verifica se o retorno é 1 (primo)
        std::cout << numero << " e um numero primo." << std::endl;
    } else { // Se o retorno for 0 (não primo)
        std::cout << numero << " nao e um numero primo." << std::endl;

    }

    return 0;
}
