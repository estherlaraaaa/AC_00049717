  
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

        mov     cl, "e"
        mov [210h], cl
        mov     cl, "s"
        mov [211h], cl
        
        mov     cl, "n"
        mov [220h], cl
        mov     cl, "a"     
        mov [221h], cl
        mov     cl, "d"
        mov [222h], cl
        mov     cl, "a"
        mov [223h], cl
