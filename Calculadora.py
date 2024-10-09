print ("Operaciones:")

print("1. suma")
print("2. resta")
print("3. Multiplicacion")
print("4. Division")
print("5. Modulo")
print("6. Exit")

operacion = int(input("Escoja la operacion que desea hacer \n"))
a = int(input("el primir numero \n "))
b = int(input("el segundo numero "))

suma = a + b
resta = a - b
Multiplicacion = a * b
Division = a / b or  a//b
Modulo = a % b
    
if operacion == 1:
    print ("La respuesta es " +str(suma))

elif operacion == 2:
    print ("La respuesta es " +str(resta))
      
elif operacion == 3:
    print ("La respuesta es " +str(Multiplicacion))
        
elif operacion == 4:
    print ("La respuesta es " +str(Division))
        
elif operacion == 5:
    print ("La respuesta es " +str(Modulo))
        
elif operacion == 6:
        print("Exit")


