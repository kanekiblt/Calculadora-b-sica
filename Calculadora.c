#include <stdio.h>
#include <math.h> 
int main() {
    char operacion;
    float num1;
    float num2;
    printf("Calculadora: \n");
    printf("1. Suma\n");
    printf("2. Resta\n");
    printf("3. Multiplicacion\n");
    printf("4. Division\n");
    printf("5. Potencia\n");
    printf("6. Raiz cuadrada \n");
    printf("Ingrese un operador: \n");
    scanf(" %c", &operacion); 
    if (operacion == '6') {
        printf("Ingrese el número: ");
        scanf("%f", &num1);
    } else {
        printf("Ingrese el primer número: ");
        scanf("%f", &num1);

        printf("Ingrese el segundo número: ");
        scanf("%f", &num2);
    }
    if (operacion == '1') {
        printf("%.2f + %.2f = %.2f\n", num1, num2, num1 + num2);
    } 
    else if (operacion == '2') {
        printf("%.2f - %.2f = %.2f\n", num1, num2, num1 - num2);
    } 
    else if (operacion == '3') {
        printf("%.2f * %.2f = %.2f\n", num1, num2, num1 * num2);
    } 
    else if (operacion == '4') {
        if (num2 != 0) {
            printf("%.2f / %.2f = %.2f\n", num1, num2, num1 / num2);
        } else {
            printf("Syntax Error \n");
        }
    } 
    else if (operacion == '5') {
        printf("%.2f ^ %.2f = %.2f\n", num1, num2, pow(num1, num2));
    } 
    else if (operacion == '6') {
        if (num1 >= 0) {
            printf("Raíz cuadrada de %.2f = %.2f\n", num1, sqrt(num1));
        } else {
            printf("Error:\n");
        }
    } 
    else {
        printf("Operador inválido\n");
    }

    return 0;
}
