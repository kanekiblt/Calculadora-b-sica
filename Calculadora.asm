.MODEL medium
.STACK 100
ORG 100h
.386
.data
    mostrarMenu db 'MENU',13,10
                db '1. Suma',13,10
                db '2. Resta',13,10
                db '3. Division',13,10
                db '4. Multiplicacion',13,10
                db '5. Salir',13,10,13,10
				db 'Seleccione una Opcion -->$',13,10
	new_line db 10,13, " $"
	msg_op_suma db 10,13, 'SUMA','$'
	msg_op_resta db 10,13, 'RESTA','$'
	msg_op_div db 10,13, 'DIVISION','$'
	msg_op_multi db 10,13, 'MULTIPLICACION','$'
    num1 db ?
	num2 db ?
    msg_num db 10,13,'Proporciona un num: ', 	'$'
    msg_suma db 10,13,'Suma: = ',				'$'
	msg_resta db 10,13,'Resta: = ',				'$'
    msg_div db 10,13,'Division: = ',			'$'
    msg_multi db 10,13,'Multiplicacion: = ',	'$'
    decenas db ?
    unidades db ?

imprimir macro dato
    mov ah,09h
    lea dx,dato 
	int 21h
endm

pedirNum macro dato
	imprimir msg_num
	mov ah,01h
	int 21h
	sub al,30h
	mov dato,al
endm

oSuma macro
		imprimir msg_suma
        mov al,num1
        add al,num2
        aam
        mov decenas,ah
        mov unidades,al
        add decenas,30h 
		add unidades,30h
		
        mov ah,02h
        mov dl,decenas
        int 21h
        mov ah,02h
        mov dl,unidades
        int 21h
endm
oResta macro
		imprimir msg_resta
        xor ax,ax
        mov al, num1
        mov bl,num2
        div bl
        aam
        
        mov decenas,ah
        mov unidades,al
        
        add decenas,30h
        add unidades,30h
        mov ah,02h
        mov dl,decenas
        int 21h  
        mov ah,02h
        mov dl,unidades
        int 21h
endm
oMultiplicacion macro
		imprimir msg_multi
        mov al,num1
        mov bl,num2
        mul bl
        aam
        
        mov decenas,ah
        mov unidades,al
        
        add decenas,30h 
        add unidades,30h
     
        mov ah,02h
        mov dl,decenas
        int 21h
        
        mov ah,02h
        mov dl,unidades
        int 21h
endm
oDivision macro
		imprimir msg_div
        xor ax,ax
        mov al, num1
        mov bl,num2
        div bl
        aam
        
        mov decenas,ah
        mov unidades,al
        
        add decenas,30h
        add unidades,30h
        mov ah,02h
        mov dl,decenas
        int 21h
        
        mov ah,02h
        mov dl,unidades
        int 21h
endm
.code

limpiar proc far
	mov ah,00h
	mov al,03h
 	int 10h
	mov cx,02h
ret
endp
Inicio:

    mov ax, @data
	mov ds,ax
Menu:
	imprimir new_line
	imprimir mostrarMenu
	mov ah,01h 
	int 21h
	xor ah,ah
	sub al,30h

	cmp al,1
	je Suma
	cmp al,2
	je Resta
	cmp al,3
	je Division
	cmp al,4
	je Multiplicacion
	cmp al,5
	je Salir
	jmp Menu 
Salir:
	mov ah,04ch
	int 21h
Suma:
	imprimir msg_op_suma
	pedirNum num1
	pedirNum num2
	oSuma
	mov ah,01
	int 21h

	jmp Menu 
Resta:
	imprimir msg_op_resta
	pedirNum num1
	pedirNum num2
	oResta
	mov ah,01
	int 21h
    jmp Menu
Division:
	imprimir msg_op_div
	pedirNum num1
	pedirNum num2
	oDivision
	mov ah,01
	int 21h
    jmp Menu
Multiplicacion:
	imprimir msg_op_multi
	pedirNum num1
	pedirNum num2
    oMultiplicacion
	mov ah,01
	int 21h
    jmp Menu
.exit
end Inicio
