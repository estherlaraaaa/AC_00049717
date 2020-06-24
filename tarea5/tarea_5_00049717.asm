org 	100h

section .text

	call 	grafico	
        
	xor 	si, si
	xor 	di, di

	mov 	si, 60d ; X -> Columna  ____ de la E arriba
	mov 	di, 20d ; Y -> Fila
	call 	lineah2

    mov 	si, 100d ; X -> Columna   ___ de la pata de abajo E
	mov 	di, 140d ; Y -> Fila
	call 	lineah2

    mov 	si, 60d ; X -> Columna  ___ de la E abajo
	mov 	di, 180d ; Y -> Fila
	call 	lineah2

	mov 	si, 100d ; X -> Columna   ___ de la pata de arriba E
	mov 	di, 60d ; Y -> Fila
	call 	lineah2

	mov 	si, 100d ; X -> Columna   ___ de la pata de enmedio E
	mov 	di, 80d ; Y -> Fila
	call 	lineah2

	mov 	si, 100d ; X -> Columna   ___ de la pata de enmedio E
	mov 	di, 120d ; Y -> Fila
	call 	lineah2

	mov		si, 60d ; X -> Columna   ;esta es la | de la E
	mov 	di, 20d ; Y -> Fila
	call 	lineav1

	mov		si, 100d ; X -> Columna  ;| de la E de abajo-adentro
	mov 	di, 120d ; Y -> Fila
	call 	lineav2

    mov		si, 160d ; X -> Columna   esta es la | del palo de abajo de la E
	mov 	di, 140d ; Y -> Fila
	call 	lineav1

	mov		si, 160d ; X -> Columna   esta es la | del palo de abajo de la E
	mov 	di, 80d ; Y -> Fila
	call 	lineav3
	
	mov		si, 160d ; X -> Columna   esta es la | del palo de abajo de la E
	mov 	di, 20d ; Y -> Fila
	call 	lineav4

	mov		si, 100d ; X -> Columna   esta es la | para cerrar arriba enmedio
	mov 	di, 60d ; Y -> Fila
	call 	lineav5


	call 	kb

	int 	20h

grafico:
	mov		ah, 00h
	mov		al, 13h
	int 	10h
	ret

pixel:	
	mov		ah, 0Ch
	mov		al, 1100b
	int 	10h
	ret

lineah1: 
lh1:	
	mov 	cx, 0d ; Columna 
	add 	cx, si
	mov		dx, di ; Fila
	call 	pixel
	inc 	si
	cmp 	si, 100d
	jne 	lh1
	ret

lineah2: 
lh2:	
	mov 	cx, 0d ; Columna 
	add 	cx, si
	mov		dx, di ; Fila
	call 	pixel
	inc 	si
	cmp 	si, 160d
	jne 	lh2
	ret

lineav1:
lv1:	
	mov 	cx, si ; Columna 
	mov		dx, 0d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, 180d
	jne 	lv1
	ret

lineav2:
lv2:	
	mov 	cx, si ; Columna 
	mov		dx, 0d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, 140d
	jne 	lv2
	ret

lineav3:
lv3:	
	mov 	cx, si ; Columna 
	mov		dx, 0d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, 120d
	jne 	lv3
	ret

lineav4:
lv4:	
	mov 	cx, si ; Columna 
	mov		dx, 0d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, 60d
	jne 	lv4
	ret

lineav5:
lv5:	
	mov 	cx, si ; Columna 
	mov		dx, 0d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, 80d
	jne 	lv5
	ret

kb: 	mov	ah, 00h
	int 	16h
	ret