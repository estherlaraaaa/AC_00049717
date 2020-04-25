  
                org     100h

                        ;EJERCICIO 1
                        ;carné 00049717 -> 4+9+7+1+7 = 28/5 = 5.6 = 6
                        

                mov     ax, 0000h
                add     ax, 4d
                add     ax, 9d
                add     ax, 7d
                add     ax, 1d
                add     ax, 7d
                mov     cl, 5d
                div     cl

                ;R(6)// peor es nada

                mov     cl, "P"
                mov [200h], cl
                mov     cl, "e"
                mov [201h], cl
                mov     cl, "o"
                mov [202h], cl
                mov     cl, "r"
                mov [203h], cl
                mov     cl, ""
                mov [204h], cl

                mov     cl, "e"
                mov [205h], cl
                mov     cl, "s"
                mov [206h], cl

                mov     cl, ""
                mov [207h], cl
                        
                mov     cl, "n"
                mov [208h], cl
                mov     cl, "a"     
                mov [209h], cl
                mov     cl, "d"
                mov [20Ah], cl
                mov     cl, "a"
                mov [20Bh], cl

        ;EJERCICIO 2

                mov     ax, 0000h
                mov     al, 2d
                mov     bx, 210h
                mov     cx, 2d
estimacion:     mul     cx
                mov     [bx], ax
                cmp     ah, 00h
                ja      dos
                je      uno
dos:            add     bx, 2h
                jmp     sig
uno:            add     bx, 1h
sig:            cmp     bx, 21Fh
                jb      estimacion

                int 10h
