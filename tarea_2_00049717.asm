  
        org     100h

        ;Ejercicio 1
        ;carné 00049717 -> 4+9+7+1+7 = 28/5 = 5.6 = 6
        ;peor es nada

        mov     ax, 0000h
        add     ax, 4d
        add     ax, 9d
        add     ax, 7d
        add     ax, 1d
        add     ax, 7d
        mov     cl, 5d
        div     cl

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
        
        mov     cl, "n"
        mov [205h], cl
        mov     cl, "a"     
        mov [206h], cl
        mov     cl, "d"
        mov [207h], cl
        mov     cl, "a"
        mov [208h], cl
