                org     100h

                section .text

                call    setup
                call 	texto	
                call 	cursor
                call 	linea1
                call 	linea2
                call 	linea3
                call	kbwait

                int 	20h

setup:          mov     al, 7d
                mov     [202h], al
                mov     al, 00001111b
                mov     [210h], al
                mov     al, 00000111b
                mov     [211h], al
                mov     al, 00001110b
                mov     [212h], al
                mov     ax, 0000h
                mov     [200h], ax
                ret

texto:	        mov 	ah, 00h
                mov	    al, 03h
                int 	10h
                ret

cursor:         mov	    ah, 01h
                mov 	ch, 00000000b
                mov 	cl, 00001110b
                        ;   IRGB
                int 	10h
                ret

w_char:	        mov 	ah, 09h
                mov 	al, cl
                mov 	bh, 0h
                mov 	bl, 00001111b
                mov 	cx, 1h
                int 	10h
                ret

kbwait:         mov 	ax, 0000h
                int 	16h
                ret

m_cursr:        mov 	ah, 02h
                mov 	dx, di  ; columna
                mov 	dh, [202h] ; fila
                mov 	bh, 0h
                int 	10h
                ret

jmp_row:        mov     [200h], ax
                mov     ax, 5h
                add     [202h], ax
                mov     ax, [200h]
                ret

linea1:         mov 	di, 25d
lupita1:        mov 	cl, [msg1+di-25d]
                call    m_cursr
                call 	w_char
                inc	    di
                cmp 	di, len1
                jb	    lupita1
                call    jmp_row
                ret

linea2:         mov 	di, 30d
lupita2:        mov 	cl, [msg2+di-30d]
                call    m_cursr
                call 	w_char
                inc	    di
                cmp 	di, len2
                jb	    lupita2
                call    jmp_row
                ret

linea3:         mov 	di, 15d
lupita3:        mov 	cl, [msg3+di-15d]
                call    m_cursr
                call 	w_char
                inc	    di
                cmp 	di, len3
                jb	    lupita3
                call    jmp_row
                ret


section .data
msg1	db 	"Hey kid, don't listen to your head"
len1 	equ	$-msg1+25d
msg2	db 	"it only fills you with dread and with doubt"
len2 	equ	$-msg2+30d
msg3	db 	"left looking for and easy way out "
len3 	equ	$-msg3+15d


