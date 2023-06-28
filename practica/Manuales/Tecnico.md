# `<center>`**MANUAL TECNICO** `</center>`

Universidad de San Carlos de Guatemala

Facultad de Ingeniería

Escuela de Ciencias y Sistemas

Arquitectura de Computadoras y Ensambladores 1

Escuela de vacaciones del primer Semestre 2023

## PRACTICA 2

El objetivo de esta practica es realizar un programa de gestión y venta de productos, basado en ASM x86, contando con lectura de archivos bin, y generación de reportes en archivos HTM.

## FUNCIONES PRINCIPALES

- Credenciales:
  Para la validaciones de credenciales se declara una etiqueta que almacena el                     nombre del archivo en el cual se almacenan las credenciales con el nombre :

  filename  db  "PRAII.CON",0
  Para la validación tenemos en cuenta que los valores vienen dentro de comillas, sabiendo esto se usó un método fin_quotes se desplaza dentro del archivo hasta encontrar la primer comilla.

  find_quotes:

  mov bx, countBuff

  mov al, buffer[bx]

  cmp al, quotes

  jne next_char  ;

  inc countBuff

  Para el desplazamiento dentro del archivo se compara si el carácter actual es una comilla, si no lo es se mueve al método next_char:

  next_char:

  inc countBuff

  mov bx, countBuff

  cmp buffer[bx], '$'

  jne find_quotes  ; si no es fin de cadena, busca la siguiente comilla

  Para el método next_char se compara si no se ha llegado al fin del archivo, en dado caso de que no se haya llegado al final vuelve a la función find_quotes.

  save_char:

  mov bx, countBuff

  mov al, buffer[bx]

  cmp al, quotes

  je end_quotes  ; si es comilla, termina la extracción

  mov bx, countOutBuff

  mov outBuff[bx], al

  inc countOutBuff

  inc countBuff

  jmp save_char  ; guarda el caracter y avanza al siguiente

  Cuando encuentra la primer comilla empieza a guardar en la etiqueta outBuff a partir del siguiente carácter hasta volver a encontrar una comilla.

  end_quotes:

  mov bx, countOutBuff

  mov outBuff[bx], '$'  ; agrega fin de cadena

  ret

Cuando encuentra la segunda comilla pasa a end_quotes en el cual se agrega el carácter '$' para evitar errores en la manipulación de la etiqueta Outbuff.
