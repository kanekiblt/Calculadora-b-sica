#include <iostream>
#include <cmath>

int main() {
    char operacion;
    float numb1, numb2, result;

    std::cout << "Calculadora\n";
    std::cout << "1. Suma\n";
    std::cout << "2. Resta\n";
    std::cout << "3. Multiplicacion\n";
    std::cout << "4. Division\n";
    std::cout << "5. Potencia\n";
    std::cout << "6. Raiz cuadrada \n";

    std::cout << "Seleccione una operacion: ";
    std::cin >> operacion;
    std::cout << "Ingrese el primer numero: ";
    std::cin >> numb1;

    if (operacion != '6') {
        std::cout << "Ingrese el segundo numero: ";
        std::cin >> numb2;
    }
    if (operacion == '1') {
        result = numb1 + numb2;
        std::cout << "El resultado es: " << result << std::endl;
    } else if (operacion == '2') {
        result = numb1 - numb2;
        std::cout << "El resultado es: " << result << std::endl;

    } else if (operacion == '3') {
        result = numb1 * numb2;
        std::cout << "El resultado es: " << result << std::endl;

    } else if (operacion == '4') {
        if (numb2 != 0) {
            result = numb1 / numb2;
            std::cout << "El resultado es: " << result << std::endl;

        } else {
            std::cout << "Syntax Error:." << std::endl;
        }
    } else if (operacion == '5') {
        result = pow(numb1, numb2);
        std::cout << "El resultado es: " << result << std::endl;

    } else if (operacion == '6') {
        if (numb1 >= 0) {
            result = sqrt(numb1);
            std::cout << "El resultado es: " << result << std::endl;
        } else {
            std::cout << "Syntax Erro :(  " << std::endl;
        }
    } else {
        std::cout << "Error " << std::endl;
    }
    return 0;
}
