
import java.util.Scanner;

public class Calculadora {

    public static void main(String[] args) {
        Scanner cal = new Scanner(System.in);
        System.out.println("Calculadora");

        System.out.println("1. Suma");
        System.out.println("2. Resta");
        System.out.println("3. Multiplicacion");
        System.out.println("4. Division");

        System.out.println("Ingrese la opción deseada (1-4):");
        int opcion = cal.nextInt();

        System.out.println("Ingrese el primer numero");
        float a = cal.nextFloat();

        System.out.println("Ingrese el segundo nummero");
        float b = cal.nextFloat();
        cal.close();

        switch (opcion) {
            case 1:
                System.out.println("La suma es " + (a + b));
                break;
            case 2:
                System.out.println("La resta es " + (a - b));
                break;
            case 3:
                System.out.println("La multi es " + (a * b));
            case 4:
                System.out.println("La divi es " + (a / b));
                break;
            
        }
    }

}
