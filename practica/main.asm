.MODEL SMALL
.RADIX 16
.STACK
;; PILA
.DATA
;; VARIABLES | MEMORIA RAM
;CONTADORES DE LETRAS PARA EL REPORTE ABC
espacio db "  "
fecha db "<tr><td>Fecha </td><td>"
monto db "<tr><td>Monto </td><td>"
CierreHTMLtxt db  "</td></tr>"
salto_linea db 0a
ceroHTM db "0"
letra_A db "A"
letra_B db "B","$"
letra_C db "C","$"
letra_D db "D","$"
letra_E db "E","$"
letra_F db "F","$"
letra_G db "G","$"
letra_H db "H","$"
letra_I db "I","$"
letra_J db "J","$"
letra_K db "K","$"
letra_L db "L","$"
letra_M db "M","$"
letra_N db "N","$"
letra_O db "O","$"
letra_P db "P","$"
letra_Q db "Q","$"
letra_R db "R","$"
letra_S db "S","$"
letra_T db "T","$"
letra_U db "U","$"
letra_V db "V","$"
letra_W db "W","$"
letra_X db "X","$"
letra_Y db "Y","$"
letra_Z db "Z","$"
cont_A dw 0 ; contador 
cont_B dw 0 ; contador 
cont_C dw 0 ; contador 
cont_D dw 0 ; contador 
cont_E dw 0 ; contador 
cont_F dw 0 ; contador 
cont_G dw 0 ; contador 
cont_H dw 0 ; contador 
cont_I dw 0 ; contador
cont_J dw 0 ; contador 
cont_K dw 0 ; contador
cont_L dw 0 ; contador 
cont_M dw 0 ; contador 
cont_N dw 0 ; contador   
cont_O dw 0 ; contador 
cont_P dw 0 ; contador 

cont_Q dw 0 ; contador 
cont_R dw 0 ; contador 
cont_S dw 0 ; contador 
cont_T dw 0 ; contador 
cont_U dw 0 ; contador 
cont_V dw 0 ; contador 
cont_W dw 0 ; contador 
cont_X dw 0 ; contador 
cont_Y dw 0 ; contador 
cont_Z dw 0 ; contador 
;CONTADORES DE LETRAS PARA EL REPORTE ABC

division db "<tr><td>=====</td><td>===========</td></tr>"
tam_encabezado_html    db     0c
encabezado_html        db     "<html><body>"
tam_inicializacion_tabla   db   59
inicializacion_tabla   db     '<table border="1"><tr><td>codigo</td><td>Nombre</td><td>Precio</td><td>Cantidad</td></tr>'
tam_inicializacion_tabla2   db   3A
inicializacion_tabla2   db     '<table border="1"><tr><td>Letra</td><td>Cantidad</td></tr>'
tam_cierre_tabla       db     8
inicializacion_reporte   db     '<table border="1"><tr><td>Reporte</td><td>REP</td></tr>'

cierre_tabla           db     "</table>"
tam_footer_html        db     0e
footer_html            db     "</body></html>"
td_html                db     "<td>"
tdc_html               db     "</td>"
tr_html                db     "<tr>"
trc_html               db     "</tr>"
html_parrafoA        db     "<p>"

html_parrafoC       db     "</p>"
html_slash  db  "/"
html_dospuntos  db  ":"
;;
html_salto  db  "<br>"
;;
ceros          db     2b  dup (0)
numero           db   05 dup (30)
;;
usac       db    "Universidad de San Carlos de Guatemala",0a,"$"
facultad   db    "Facultad de Ingenieria",0a,"$"
curso      db    "Arquitectura de Computadoras y Ensambladores 1",0a,"$"
nombre     db    "Nombre: Christopher Ivan Monterroso Alegria",0a,"$"
carne      db    "Carne: 201902363",0a,0a,"---Credenciales validas, presione enter para continuar---",0a,"$"
menuMainTitulo  db 0a,"------------------",0a,"| Menu principal |",0a,"------------------",0a,"$"
productos  db    "(P)roductos",0a,"$"
ventas     db    "(V)entas",0a,"$"
herramientas db  "(H)erramientas",0a,"$"
titulo_producto db  "       PRODUCTOS",0a,"$"
sub_prod        db  "========================",0a,"$"
titulo_ventas   db  "        VENTAS",0a,"$"
sub_vent        db  "========================",0a,"$"
hacer_venta 	db "(R)ealizar venta",0a,"$"
titulo_herras   db  "     HERRAMIENTAS",0a,"$"
sub_herr        db  "======================",0a,"$"
generarCatalogoCompleto db "(A)Reporte catalogo completo",0a,"$"
generarReporteAlfabetico db "(B)Reporte alfabetico de productos",0a,"$"
generarReporteVentas db "(C)Reporte ventas",0a,"$"
generarRepProdSinExistencia db "(D)Reporte de productos sin existencias",0a,"$"
prompt     		db    "Elija una opcion:",0a,"$"
prompt_code     db    "Codigo: ","$"
prompt_name     db    "Nombre: ","$"
prompt_price    db    "Precio: ","$"
prompt_units    db    "Unidades: ","$"
back 	   db 	"(Z)Regresar",0a,"$"
salir 	   db 	"(S)Salir",0a,"$"
temp       db    00,"$"
nueva_lin  db    0a,"$"
generado  db    0a,"--------Reporte generado--------",0a,"$"
numeroA    db    0ff
numeroB    db    50
numeros    db    20, 12, 24
buffer_entrada   db  20, 00
                 db  20 dup (0)
mostrar_prod     db  "(M)ostrar productos",0a,"$"
ingresar_prod    db  "(I)ngresar producto",0a,"$"
editar_prod      db  "(E)ditar producto",0a,"$"
borrar_prod      db  "(B)orrar producto",0a,"$"
prods_registrados db "Productos registrados:",0a,"$"

puntero dw 0
cod_prod_temp    db    05 dup (0)
puntero_temp     dw    0000
;; "ESTRUCTURA PRODUCTO"
cod_prod    db    05 dup (0)
cod_name   db    21 dup (0)
cod_price   db    05 dup (0)
cod_units   db    05 dup (0)
;; numéricos
num_ventas   dw    0000
num_price   dw    0000
num_units   dw    0000
;; PARA VALIDAR USUARIO Y CONTRASEÑA
buffer    db 256 dup(0), '$' ; buffer de lectura
countBuff dw 0 ; contador de buffer
user db "cmonterroso201902363", '$' ;
coinciden     db    0a,"coincide el usuario",0a,"$"
false db 0a,"------------------CREDENCIALES INVALIDAS------------------",0a,"$"
quotes     db '"' ; comillas
outBuff db 256 dup(0); buffer de salida
countOutBuff dw 0 ; contador de buffer de salida

;; archivo productos

archivo_prods    	db   "PROD.BIN",00
handle_prods        dw   0000
archivo_ventas    db 'VENT.BIN', 00 
handle_ventas dw  0000

filename 			db "PRAII.CON",0
nombre_rep1      db   "CATALG.HTM",00
handle_reps      dw   0000
archivo_txt      db   "REP.HTM",00
handle_txt      dw   0000

archivo_abc      db   "ABC.HTM",00
handle_abc      dw   0000
archivo_falta      db   "FALTA.HTM",00
handle_falta      dw   0000
hora db 3 dup('$')
minuto db 3 dup('$')
dia db 3 dup('$')
num_dia db 00 
mes db 3 dup('$')
anio db 5 dup('$')

TotalVentas   dw    0000
VentaSIoNO   db 0a,0a,'Presione ESPACIO para realizar la venta o culaquier letra para cancelar',0a,'$'
TOTALVENTA db 'Monto total :','$'
GuardarTemporalVenta dw 0
IncItem db 0
codNoValido   db  'Codigo invalido, intentelo de nuevo valido','$'
ValorUnidad    db    02 dup (0) 
UnidadVentas  db 0a,'Unidades: ','$'
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.CODE
Print macro variable
		mov DX, offset variable
		mov AH, 09
		int 21
endm
ObtenerFecha macro
    mov ah, 2a
    int 21h
    ;procedimiento para el dia del mes DL
    xor ah, ah
    mov al, dl
    mov bl, 0a
    div bl
    add al, 30
    add ah, 30
    mov dia[0], al
    mov dia[1], ah
    ;procedimiento para el mes DH
    xor ah, ah
    mov al, dh
    mov bl, 0a
    div bl
    add al, 30
    add ah, 30
    mov mes[0], al
    mov mes[1], ah
    ;procedimineto para el año CX
    ;para obtener el milenio
    xor dx, dx
    mov ax, cx
    mov cx, 1000
    div cx
    add al, 32
    mov anio[0], al
    ;para obtener la centena
    mov ax, dx
    xor dx, dx
    mov cx, 100
    div cx
    add al, 29
    mov anio[1], al
    ;para obtener la decada
    mov ax, dx
    xor dx, dx
    mov cx, 10
    div cx
    add al, 24
    mov anio[2], al
    ;para los dias el residu
    add dl, 2c
    mov anio[3], dl
ENDM
;; Obtener hora y minuto
ObtenerHora macro
    mov ah, 2ch
    int 21h
    ;procedimiento para la hora; CH
    xor ah, ah
    mov al, ch
    mov bl, 0a
    div bl
    add al, 30
    add ah, 30
    mov hora[0], al
    mov hora[1], ah
    ;procedimiento para los minutos CL
    xor ah, ah
    mov al, cl
    mov bl, 0a
    div bl
    add al, 30
    add ah, 30
    mov minuto[0], al
    mov minuto[1], ah
ENDM
ImprimirFechaEn macro nombreArchivo
		mov BX, [nombreArchivo]
		mov AH, 40
		mov CH, 00
		mov CL, [tam_cierre_tabla]
		mov DX, offset cierre_tabla
		int 21
		mov BX, [nombreArchivo]
        mov AH, 40
        mov CH, 00
        mov CL, 03
        mov DX, offset html_parrafoA
        int 21
        ;
        mov BX, [nombreArchivo]
        mov AH, 40
        mov CH, 00
        mov CL, 02
        mov DX, offset dia
        int 21
        ;
        mov BX, [nombreArchivo]
        mov AH, 40
        mov CH, 00
        mov CL, sizeof html_slash
        mov DX, offset html_slash
        int 21
        ;
        mov BX, [nombreArchivo]
        mov AH, 40
        mov CH, 00
        mov CL, 02
        mov DX, offset mes
        int 21
        ;
        mov BX, [nombreArchivo]
        mov AH, 40
        mov CH, 00
        mov CL, sizeof html_slash
        mov DX, offset html_slash
        int 21
        ;
        mov BX, [nombreArchivo]
        mov AH, 40
        mov CH, 00
        mov CL, 04
        mov DX, offset anio
        int 21
        ;
        mov BX, [nombreArchivo]
        mov AH, 40
        mov CH, 00
        mov CL, sizeof html_salto
        mov DX, offset html_salto
        int 21
        ;
        mov BX, [nombreArchivo]
        mov AH, 40
        mov CH, 00
        mov CL, 02
        mov DX, offset hora
        int 21
        ;
        mov BX, [nombreArchivo]
        mov AH, 40
        mov CH, 00
        mov CL, sizeof html_dospuntos
        mov DX, offset html_dospuntos
        int 21
        ;
        mov BX, [nombreArchivo]
        mov AH, 40
        mov CH, 00
        mov CL, 02
        mov DX, offset minuto
        int 21
        ;
        mov BX, [nombreArchivo]
        mov AH, 40
        mov CH, 00
        mov CL, sizeof html_parrafoC
        mov DX, offset html_parrafoC
        int 21
ENDM
clearOutBuff proc
    mov countOutBuff, 0
    begin_clear:
        mov bx, countOutBuff
        mov outBuff[bx], 0
        inc countOutBuff
        cmp countOutBuff, 256
        jne begin_clear ; limpia el buffer de salida

    mov countOutBuff, 0
    ret
clearOutBuff endp

; extrae la cita del buffer
extract_quote proc
    ; busca la primera comilla
     find_quotes:
        mov bx, countBuff
        mov al, buffer[bx]
        cmp al, quotes
        jne next_char ; si no es comilla, avanza al siguiente caracter
        inc countBuff

    save_char:
        mov bx, countBuff
        mov al, buffer[bx]
        cmp al, quotes
        je end_quotes ; si es comilla, termina la extracción
        mov bx, countOutBuff
        mov outBuff[bx], al
        inc countOutBuff
        inc countBuff
        jmp save_char ; guarda el caracter y avanza al siguiente

    next_char:
        inc countBuff
        mov bx, countBuff
        cmp buffer[bx], '$'
        jne find_quotes ; si no es fin de cadena, busca la siguiente comilla

    end_quotes:
        mov bx, countOutBuff
        mov outBuff[bx], '$' ; agrega fin de cadena
        ret
extract_quote endp
; compara el búfer de salida con la cadena de caracteres objetivo
compareOutBuff proc
  
    compare_loop:
        mov bh, outBuff[si]
        mov bl, user[si]
        cmp bh, bl
        jnz mismatch
        cmp bl,"$"
        jz matched
        inc si
        jmp compare_loop

    mismatch:
        mov ah, 9 ; servicio para imprimir cadena
        lea dx, false
        int 21h
        .EXIT
matched:
    jmp inicio

compareOutBuff endp

main :
    
    mov ax,@data ; inicializa el segmento de datos
    mov ds,ax ; inicializa el segmento de datos

    ; abre el archivo
    mov ah, 3Dh ; servicio para abrir archivo
    mov al, 0
    lea dx, filename
    int 21h

    jc error
    mov bx, ax ; guarda el handle del archivo

    ; lee el archivo
    mov ah, 3Fh ; servicio para leer archivo
    lea dx, buffer
    mov cx, 255
    int 21h

    jc error
    or ax, ax ; verifica si se leyó algo
    jz end_read

    mov countBuff, 0
    call clearOutBuff 

    call extract_quote ; extrae la primera cita
    inc countBuff
    call extract_quote
    xor si,si
    call compareOutBuff
    ;   

    ;jne matched ; si los caracteres coinciden, salta a la etiqueta "matched"
end_read:
    mov ah, 3Eh  ; servicio para cerrar archivo
    int 21h
error:
    mov ax, 4C01h ; servicio para terminar programa con error
    int 21h


;; CODIGO
inicio:
		;; ENCABEZADO
		mov DX, offset usac	
		mov AH, 09
		int 21
		mov DX, offset facultad
		mov AH, 09
		int 21
		mov DX, offset curso
		mov AH, 09
		int 21
		mov DX, offset nueva_lin
		mov AH, 09
		int 21
		mov DX, offset nombre
		mov AH, 09
		int 21
		mov DX, offset carne
		mov AH, 09
		int 21
		;;
		;; LEER 1 caracter
		mov AH, 08
		int 21
		cmp AL, 20 ;; ENTER  ascii
		jne inicio
		jmp menu_principal
menu_principal:
		Print menuMainTitulo
		Print nueva_lin
		Print productos
		Print ventas 
		Print herramientas 
		Print salir 
		Print nueva_lin 
		Print prompt
		;; LEER 1 caracter
		mov AH, 08
		int 21
		;; AL = CARACTER LEIDO
		cmp AL, 70 ;; p minúscula ascii
		je menu_productos
		cmp AL, 76 ;; v minúscula ascii
		je menu_ventas 
		cmp AL, 68 ;; h minúscula ascii
		je menu_herramientas 
		cmp AL, 73 ;; Salir
		je fin 
		jmp menu_principal
menu_productos:
		Print nueva_lin
		Print titulo_producto
		Print sub_prod
		Print mostrar_prod
		Print ingresar_prod
		Print borrar_prod
		Print back
		Print nueva_lin
		Print prompt
		mov AH, 08
		int 21
		;;
		;; AL = CARACTER LEIDO
		cmp AL, 62 ;; borrar
		je eliminar_producto_archivo
		cmp AL, 69 ;; insertar
		je ingresar_producto_archivo
		cmp AL, 6d ;; mostrar
		je mostrar_productos_archivo
		cmp AL, 7A ;; REGRESAR
		je menu_principal
		jmp menu_productos
		;;
ingresar_producto_archivo:
		mov DX, offset titulo_producto
		mov AH, 09
		int 21
		mov DX, offset sub_prod
		mov AH, 09
		int 21
		mov DX, offset nueva_lin
		mov AH, 09
		int 21
		;;; PEDIR CODIGO
pedir_de_nuevo_codigo:
		mov DX, offset prompt_code
		mov AH, 09
		int 21
		mov DX, offset buffer_entrada
		mov AH, 0a
		int 21
		;;; verificar que el tamaño del codigo no sea mayor a 5
		mov DI, offset buffer_entrada
		inc DI
		mov AL, [DI]
		cmp AL, 00
		je  pedir_de_nuevo_codigo
		cmp AL, 05
		jb  aceptar_tam_cod  ;; jb --> jump if below
		mov DX, offset nueva_lin
		mov AH, 09
		int 21
		jmp pedir_de_nuevo_codigo
		;;; mover al campo codigo en la estructura producto
aceptar_tam_cod:
		mov SI, offset cod_prod
		mov DI, offset buffer_entrada
		inc DI
		mov CH, 00
		mov CL, [DI]
		inc DI  ;; me posiciono en el contenido del buffer

copiar_codigo1:	
		mov AL, [DI]
		mov [SI], AL
		inc SI
		inc DI
		loop copiar_codigo1 ;; restarle 1 a CX, verificar que CX no sea 0, si no es 0 va a la etiqueta, 
        mov DI, offset cod_prod
        jmp verificacion_codigo
    
verificacion_codigo:

    mov AL , [DI]
    cmp AL , 00
    je codigo_correcto
    cmp AL, 22
    je error_letra
    cmp AL, 23
    je error_letra
    cmp AL, 24
    je error_letra
    cmp AL, 25
    je error_letra
    cmp AL, 26
    je error_letra
    cmp AL, 27
    je error_letra
    cmp AL, 28
    je error_letra
    cmp AL, 2A
    je error_letra
    cmp AL, 2B
    je error_letra
    cmp AL, 2C
    je error_letra
    cmp AL, 2E
    je error_letra  
    cmp AL, 2F
    je error_letra 
    cmp AL, 3A
    je error_letra
    cmp AL, 3B
    je error_letra
    cmp AL, 3C
    je error_letra
    cmp AL, 3D
    je error_letra
    cmp AL, 3E
    je error_letra
    cmp AL, 3F
    je error_letra
    cmp AL, 40  
    je error_letra         
    cmp AL , 'Z'
    ja error_letra
    inc DI
    jmp verificacion_codigo

error_letra:
    mov DI, offset cod_prod
    mov CX, 05
    call memset
    Print nueva_lin
    jmp pedir_de_nuevo_codigo
codigo_correcto:
	Print nueva_lin
    jmp pedir_de_nuevo_nombre
pedir_de_nuevo_nombre:
		Print prompt_name
		mov DX, offset buffer_entrada
		mov AH, 0a
		int 21
		;;; verificar que el tamaño del codigo no sea mayor a 5
		mov DI, offset buffer_entrada
		inc DI
		mov AL, [DI]
		cmp AL, 00
		je  pedir_de_nuevo_nombre
		cmp AL, 20
		jb  aceptar_tam_nom
		mov DX, offset nueva_lin
		mov AH, 09
		int 21
		jmp pedir_de_nuevo_nombre
		;;; mover al campo codigo en la estructura producto
aceptar_tam_nom:
		mov SI, offset cod_name
		mov DI, offset buffer_entrada
		inc DI
		mov CH, 00
		mov CL, [DI]
		inc DI  ;; me posiciono en el contenido del buffer
copiar_nombre:	
		mov AL, [DI]
		mov [SI], AL
		inc SI
		inc DI
		loop copiar_nombre  ;; restarle 1 a CX, verificar que CX no sea 0, si no es 0 va a la etiqueta, 
		;;; la cadena ingresada en la estructura
		mov DI, offset cod_name
		Print nueva_lin

askPrice:
		Print prompt_price
		mov DX, offset buffer_entrada
		mov AH, 0a
		int 21
		;;; verificar que el tamaño del codigo no sea mayor a 5
		mov DI, offset buffer_entrada
		inc DI
		mov AL, [DI]
		cmp AL, 00
		je  askPrice
		cmp AL, 06  ;; tamaño máximo del campo
		jb  PricetoBuffer ;; jb --> jump if below
		Print nueva_lin
		jmp askPrice
		;;; mover al campo codigo en la estructura producto
PricetoBuffer:
		mov SI, offset cod_price
    	mov DI, offset buffer_entrada
    	inc DI
    	mov CH, 00
    	mov CL , [DI]
    	inc DI ;; posicionamiento del buffer

copyPrice:
		mov AL, [DI]
		mov [SI], Al
		inc SI
		inc DI
		loop copyPrice ;;
		mov DI, offset cod_price
		jmp checkPrice
checkPrice:
		;; que solo contenga numero
		mov AL , [DI]
		cmp AL , 00
		je rightPrice
		cmp AL, 22
		je wrongPrice
		cmp AL, 23
		je wrongPrice
		cmp AL, 24
		je wrongPrice
		cmp AL, 25
		je wrongPrice
		cmp AL, 26
		je wrongPrice
		cmp AL, 27
		je wrongPrice
		cmp AL, 28
		je wrongPrice
		cmp AL, 2A
		je wrongPrice
		cmp AL, 2B
		je wrongPrice
		cmp AL, 2C
		je wrongPrice
		cmp AL, 2E
		je wrongPrice
		cmp AL, 2F
		je wrongPrice
		cmp AL, 3A
		je wrongPrice
		cmp AL, 3B
		je wrongPrice
		cmp AL, 3C
		je wrongPrice
		cmp AL, 3D
		je wrongPrice
		cmp AL, 3E
		je wrongPrice
		cmp AL, 3F
		je wrongPrice
		cmp AL, 40
		je wrongPrice
		inc DI
		jmp checkPrice

wrongPrice:
		mov DI, offset cod_price
		mov CX, 0005
		call memset
		Print nueva_lin
		jmp askPrice
rightPrice:
		Print nueva_lin
		mov DI, offset cod_price
		call cadenaAnum
		mov [num_price],AX
		mov DI, offset cod_price
		mov CX, 0005
		call memset
askUnits:
		Print prompt_units
		mov DX, OFFSET buffer_entrada
		mov AH, 0ah
		int 21h
		mov DI, offset buffer_entrada
		inc DI
		mov AL, [DI]
		cmp AL, 00
		je askUnits
		cmp AL, 06
		print nueva_lin
		jb aceptar_tam_unidades
		jmp askUnits

aceptar_tam_unidades:
		mov SI, offset cod_units
		mov DI, offset buffer_entrada
		inc DI
		mov CH, 00
		mov CL, [DI]
		inc DI  ;; me posiciono en el contenido del buffer
copyUnits:
		mov AL, [DI]
		mov [SI], Al
		inc SI
		inc DI
		loop copyUnits ;;
		mov DI, offset cod_units
		jmp checkUnits
		
checkUnits:
    ;; que solo contenga numero
    mov AL , [DI]
    cmp AL , 00
    je rightUnits
    cmp AL, 22
    je wrongUnits
    cmp AL, 23
    je wrongUnits
    cmp AL, 24
    je wrongUnits
    cmp AL, 25
    je wrongUnits
    cmp AL, 26
    je wrongUnits
    cmp AL, 27
    je wrongUnits
    cmp AL, 28
    je wrongUnits
    cmp AL, 2A
    je wrongUnits
    cmp AL, 2B
    je wrongUnits
    cmp AL, 2C
    je wrongUnits
    cmp AL, 2E
    je wrongUnits
    cmp AL, 2F
    je wrongUnits
    cmp AL, 3A
    je wrongUnits
    cmp AL, 3B
    je wrongUnits
    cmp AL, 3C
    je wrongUnits
    cmp AL, 3D
    je wrongUnits
    cmp AL, 3E
    je wrongUnits
    cmp AL, 3F
    je wrongUnits
    cmp AL, 40
    je wrongUnits
    inc DI
    jmp checkUnits

wrongUnits:
    mov DI, offset cod_units
    mov CX, 0003
    call memset
   	mov DX, offset nueva_lin
	mov AH, 09
	int 21
    jmp askUnits
rightUnits:

		Print nueva_lin
		mov DI, offset cod_units
		call cadenaAnum
		mov [num_units],AX
		mov DI, offset cod_units
		mov CX, 0005
		call memset
		;; finalizó pedir datos de producto
		;;
		;;
		;;
		;;
		;; GUARDAR EN ARCHIVO
		;; probar abrirlo normal
		mov AL, 02
		mov AH, 3d
		mov DX, offset archivo_prods
		int 21
		;; si no lo cremos
		jc  crear_archivo_prod
		;; si abre escribimos
		jmp guardar_handle_prod
crear_archivo_prod:
		mov CX, 0000
		mov DX, offset archivo_prods
		mov AH, 3c
		int 21
		;; archivo abierto
guardar_handle_prod:
  
		mov [handle_prods], AX
		mov BX, [handle_prods]
		mov CX, 00
		mov DX, 00
		mov AL, 02
		mov AH, 42
		int 21
		mov CX, 05
		mov DX, offset cod_prod
		mov AH, 40
		int 21
		mov CX, 21
		mov DX, offset cod_name
		mov AH, 40
		int 21
		mov CX, 0004
		mov DX, offset num_price
		mov AH, 40
		int 21
		mov CX, 0004
		mov DX, offset num_units
		mov AH, 40
		int 21

		mov AH, 3Eh
		int 21
		;; limpiar buffer de nuestro datos
		mov DI, offset cod_prod
		mov CX, 05
		call memset
		mov DI, offset cod_name
		mov CX, 21
		call memset
		mov DI, offset cod_price
		mov CX, 0005
		call memset
		mov DI, offset cod_units
		mov CX, 0005
		call memset


    jmp menu_productos
mostrar_productos_archivo:
		mov DX, offset nueva_lin
		mov AH, 09
		int 21
		;;
		mov AL, 02
		mov AH, 3d
		mov DX, offset archivo_prods
		int 21
		;;
		mov [handle_prods], AX
		;; leemos
ciclo_mostrar:
		;; puntero cierta posición
		mov BX, [handle_prods]
		mov CX, 05    ;; leer 
		mov DX, offset cod_prod
		mov AH, 3f
		int 21
		;; puntero avanzó
		mov BX, [handle_prods]
		mov CX, 21    ;; leer nombre
		mov DX, offset cod_name
		mov AH, 3f
		int 21
		;; puntero avanzó
		mov BX, [handle_prods]
		mov CX, 0004 ; LEER PRECIO
		mov DX, offset num_price
		mov AH, 3f
		int 21
		;; puntero avanzó
		mov BX, [handle_prods]
		mov CX, 0004
		mov DX, offset num_units
		mov AH, 3f
		int 21
		;; ¿cuántos bytes leímos?
		;; si se leyeron 0 bytes entonces se terminó el archivo...
		cmp AX, 0000
		je fin_mostrar
		;; ver si es producto válido
		mov AL, 00
		cmp [cod_prod], AL
		je ciclo_mostrar
		;; producto en estructura
		call imprimir_estructura
		jmp ciclo_mostrar
		;;
imprimir_estructura:
    Print nueva_lin
    
    mov DI, offset cod_prod
ciclo_poner_dolar_1 :
    mov AL, [DI]
    cmp AL, 00
    je poner_dolar_1
    inc DI
    jmp ciclo_poner_dolar_1
poner_dolar_1:
    mov AL, 24
    mov[DI], AL
    Print prompt_code
    Print cod_prod
    Print nueva_lin
    mov DI, offset cod_name
ciclo_poner_dolar_2 :
    mov AL, [DI]
    cmp AL, 00
    je poner_dolar_2
    inc DI
    jmp ciclo_poner_dolar_2
poner_dolar_2:
    mov AL, 24
    mov[DI], AL
    Print prompt_name
    Print cod_name
    Print nueva_lin
    Print prompt_price
    mov AX, [num_price]
    call numAcadena
    mov BX, 0001
    mov CX, 0005
    mov DX, offset numero
    mov AH, 40
    int 21
    Print nueva_lin
    Print prompt_units
    mov AX, [num_units]
    call numAcadena
    mov BX, 0001
    mov CX, 0005
    mov DX, offset numero
    mov AH, 40
    int 21
    Print nueva_lin
    ret
fin_mostrar:
		jmp menu_productos
eliminar_producto_archivo:
		mov DX, 0000
		mov [puntero_temp], DX
pedir_de_nuevo_codigo2:
		mov DX, offset prompt_code
		mov AH, 09
		int 21
		mov DX, offset buffer_entrada
		mov AH, 0a
		int 21
		;;
		mov DI, offset buffer_entrada
		inc DI
		mov AL, [DI]
		cmp AL, 00
		je  pedir_de_nuevo_codigo2
		cmp AL, 05
		jb  aceptar_tam_cod2  ;; jb --> jump if below
		mov DX, offset nueva_lin
		mov AH, 09
		int 21
		jmp pedir_de_nuevo_codigo2
		;;; mover al campo codigo en la estructura producto
aceptar_tam_cod2:
		mov SI, offset cod_prod_temp
		mov DI, offset buffer_entrada
		inc DI
		mov CH, 00
		mov CL, [DI]
		inc DI  ;; me posiciono en el contenido del buffer
copiar_codigo2:	
		mov AL, [DI]
		mov [SI], AL
		inc SI
		inc DI
		loop copiar_codigo2  ;; restarle 1 a CX, verificar que CX no sea 0, si no es 0 va a la etiqueta, 
		;;; la cadena ingresada en la estructura
		;;;
		mov DX, offset nueva_lin
		mov AH, 09
		int 21
		;;
		mov AL, 02              ;;;<<<<<  lectura/escritura
		mov DX, offset archivo_prods
		mov AH, 3d
		int 21
		mov [handle_prods], AX
		;;; TODO: revisar si existe
ciclo_encontrar:
		int 03
		mov BX, [handle_prods]
		mov CX, 26
		mov DX, offset cod_prod
		moV AH, 3f
		int 21
		mov BX, [handle_prods]
		mov CX, 4
		mov DX, offset num_price
		moV AH, 3f
		int 21
		cmp AX, 0000   ;; se acaba cuando el archivo se termina
		je finalizar_borrar
		mov DX, [puntero_temp]
		add DX, 2a
		mov [puntero_temp], DX
		;;; verificar si es producto válido
		mov AL, 00
		cmp [cod_prod], AL
		je ciclo_encontrar
		;;; verificar el código
		mov SI, offset cod_prod_temp
		mov DI, offset cod_prod
		mov CX, 0005
		call cadenas_iguales
		;;;; <<
		cmp DL, 0ff
		je borrar_encontrado
		jmp ciclo_encontrar

borrar_encontrado:
		mov DX, [puntero_temp]
		sub DX, 2a
		mov CX, 0000
		mov BX, [handle_prods]
		mov AL, 00
		mov AH, 42
		int 21
		;;; puntero posicionado
		mov CX, 2a
		mov DX, offset ceros
		mov AH, 40
		int 21
finalizar_borrar:
		mov BX, [handle_prods]
		mov AH, 3e
		int 21
		jmp menu_productos
menu_ventas:
	Print nueva_lin
	Print titulo_ventas
	Print sub_vent
	Print hacer_venta
	Print back
	Print nueva_lin
	Print prompt		
	mov AH, 08
	int 21
	cmp AL, 72
	je realizarVenta
	cmp AL, 7A 
	je menu_principal
	jmp menu_ventas
realizarVenta:
	mov TotalVentas,0 

	mov IncItem , 0
	MenuVENTAS:
		cmp IncItem , 0A
		je MENU_PRINCIPAL
		ObtenerFecha
		ObtenerHora
		mov DX, 0000
		mov [puntero_temp], DX
		Print nueva_lin
		Print TOTALVENTA
		mov AX, [TotalVentas]
		call numAcadena
		;; [numero] tengo la cadena convertida
		mov BX, 0001
		mov CX, 0005
		mov DX, offset numero
		mov AH, 40
		int 21
	VentasCODE:      
		Print nueva_lin
		Print prompt_code
		mov DX, offset buffer_entrada
		mov AH, 0a
		int 21
		mov DI, offset buffer_entrada
		inc DI
		mov AL, [DI]
		cmp AL, 00
		je  VentasCODE
		cmp AL, 05
		jb  PASO1  
		jmp VentasCODE
	PASO1: 
		mov SI, offset cod_prod_temp
		mov DI, offset buffer_entrada
		inc DI
		mov CH, 00
		mov CL, [DI]
		inc DI  
		jmp PASO2
    PASO2:
		mov AL, [DI]
		mov [SI], AL
		inc SI
		inc DI
		loop PASO2
		jmp ES_FIN
	ES_FIN:
		mov DI , offset cod_prod_temp
		jmp PASO3
	PASO3:
		mov AL, [DI]
		cmp AL, 'e'
		je Salir_1
		jmp PASO4
	Salir_1:
		inc DI
		mov AL, [DI]
		cmp AL , 'e'
		je Salir_2
	Salir_2:
		inc DI
		mov AL, [DI]
		cmp AL , 'e'
		je Salir_3
	Salir_3:
		mov DI, offset cod_prod_temp
		mov CX, 05
		call memset
		jmp MENU_PRINCIPAL
	PASO4:
		mov ah, 3D   
		mov al, 02       
		mov dx, offset archivo_prods
		int 21 
		mov [handle_prods], AX
		jmp BUSCARPRODUCTO
	BUSCARPRODUCTO:
		; lectura
		mov BX, [handle_prods]
		mov CX, 05
		mov DX, offset cod_prod
		moV AH, 3f
		int 21
		mov BX, [handle_prods]
		mov CX, 21
		mov DX, offset cod_name
		moV AH, 3f
		int 21
		mov BX, [handle_prods]
		mov CX, 0005
		mov DX, offset num_price
		moV AH, 3f
		int 21
		mov BX, [handle_prods]
		mov CX, 0005
		mov DX, offset num_units
		moV AH, 3f
		int 21
		; verifica si llego al fin
		cmp AX, 0000   
		je FINDOCUMENTO
		; obtengo los bytes recorridos
		mov DX, [puntero_temp]
		add DX, 2a
		mov [puntero_temp], DX
		;;; verificar si es producto válido
		mov AL, 00
		cmp [cod_prod], AL
		je BUSCARPRODUCTO
		;;; verificar el código
		mov SI, offset cod_prod_temp
		mov DI, offset cod_prod
		mov CX, 0005
		call cadenas_iguales
		cmp DL, 0ff
		je PRODUCTOENCONTRADO
		jmp BUSCARPRODUCTO 

	PRODUCTOENCONTRADO:
			jmp PEDIRUNIDADESVENDER
	FINDOCUMENTO:
		mov BX, [handle_prods]
		mov AH, 3e
		int 21
		Print nueva_lin
		Print codNoValido 
		Print nueva_lin
		mov DI, offset cod_prod_temp
		mov Cx , 05
		call memset
		jmp menu_ventas
	PEDIRUNIDADESVENDER:
		Print UnidadVentas
		mov DX, offset buffer_entrada
		mov AH, 0a
		int 21
		mov DI, offset buffer_entrada
		inc DI
		mov AL, [DI]
		cmp AL, 00
		je  PEDIRUNIDADESVENDER
		cmp AL, 03
		jb  PUNIDADES  
		jmp PEDIRUNIDADESVENDER
		PUNIDADES:
			mov SI, offset ValorUnidad
			mov DI, offset buffer_entrada
			inc DI
			mov CH, 00
			mov CL, [DI]
			inc DI 
			jmp CopiarUnidad
		CopiarUnidad:
			mov AL , [DI]
			mov [SI], AL
			inc SI
			inc DI 
			loop CopiarUnidad
			jmp PreguntarSicontinuar
		PreguntarSicontinuar:
				Print VentaSIoNO
				mov AH, 08
				int 21 
				cmp al , 79
				je MenuVENTAS
				jmp SEGUIRVENTA2

		SEGUIRVENTA2:
			mov DI, offset ValorUnidad
			call cadenaAnum
			mov [num_ventas], AX
			mov DI, offset ValorUnidad
			mov CX, 0002
			call memset
			jmp ActualizarPRODUCTO
	ActualizarPRODUCTO:
                mov DX, [puntero_temp]
		        sub DX, 2a
                mov CX, 0000
                mov BX, [handle_prods]
                mov AL, 00
                mov AH, 42
                int 21

                mov CX, 05
                mov DX, offset cod_prod
                mov AH, 40
                int 21

                mov CX, 21
                mov DX, offset cod_name
                mov AH, 40
                int 21
                
                mov CX, 0002
                mov DX, offset num_price
                mov AH, 40
                int 21
                ; resta unidades
                mov ax , num_ventas
                sub num_units , ax
                mov CX, 0002
                mov DX, offset num_units
                mov AH, 40
                int 21
                ; multiplica
                ; copio la variable para guardarla
                mov ax , num_ventas
                mov GuardarTemporalVenta , ax

                mov ax , GuardarTemporalVenta
                mov bx , num_price
                mul bx
                mov GuardarTemporalVenta , ax

                mov ax , GuardarTemporalVenta
                add TotalVentas , ax

                mov BX, [handle_prods]
                mov AH, 3e
                int 21

                jmp CREARVENTA
	CREARVENTA:
        ; abrir archivo VENT.BIN
        mov ah, 3D   
        mov al, 02       
        mov dx, offset archivo_ventas
        int 21  
        jc existeVenta 
        jmp sigueReadV
        ; si no existe lo crea
        existeVenta:
            mov ah, 3C
            mov cx , 0000      
            mov dx, offset archivo_ventas 
            int 21                   
        sigueReadV:
            mov [handle_ventas], AX
            mov BX, [handle_ventas]
            ;; vamos al final del archivo
            mov CX, 00 
            mov DX, 00
            mov AL, 02
            mov AH, 42
            int 21
			mov CX, 05
            mov DX, offset cod_prod
            mov AH, 40
            int 21
            mov CX, 21
            mov DX, offset cod_name
            mov AH, 40
            int 21

            mov CX, 02
            mov DX, offset dia
            mov AH, 40
            int 21

            mov CX, 02
            mov DX, offset mes
            mov AH, 40
            int 21

            mov CX, 04
            mov DX, offset anio
            mov AH, 40
            int 21

            mov CX, 02
            mov DX, offset hora
            mov AH, 40
            int 21

            mov CX, 02
            mov DX, offset minuto
            mov AH, 40
            int 21

            mov CX, 0005
            mov DX, offset TotalVentas
            mov AH, 40   
            int 21    
            ;; cerrar archivo
            mov AH, 3e
            int 21
            Inc IncItem
            jmp MenuVENTAS
menu_herramientas:
		Print nueva_lin
		Print titulo_herras
		Print sub_herr
		Print generarCatalogoCompleto
		Print generarReporteAlfabetico
		Print generarReporteVentas
		Print generarRepProdSinExistencia
		Print back
		Print nueva_lin
		Print prompt
		mov AH, 08 ; ESCANER 
		int 21
		cmp AL, 61
		je generar_catalogo
		cmp AL, 62
		je Reporte_ABC
		cmp AL, 63
		je Reporte_txt
		cmp AL, 64
		je ReporteFalta
		cmp AL, 7A ;; REGRESAR
		je menu_principal
		jmp menu_herramientas
generar_catalogo:
		
		mov AH, 3c
		mov CX, 0000
		mov DX, offset nombre_rep1
		int 21
		mov [handle_reps], AX
		mov BX, AX
		mov AH, 40
		mov CH, 00
		mov CL, [tam_encabezado_html]
		mov DX, offset encabezado_html
		int 21
		mov BX, [handle_reps]
		mov AH, 40
		mov CH, 00
		mov CL, [tam_inicializacion_tabla]
		mov DX, offset inicializacion_tabla
		int 21
		;;
		mov AL, 02
		mov AH, 3d
		mov DX, offset archivo_prods
		int 21
		;;
		mov [handle_prods], AX

		
		;; leemos
ciclo_mostrar_rep1:
		;; puntero cierta posición
		mov BX, [handle_prods]
		mov CX, 05    ;; leer 
		mov DX, offset cod_prod
		mov AH, 3f
		int 21
		;; puntero avanzó
		mov BX, [handle_prods]
		mov CX, 21    ;; leer nombre
		mov DX, offset cod_name
		mov AH, 3f
		int 21
		;; puntero avanzó
		mov BX, [handle_prods]
		mov CX, 0004 ; LEER PRECIO
		mov DX, offset num_price
		mov AH, 3f
		int 21
		;; puntero avanzó
		mov BX, [handle_prods]
		mov CX, 0004
		mov DX, offset num_units
		mov AH, 3f
		int 21
		;; ¿cuántos bytes leímos?
		;; si se leyeron 0 bytes entonces se terminó el archivo...
		cmp AX, 00
		je fin_mostrar_rep1
		;; ver si es producto válido
		mov AL, 00
		cmp [cod_prod], AL
		je ciclo_mostrar_rep1
		;; producto en estructura
		call imprimir_estructura_html
		jmp ciclo_mostrar_rep1
		;;
		;;
fin_mostrar_rep1:
		ObtenerFecha
		ObtenerHora
		ImprimirFechaEn handle_reps
		;;
		mov BX, [handle_reps]
		mov AH, 40
		mov CH, 00
		mov CL, [tam_footer_html]
		mov DX, offset footer_html
		int 21
		;;
		mov AH, 3e
		int 21
		mov DX, offset generado
		mov AH, 09
		int 21
		
		jmp menu_herramientas


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; imprimir_estructura - ...
;; ENTRADAS:
;; SALIDAS:
;;     o Impresión de estructura
imprimir_estructura_html:
		mov BX, [handle_reps]
		mov AH, 40
		mov CH, 00
		mov CL, 04
		mov DX, offset tr_html
		int 21
		;;
		mov BX, [handle_reps]
		mov AH, 40
		mov CH, 00
		mov CL, 04
		mov DX, offset td_html
		int 21
		;;
		mov DX, offset cod_prod
		mov SI, 0000
ciclo_escribir_codigo:
		mov DI, DX
		mov AL, [DI]
		cmp AL, 00
		je escribir_desc
		cmp SI, 05
		je escribir_desc
		mov CX, 0001
		mov BX, [handle_reps]
		mov AH, 40
		int 21
		inc DX
		inc SI
		jmp ciclo_escribir_codigo
escribir_desc:
		;;
		mov BX, [handle_reps]
		mov AH, 40
		mov CH, 00
		mov CL, 05
		mov DX, offset tdc_html
		int 21
		;;
		mov BX, [handle_reps]
		mov AH, 40
		mov CH, 00
		mov CL, 04
		mov DX, offset td_html
		int 21
		;;
		mov DX, offset cod_name
		mov SI, 0000
ciclo_escribir_desc:
		mov DI, DX
		mov AL, [DI]
		cmp AL, 00
		je escribirPrecio
		cmp SI, 21
		je escribirPrecio
		mov CX, 0001
		mov BX, [handle_reps]
		mov AH, 40
		int 21
		inc DX
		inc SI
		jmp ciclo_escribir_desc
		;;
escribirPrecio:
		mov BX, [handle_reps]
		mov AH, 40
		mov CH, 00
		mov CL, 05
		mov DX, offset tdc_html
		int 21
		;;
		mov BX, [handle_reps]
		mov AH, 40
		mov CH, 00
		mov CL, 04
		mov DX, offset td_html
		int 21
		mov AX, [num_price]
		call numAcadena
		mov BX, 0000
		mov CX, 0003
		mov DX, offset numero
		mov SI, 0000
ciclo_escribirPrecio:
		mov DI, DX
		mov AL, [DI]
		cmp AL, 00
		je escribirUnidades
		cmp SI, 0005
		je escribirUnidades
		mov CX, 0001
		mov BX, [handle_reps]
		mov AH, 40
		int 21
		inc DX
		inc SI
		jmp ciclo_escribirPrecio
escribirUnidades:
		mov BX, [handle_reps]
		mov AH, 40
		mov CH, 00
		mov CL, 05
		mov DX, offset tdc_html
		int 21
		;;
		mov BX, [handle_reps]
		mov AH, 40
		mov CH, 00
		mov CL, 04
		mov DX, offset td_html
		int 21
		mov AX, [num_units]
		call numAcadena
		mov BX, 0000
		mov CX, 0003
		mov DX, offset numero
		mov SI, 0000
ciclo_escribirUnidades:
		mov DI, DX
		mov AL, [DI]
		cmp AL, 00
		je cerrar_tags
		cmp SI, 0005
		je cerrar_tags
		mov CX, 0001
		mov BX, [handle_reps]
		mov AH, 40
		int 21
		inc DX
		inc SI
		jmp ciclo_escribirUnidades
cerrar_tags:
		mov BX, [handle_reps]
		mov AH, 40
		mov CH, 00
		mov CL, 05
		mov DX, offset tdc_html
		int 21
		;;
		mov BX, [handle_reps]
		mov AH, 40
		mov CH, 00
		mov CL, 05
		mov DX, offset trc_html
		int 21
		;;
		ret

;;; ENTRADA:
;;    BX -> handle
;REPORTE VENTAS
;REPORTE DEL ABECEDARIO.------------------------------------------------------------------------------
Reporte_txt:
		
		mov AH, 3c
		mov CX, 0000
		mov DX, offset archivo_txt
		int 21
		;
		
		mov [handle_txt], AX
		mov BX, AX
		mov AH, 40
		mov CH, 00
		mov CL, [tam_encabezado_html]
		mov DX, offset encabezado_html
		int 21
		mov BX, [handle_txt]
		mov AH, 40
		mov CH, 00
		mov CL, sizeof inicializacion_reporte
		mov DX, offset inicializacion_reporte
		int 21
		mov AL, 02
		mov AH, 3d
		mov DX, offset archivo_ventas
		int 21
		;;
		mov [handle_ventas], AX
		;;
		

ciclo_mostrar_txt:
		mov BX, [handle_ventas]
		mov CX, 05    ;; leer 
		mov DX, offset cod_prod
		mov AH, 3f
		int 21
		mov BX, [handle_ventas]
		mov CX, 21
		mov DX, offset cod_name
		mov AH, 3f
		int 21
		; leer dia
		mov BX, [handle_ventas]
		mov CX, 02   
		mov DX, offset dia
		mov AH, 3f
		int 21
		; leer mes
		mov BX, [handle_ventas]
		mov CX, 02
		mov DX, offset mes
		mov AH, 3f
		int 21
		; leer anio
		mov BX, [handle_ventas]
		mov CX, 04
		mov DX, offset anio
		mov AH, 3f
		int 21
		; leer hora
		mov BX, [handle_ventas]
		mov CX, 02
		mov DX, offset hora
		mov AH, 3f
		int 21

		; leer minuto
		mov BX, [handle_ventas]
		mov CX, 02
		mov DX, offset minuto
		mov AH, 3f
		int 21
		Print minuto
		; leer numVentas
		mov BX, [handle_ventas]
		mov CX, 0005
		mov DX, offset TotalVentas
		mov AH, 3f
		int 21
		;; ¿cuántos bytes leímos?
		;; si se leyeron 0 bytes entonces se terminó el archivo...
		cmp AX, 00
		je fin_reporte_txt
		;; ver si es producto válido
		mov AL, 00
		cmp [cod_prod], AL
		je ciclo_mostrar_txt
		;; producto en estructura
		call imprimir_estructura_html_txt
		jmp ciclo_mostrar_txt
	
imprimir_estructura_html_txt:
		mov BX, [handle_txt]
        mov AH, 40
        mov CH, 00
        mov CL, sizeof fecha
        mov DX, offset fecha
        int 21
		mov DX, offset dia
		mov SI, 0000
ciclo_escribir_dia:
		mov DI, DX
		mov AL, [DI]
		cmp AL, 00
		je escribir_mes
		cmp SI, 02
		je escribir_mes
		mov CX, 0001
		mov BX, [handle_txt]
		mov AH, 40
		int 21
		inc DX
		inc SI
		jmp ciclo_escribir_dia
escribir_mes:
	mov BX, [handle_txt]
	mov AH, 40
	mov CH, 00
	mov CL, sizeof html_slash
	mov DX, offset html_slash
	int 21
	mov DX, offset mes
	mov SI, 0000
ciclo_escribir_mes:
	mov DI, DX
	mov AL, [DI]
	cmp AL, 00
	je escribir_anio
	cmp SI, 02
	je escribir_anio
	mov CX, 0001
	mov BX, [handle_txt]
	mov AH, 40
	int 21
	inc DX
	inc SI
	jmp ciclo_escribir_mes
escribir_anio:
	mov BX, [handle_txt]
	mov AH, 40
	mov CH, 00
	mov CL, sizeof html_slash
	mov DX, offset html_slash
	int 21
	mov DX, offset anio
	mov SI, 0000
ciclo_escribir_anio:
	mov DI, DX
	mov AL, [DI]
	cmp AL, 00
	je escribir_hora
	cmp SI, 04
	je escribir_hora
	mov CX, 0001
	mov BX, [handle_txt]
	mov AH, 40
	int 21
	inc DX
	inc SI
	jmp ciclo_escribir_anio
escribir_hora:
	mov BX, [handle_txt]
	mov AH, 40
	mov CH, 00
	mov CL, sizeof espacio
	mov DX, offset espacio
	int 21
	mov DX, offset hora
	mov SI, 0000
ciclo_escribir_hora:
	mov DI, DX
	mov AL, [DI]
	cmp AL, 00
	je escribir_minutos
	cmp SI, 02
	je escribir_minutos
	mov CX, 0001
	mov BX, [handle_txt]
	mov AH, 40
	int 21
	inc DX
	inc SI
	jmp ciclo_escribir_hora
escribir_minutos:
	mov BX, [handle_txt]
	mov AH, 40
	mov CH, 00
	mov CL, sizeof html_dospuntos
	mov DX, offset html_dospuntos
	int 21
	mov DX, offset minuto
	mov SI, 0000
ciclo_escribir_minutos:
	mov DI, DX
	mov AL, [DI]
	cmp AL, 00
	je escribir_monto
	cmp SI, 02
	je escribir_monto
	mov CX, 0001
	mov BX, [handle_txt]
	mov AH, 40
	int 21
	inc DX
	inc SI
	jmp ciclo_escribir_minutos
escribir_monto: 
	mov BX, [handle_txt]
	mov AH, 40
	mov CH, 00
	mov CL, sizeof CierreHTMLtxt
	mov DX, offset CierreHTMLtxt
	int 21
	mov BX, [handle_txt]
	mov AH, 40
	mov CH, 00
	mov CL, sizeof monto
	mov DX, offset monto
	int 21
	mov AX, [TotalVentas]
	call numAcadena
	mov BX, 0000
	mov CX, 0003
	mov DX, offset numero
	mov SI, 0000
ciclo_escribirMonto:
		mov DI, DX
		mov AL, [DI]
		cmp AL, 00
		je ponerDivision
		cmp SI, 0005
		je ponerDivision
		mov CX, 0001
		mov BX, [handle_txt]
		mov AH, 40
		int 21
		inc DX
		inc SI
		jmp ciclo_escribirMonto

ponerDivision:
	mov BX, [handle_txt]
	mov AH, 40
	mov CH, 00
	mov CL, sizeof division
	mov DX, offset division
	int 21
	;;
	ret
fin_reporte_txt:
		
		ObtenerFecha
		ObtenerHora
		ImprimirFechaEn handle_txt
		;;
		mov BX, [handle_txt]
		mov AH, 40
		mov CH, 00
		mov CL, [tam_footer_html]
		mov DX, offset footer_html
		int 21
		;;
		mov AH, 3e
		int 21
		mov DX, offset generado
		mov AH, 09
		int 21
		
		jmp menu_herramientas
		
		
aperturaColumna:
		mov BX, [handle_abc]
		mov AH, 40
		mov CH, 00
		mov CL, 04
		mov DX, offset td_html
		int 21
		ret
		;;
aperturaFila:
		mov BX, [handle_abc]
		mov AH, 40
		mov CH, 00
		mov CL, 04
		mov DX, offset tr_html
		int 21
		ret

cierreColumna:
		mov BX, [handle_abc]
		mov AH, 40
		mov CH, 00
		mov CL, 05
		mov DX, offset tdc_html
		int 21
		ret
		;;
cierreFila:
		mov BX, [handle_abc]
		mov AH, 40
		mov CH, 00
		mov CL, 05
		mov DX, offset trc_html
		int 21
		ret

Reporte_ABC:
		mov DX, offset generado
		mov AH, 09
		int 21
		mov AH, 3c
		mov CX, 0000
		mov DX, offset archivo_abc
		int 21
		mov [handle_abc], AX
		mov BX, AX
		mov AH, 40
		mov CH, 00
		mov CL, [tam_encabezado_html]
		mov DX, offset encabezado_html
		int 21
		mov BX, [handle_abc]
		mov AH, 40
		mov CH, 00
		mov CL, [tam_inicializacion_tabla2]
		mov DX, offset inicializacion_tabla2
		int 21
		;;
		mov AL, 02
		mov AH, 3d
		mov DX, offset archivo_prods
		int 21
		;;
		mov [handle_prods], AX
		;;
		call cicloContarLetras
		call imprimir_estructura_html_abc

fin_mostrar_abc:
		ObtenerFecha
		ObtenerHora
		ImprimirFechaEn handle_abc
		mov BX, [handle_abc]
		mov AH, 40
		mov CH, 00
		mov CL, [tam_footer_html]
		mov DX, offset footer_html
		int 21

		mov AH, 3e ;; CIERA EL ARCHIVO
		int 21
		jmp menu_herramientas

imprimir_estructura_html_abc:
		call aperturaFila
		;;
		call aperturaColumna
		
		mov BX, [handle_abc]
		mov AH, 40
		mov CH, 00
		mov CL, 01
		mov DX, offset letra_A
		int 21
		call cierreColumna
		call aperturaColumna
		mov AX, [cont_A]
		call numAcadena
		mov BX, 0000
		mov CX, 0003
		mov DX, offset numero
		mov SI, 0000
		call cicloEscribirContadores
		

		call cierreColumna
		call cierreFila

		call aperturaFila
		call aperturaColumna
		
		mov BX, [handle_abc]
		mov AH, 40
		mov CH, 00
		mov CL, 01
		mov DX, offset letra_B
		int 21

		call cierreColumna
		call aperturaColumna

		mov AX, [cont_B]
		call numAcadena
		mov BX, 0000
		mov CX, 0003
		mov DX, offset numero
		mov SI, 0000
		call cicloEscribirContadores
		
		call cierreColumna
		call cierreFila

		call aperturaFila
		call aperturaColumna
		
		mov BX, [handle_abc]
		mov AH, 40
		mov CH, 00
		mov CL, 01
		mov DX, offset letra_C
		int 21

		call cierreColumna
		call aperturaColumna

		mov AX, [cont_C]
		call numAcadena
		mov BX, 0000
		mov CX, 0003
		mov DX, offset numero
		mov SI, 0000
		call cicloEscribirContadores
		
		call cierreColumna
		call cierreFila
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		call aperturaFila
		call aperturaColumna	
		mov BX, [handle_abc]
		mov AH, 40
		mov CH, 00
		mov CL, 01
		mov DX, offset letra_D
		int 21
		
		call cierreColumna
		call aperturaColumna
		
		mov AX, [cont_D]
		call numAcadena
		mov BX, 0000
		mov CX, 0003
		mov DX, offset numero
		mov SI, 0000
		call cicloEscribirContadores
		
		call cierreColumna
		call cierreFila

		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		call aperturaFila
		call aperturaColumna	
		mov BX, [handle_abc]
		mov AH, 40
		mov CH, 00
		mov CL, 01
		mov DX, offset letra_E
		int 21
		call cierreColumna
		call aperturaColumna
		mov AX, [cont_E]
		call numAcadena
		mov BX, 0000
		mov CX, 0003
		mov DX, offset numero
		mov SI, 0000
		call cicloEscribirContadores
		call cierreColumna
		call cierreFila
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		call aperturaFila
		call aperturaColumna	
		mov BX, [handle_abc]
		mov AH, 40
		mov CH, 00
		mov CL, 01
		mov DX, offset letra_F
		int 21
		call cierreColumna
		call aperturaColumna
		mov AX, [cont_F]
		call numAcadena
		mov BX, 0000
		mov CX, 0003
		mov DX, offset numero
		mov SI, 0000
		call cicloEscribirContadores
		call cierreColumna
		call cierreFila
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		call aperturaFila
		call aperturaColumna	
		mov BX, [handle_abc]
		mov AH, 40
		mov CH, 00
		mov CL, 01
		mov DX, offset letra_G
		int 21
		call cierreColumna
		call aperturaColumna
		mov AX, [cont_G]
		call numAcadena
		mov BX, 0000
		mov CX, 0003
		mov DX, offset numero
		mov SI, 0000
		call cicloEscribirContadores
		call cierreColumna
		call cierreFila
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		call aperturaFila
		call aperturaColumna	
		mov BX, [handle_abc]
		mov AH, 40
		mov CH, 00
		mov CL, 01
		mov DX, offset letra_H
		int 21
		call cierreColumna
		call aperturaColumna
		mov AX, [cont_H]
		call numAcadena
		mov BX, 0000
		mov CX, 0003
		mov DX, offset numero
		mov SI, 0000
		call cicloEscribirContadores
		call cierreColumna
		call cierreFila
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		call aperturaFila
		call aperturaColumna	
		mov BX, [handle_abc]
		mov AH, 40
		mov CH, 00
		mov CL, 01
		mov DX, offset letra_I
		int 21
		call cierreColumna
		call aperturaColumna
		mov AX, [cont_I]
		call numAcadena
		mov BX, 0000
		mov CX, 0003
		mov DX, offset numero
		mov SI, 0000
		call cicloEscribirContadores
		call cierreColumna
		call cierreFila
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		call aperturaFila
		call aperturaColumna	
		mov BX, [handle_abc]
		mov AH, 40
		mov CH, 00
		mov CL, 01
		mov DX, offset letra_J
		int 21
		call cierreColumna
		call aperturaColumna
		mov AX, [cont_J]
		call numAcadena
		mov BX, 0000
		mov CX, 0003
		mov DX, offset numero
		mov SI, 0000
		call cicloEscribirContadores
		call cierreColumna
		call cierreFila
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		call aperturaFila
		call aperturaColumna	
		mov BX, [handle_abc]
		mov AH, 40
		mov CH, 00
		mov CL, 01
		mov DX, offset letra_K
		int 21
		call cierreColumna
		call aperturaColumna
		mov AX, [cont_K]
		call numAcadena
		mov BX, 0000
		mov CX, 0003
		mov DX, offset numero
		mov SI, 0000
		call cicloEscribirContadores
		call cierreColumna
		call cierreFila
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		call aperturaFila
		call aperturaColumna	
		mov BX, [handle_abc]
		mov AH, 40
		mov CH, 00
		mov CL, 01
		mov DX, offset letra_L
		int 21
		call cierreColumna
		call aperturaColumna
		mov AX, [cont_L]
		call numAcadena
		mov BX, 0000
		mov CX, 0003
		mov DX, offset numero
		mov SI, 0000
		call cicloEscribirContadores
		call cierreColumna
		call cierreFila
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		call aperturaFila
		call aperturaColumna	
		mov BX, [handle_abc]
		mov AH, 40
		mov CH, 00
		mov CL, 01
		mov DX, offset letra_M
		int 21
		call cierreColumna
		call aperturaColumna
		mov AX, [cont_M]
		call numAcadena
		mov BX, 0000
		mov CX, 0003
		mov DX, offset numero
		mov SI, 0000
		call cicloEscribirContadores
		call cierreColumna
		call cierreFila
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		call aperturaFila
		call aperturaColumna	
		mov BX, [handle_abc]
		mov AH, 40
		mov CH, 00
		mov CL, 01
		mov DX, offset letra_N
		int 21
		call cierreColumna
		call aperturaColumna
		mov AX, [cont_N]
		call numAcadena
		mov BX, 0000
		mov CX, 0003
		mov DX, offset numero
		mov SI, 0000
		call cicloEscribirContadores
		call cierreColumna
		call cierreFila
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		call aperturaFila
		call aperturaColumna	
		mov BX, [handle_abc]
		mov AH, 40
		mov CH, 00
		mov CL, 01
		mov DX, offset letra_O
		int 21
		call cierreColumna
		call aperturaColumna
		mov AX, [cont_O]
		call numAcadena
		mov BX, 0000
		mov CX, 0003
		mov DX, offset numero
		mov SI, 0000
		call cicloEscribirContadores
		call cierreColumna
		call cierreFila
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		call aperturaFila
		call aperturaColumna	
		mov BX, [handle_abc]
		mov AH, 40
		mov CH, 00
		mov CL, 01
		mov DX, offset letra_P
		int 21
		call cierreColumna
		call aperturaColumna
		mov AX, [cont_P]
		call numAcadena
		mov BX, 0000
		mov CX, 0003
		mov DX, offset numero
		mov SI, 0000
		call cicloEscribirContadores
		;;
		call cierreColumna
		call cierreFila
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		call aperturaFila
		call aperturaColumna	
		mov BX, [handle_abc]
		mov AH, 40
		mov CH, 00
		mov CL, 01
		mov DX, offset letra_Q
		int 21
		call cierreColumna
		call aperturaColumna
		mov AX, [cont_Q]
		call numAcadena
		mov BX, 0000
		mov CX, 0003
		mov DX, offset numero
		mov SI, 0000
		call cicloEscribirContadores
		call cierreColumna
		call cierreFila
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		call aperturaFila
		call aperturaColumna	
		mov BX, [handle_abc]
		mov AH, 40
		mov CH, 00
		mov CL, 01
		mov DX, offset letra_R
		int 21
		call cierreColumna
		call aperturaColumna
		mov AX, [cont_R]
		call numAcadena
		mov BX, 0000
		mov CX, 0003
		mov DX, offset numero
		mov SI, 0000
		call cicloEscribirContadores
		call cierreColumna
		call cierreFila
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		call aperturaFila
		call aperturaColumna	
		mov BX, [handle_abc]
		mov AH, 40
		mov CH, 00
		mov CL, 01
		mov DX, offset letra_S
		int 21
		call cierreColumna
		call aperturaColumna
		mov AX, [cont_S]
		call numAcadena
		mov BX, 0000
		mov CX, 0003
		mov DX, offset numero
		mov SI, 0000
		call cicloEscribirContadores
		call cierreColumna
		call cierreFila
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		call aperturaFila
		call aperturaColumna	
		mov BX, [handle_abc]
		mov AH, 40
		mov CH, 00
		mov CL, 01
		mov DX, offset letra_T
		int 21
		call cierreColumna
		call aperturaColumna
		mov AX, [cont_T]
		call numAcadena
		mov BX, 0000
		mov CX, 0003
		mov DX, offset numero
		mov SI, 0000
		call cicloEscribirContadores
		call cierreColumna
		call cierreFila
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		call aperturaFila
		call aperturaColumna	
		mov BX, [handle_abc]
		mov AH, 40
		mov CH, 00
		mov CL, 01
		mov DX, offset letra_U
		int 21
		call cierreColumna
		call aperturaColumna
		mov AX, [cont_U]
		call numAcadena
		mov BX, 0000
		mov CX, 0003
		mov DX, offset numero
		mov SI, 0000
		call cicloEscribirContadores
		call cierreColumna
		call cierreFila
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		call aperturaFila
		call aperturaColumna	
		mov BX, [handle_abc]
		mov AH, 40
		mov CH, 00
		mov CL, 01
		mov DX, offset letra_V
		int 21
		call cierreColumna
		call aperturaColumna
		mov AX, [cont_V]
		call numAcadena
		mov BX, 0000
		mov CX, 0003
		mov DX, offset numero
		mov SI, 0000
		call cicloEscribirContadores
		call cierreColumna
		call cierreFila

		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		call aperturaFila
		call aperturaColumna	
		mov BX, [handle_abc]
		mov AH, 40
		mov CH, 00
		mov CL, 01
		mov DX, offset letra_W
		int 21
		call cierreColumna
		call aperturaColumna
		mov AX, [cont_W]
		call numAcadena
		mov BX, 0000
		mov CX, 0003
		mov DX, offset numero
		mov SI, 0000
		call cicloEscribirContadores
		call cierreColumna
		call cierreFila
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		call aperturaFila
		call aperturaColumna	
		mov BX, [handle_abc]
		mov AH, 40
		mov CH, 00
		mov CL, 01
		mov DX, offset letra_X
		int 21
		call cierreColumna
		call aperturaColumna
		mov AX, [cont_X]
		call numAcadena
		mov BX, 0000
		mov CX, 0003
		mov DX, offset numero
		mov SI, 0000
		call cicloEscribirContadores
		call cierreColumna
		call cierreFila
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		call aperturaFila
		call aperturaColumna	
		mov BX, [handle_abc]
		mov AH, 40
		mov CH, 00
		mov CL, 01
		mov DX, offset letra_Y
		int 21
		call cierreColumna
		call aperturaColumna
		mov AX, [cont_Y]
		call numAcadena
		mov BX, 0000
		mov CX, 0003
		mov DX, offset numero
		mov SI, 0000
		call cicloEscribirContadores
		call cierreColumna
		call cierreFila
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		call aperturaFila
		call aperturaColumna	
		mov BX, [handle_abc]
		mov AH, 40
		mov CH, 00
		mov CL, 01
		mov DX, offset letra_Z
		int 21
		call cierreColumna
		call aperturaColumna
		mov AX, [cont_Z]
		call numAcadena
		mov BX, 0000
		mov CX, 0003
		mov DX, offset numero
		mov SI, 0000
		call cicloEscribirContadores
		call cierreColumna
		call cierreFila
		jmp fin_mostrar_abc


cicloEscribirContadores:
		mov DI, DX
		mov AL, [DI]
		cmp AL, 00
		je fin_cicloEscribirLetras
		cmp SI, 0005
		je fin_cicloEscribirLetras
		mov CX, 0001
		mov BX, [handle_abc]
		mov AH, 40
		int 21
		inc DX
		inc SI
		jmp cicloEscribirContadores
fin_cicloEscribirLetras:
	ret
cicloContarLetras:
				;; puntero cierta posición
		mov BX, [handle_prods]
		mov CX, 05    ;; leer 
		mov DX, offset cod_prod
		mov AH, 3f
		int 21
		;; puntero avanzó
		mov BX, [handle_prods]
		mov CX, 21 ;; leer nombre
		mov DX, offset cod_name
		mov AH, 3f
		int 21
		;; puntero avanzó
		mov BX, [handle_prods]
		mov CX, 0004 ; LEER PRECIO
		mov DX, offset num_price
		mov AH, 3f
		int 21
		;; puntero avanzó
		mov BX, [handle_prods]
		mov CX, 0004
		mov DX, offset num_units
		mov AH, 3f
		int 21
		;; ¿cuántos bytes leímos?
		;; si se leyeron 0 bytes entonces se terminó el archivo...
		cmp AX, 00
		je finContarLetras
		mov DI, offset cod_name
		mov AL , [DI]
		cmp AL, 41
		je aumentarA
		cmp AL, 42
		je aumentarB
		cmp AL, 43
		je aumentarC
		cmp AL, 44
		je aumentarD
		cmp AL, 45
		je aumentarE
		cmp AL, 46
		je aumentarF
		cmp AL, 47
		je aumentarG
		cmp AL, 48
		je aumentarH
		cmp AL, 49
		je aumentarI
		cmp AL, 4A
		je aumentarJ
		cmp AL, 4B
		je aumentarK
		cmp AL, 4C
		je aumentarL
		cmp AL, 4D
		je aumentarM
		cmp AL, 4E
		je aumentarN
		cmp AL, 4F
		je aumentarO 
		cmp AL, 50
		je aumentarP
		cmp AL, 51
		je aumentarQ
		cmp AL, 52
		je aumentarR
		cmp AL, 53
		je aumentarS
		cmp AL, 54
		je aumentarT
		cmp AL, 55
		je aumentarU
		cmp AL, 56
		je aumentarV
		cmp AL, 57
		je aumentarW
		cmp AL, 58
		je aumentarX
		cmp AL, 59
		je aumentarY
		cmp AL, 60
		je aumentarZ
		;; ver si es producto válido
		jmp cicloContarLetras
finContarLetras:
	ret
aumentarA:
	inc cont_A
	jmp cicloContarLetras
aumentarB:
	inc cont_B
	jmp cicloContarLetras
aumentarC:
	inc cont_C
	jmp cicloContarLetras
aumentarD:
	inc cont_D
	jmp cicloContarLetras
aumentarE:
	inc cont_E
	jmp cicloContarLetras
aumentarF:
	inc cont_F
	jmp cicloContarLetras
aumentarG:
	inc cont_G
	jmp cicloContarLetras
aumentarH:
	inc cont_H
	jmp cicloContarLetras
aumentarI:
	inc cont_I
	jmp cicloContarLetras
aumentarJ:
	inc cont_J
	jmp cicloContarLetras
aumentarK:
	inc cont_K
	jmp cicloContarLetras
aumentarL:
	inc cont_L
	jmp cicloContarLetras
aumentarM:
	inc cont_M
	jmp cicloContarLetras
aumentarN:
	inc cont_N
	jmp cicloContarLetras
aumentarO:
	inc cont_O
	jmp cicloContarLetras
aumentarP:

	inc cont_P
	jmp cicloContarLetras
aumentarQ:
	inc cont_Q
	jmp cicloContarLetras
aumentarR:
	inc cont_R
	jmp cicloContarLetras
aumentarS:
	inc cont_S
	jmp cicloContarLetras
aumentarT:
	inc cont_T
	jmp cicloContarLetras
aumentarU:
	inc cont_U
	jmp cicloContarLetras
aumentarV:

	inc cont_V
	jmp cicloContarLetras
aumentarW:

	inc cont_W
	jmp cicloContarLetras
aumentarX:

	inc cont_X
	jmp cicloContarLetras
aumentarY:

	inc cont_Y
	jmp cicloContarLetras
aumentarZ:

	inc cont_Z
	jmp cicloContarLetras
ReporteFalta:
		mov AH, 3c
		mov CX, 0000
		mov DX, offset archivo_falta
		int 21
		mov [handle_falta], AX
		mov BX, AX
		mov AH, 40
		mov CH, 00
		mov CL, [tam_encabezado_html]
		mov DX, offset encabezado_html
		int 21
		mov BX, [handle_falta]
		mov AH, 40
		mov CH, 00
		mov CL, [tam_inicializacion_tabla]
		mov DX, offset inicializacion_tabla
		int 21
		;;
		mov AL, 02
		mov AH, 3d
		mov DX, offset archivo_prods
		int 21
		;;
		mov [handle_prods], AX



ciclo_ReporteFalta:
		;; puntero cierta posición
		mov BX, [handle_prods]
		mov CX, 05    ;; leer 
		mov DX, offset cod_prod
		mov AH, 3f
		int 21
		;; puntero avanzó
		mov BX, [handle_prods]
		mov CX, 21    ;; leer nombre
		mov DX, offset cod_name
		mov AH, 3f
		int 21
		;; puntero avanzó
		mov BX, [handle_prods]
		mov CX, 0004 ; LEER PRECIO
		mov DX, offset num_price
		mov AH, 3f
		int 21
		;; puntero avanzó
		mov BX, [handle_prods]
		mov CX, 0004
		mov DX, offset num_units
		mov AH, 3f
		int 21
		
		;; ¿cuántos bytes leímos?
		;; si se leyeron 0 bytes entonces se terminó el archivo...
		cmp AX, 00
		je finCiclo_reporteFalta
		;; ver si es producto válido
		
		mov AL, 00
		cmp [cod_prod], AL
		je ciclo_ReporteFalta
		;; producto en estructura
		cmp word ptr [num_units], 0
		jz llamar_imprimir_falta
		jmp ciclo_ReporteFalta
llamar_imprimir_falta:
	call imprimir_estructura_FALTA
	jmp ciclo_ReporteFalta
finCiclo_reporteFalta:
		ObtenerFecha
		ObtenerHora
		ImprimirFechaEn handle_falta
		;;
		mov BX, [handle_falta]
		mov AH, 40
		mov CH, 00
		mov CL, [tam_footer_html]
		mov DX, offset footer_html
		int 21
		;;
		mov AH, 3e
		int 21
		mov DX, offset generado
		mov AH, 09
		int 21
		
		jmp menu_herramientas
imprimir_estructura_FALTA:
		
		mov BX, [handle_falta]
		mov AH, 40
		mov CH, 00
		mov CL, 04
		mov DX, offset tr_html
		int 21
		;;
		mov BX, [handle_falta]
		mov AH, 40
		mov CH, 00
		mov CL, 04
		mov DX, offset td_html
		int 21
		;;
		mov DX, offset cod_prod
		mov SI, 0000
ciclo_escribir_codigo_falta:
		mov DI, DX
		mov AL, [DI]
		cmp AL, 00
		je escribir_nombre_falta
		cmp SI, 05
		je escribir_nombre_falta
		mov CX, 0001
		mov BX, [handle_falta]
		mov AH, 40
		int 21
		inc DX
		inc SI
		jmp ciclo_escribir_codigo_falta

escribir_nombre_falta:
		;;
		mov BX, [handle_falta]
		mov AH, 40
		mov CH, 00
		mov CL, 05
		mov DX, offset tdc_html
		int 21
		;;
		mov BX, [handle_falta]
		mov AH, 40
		mov CH, 00
		mov CL, 04
		mov DX, offset td_html
		int 21
		;;
		mov DX, offset cod_name
		mov SI, 0000
ciclo_escribir_nombre_falta:
		mov DI, DX
		mov AL, [DI]
		cmp AL, 00
		je escribirPrecioFalta
		cmp SI, 21
		je escribirPrecioFalta
		mov CX, 0001
		mov BX, [handle_falta]
		mov AH, 40
		int 21
		inc DX
		inc SI
		jmp ciclo_escribir_nombre_falta

escribirPrecioFalta:
		mov BX, [handle_falta]
		mov AH, 40
		mov CH, 00
		mov CL, 05
		mov DX, offset tdc_html
		int 21
		;;
		mov BX, [handle_falta]
		mov AH, 40
		mov CH, 00
		mov CL, 04
		mov DX, offset td_html
		int 21
		mov AX, [num_price]
		call numAcadena
		mov BX, 0000
		mov CX, 0003
		mov DX, offset numero
		mov SI, 0000

ciclo_escribirPrecioFalta:
		mov DI, DX
		mov AL, [DI]
		cmp AL, 00
		je escribirUnidadesFalta
		cmp SI, 0005
		je escribirUnidadesFalta
		mov CX, 0001
		mov BX, [handle_falta]
		mov AH, 40
		int 21
		inc DX
		inc SI
		jmp ciclo_escribirPrecioFalta
escribirUnidadesFalta:
		mov BX, [handle_falta]
		mov AH, 40
		mov CH, 00
		mov CL, 05
		mov DX, offset tdc_html
		int 21
		;;
		mov BX, [handle_falta]
		mov AH, 40
		mov CH, 00
		mov CL, 04
		mov DX, offset td_html
		int 21
		mov BX, [handle_falta]
		mov AH, 40
		mov CH, 00
		mov CL, 01
		mov DX, offset ceroHTM
		int 21
		mov BX, [handle_falta]
		mov AH, 40
		mov CH, 00
		mov CL, 05
		mov DX, offset tdc_html
		int 21
		;;
		mov BX, [handle_falta]
		mov AH, 40
		mov CH, 00
		mov CL, 05
		mov DX, offset trc_html
		int 21
		ret
		;;
;; cadenaAnum
;; ENTRADA:
;;    DI -> dirección a una cadena numérica
;; SALIDA:
;;    AX -> número convertido
;
;
;
;;[31][32][33][00][00]
;;     ^
;;     |
;;     ----- DI
;;;;
;;AX = 0
;;10 * AX + *1*  = 1
;;;;
;;AX = 1
;;10 * AX + 2  = 12
;;;;
;;AX = 12
;;10 * AX + 3  = 123
;;;;
cadenaAnum:
		mov AX, 0000    ; inicializar la salida
		mov CX, 0005    ; inicializar contador
		;;
seguir_convirtiendo:
		mov BL, [DI]
		cmp BL, 00
		je retorno_cadenaAnum
		sub BL, 30      ; BL es el valor numérico del caracter
		mov DX, 000a
		mul DX          ; AX * DX -> DX:AX
		mov BH, 00
		add AX, BX 
		inc DI          ; puntero en la cadena
		loop seguir_convirtiendo
retorno_cadenaAnum:
		ret

;; numAcadena
;; ENTRADA:
;;     AX -> número a convertir    
;; SALIDA:
;;    [numero] -> numero convertido en cadena
;;AX = 1500
;;CX = AX  <<<<<<<<<<<
;;[31][30][30][30][30]
;;                  ^
numAcadena:
		mov CX, 0005
		mov DI, offset numero
ciclo_poner30s:
		mov BL, 30
		mov [DI], BL
		inc DI
		loop ciclo_poner30s
		;; tenemos '0' en toda la cadena
		mov CX, AX    ; inicializar contador
		mov DI, offset numero
		add DI, 0004
		;;
ciclo_convertirAcadena:
		mov BL, [DI]
		inc BL
		mov [DI], BL
		cmp BL, 3a
		je aumentar_siguiente_digito_primera_vez
		loop ciclo_convertirAcadena
		jmp retorno_convertirAcadena
aumentar_siguiente_digito_primera_vez:
		push DI
aumentar_siguiente_digito:
		mov BL, 30     ; poner en '0' el actual
		mov [DI], BL
		dec DI         ; puntero a la cadena
		mov BL, [DI]
		inc BL
		mov [DI], BL
		cmp BL, 3a
		je aumentar_siguiente_digito
		pop DI         ; se recupera DI
		loop ciclo_convertirAcadena
retorno_convertirAcadena:
		ret
;; memset
;; ENTRADA:
;;    DI -> dirección de la cadena
;;    CX -> tamaño de la cadena
memset:
ciclo_memset:
		mov AL, 00
		mov [DI], AL
		inc DI
		loop ciclo_memset
		ret

;; cadenas_iguales -
;; ENTRADA:
;;    SI -> dirección a cadena 1
;;    DI -> dirección a cadena 2
;;    CX -> tamaño máximo
;; SALIDA:
;;    DL -> 00 si no son iguales

;;         0ff si si lo son
cadenas_iguales:
ciclo_cadenas_iguales:
		mov AL, [SI]
		cmp [DI], AL
		jne no_son_iguales
		inc DI
		inc SI
		loop ciclo_cadenas_iguales
		;;;;; <<<
		mov DL, 0ff
		ret
no_son_iguales:	mov DL, 00
		ret



;Macro incrementar contador
aumentarEn1 macro variable
		mov si, variable
		inc si
		mov variable,si
endm

fin:
.EXIT

end main
END
