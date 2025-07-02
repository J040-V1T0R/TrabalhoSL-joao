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