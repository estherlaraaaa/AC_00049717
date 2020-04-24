  
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

    