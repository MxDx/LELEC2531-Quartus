@ Maxime Delacroix 31632000
@ 2023-12

    MAIN:
            SUB R0, R15, R15
            LDR R1, [R0, #4]
            LDR R2, [R0, #8]
            STR R1, [R0, #1152] @ 1152 = 0x480
            STR R2, [R0, #1156] @ 1156 = 0x484
            LDR R3, [R0, #1176] @ 1176 = 0x498

    @ LDR R4, [R0, #0x404]  @  0x404

/*
    Loop on a counter and display the 8 LSB on the 8 LED of the DE0-Nano
    The counting frequency is fixed by the RaspberryPI via the SPI

    Counter = LED at the address 0x800
    Counting frequency at the address 0x400
*/

LOOP:   LDR R4, [R0, #0x400]    @ R4 = counting frequency
DELAY:  SUBS R4, R4, #1         @ R4 = R4 - 1
        BNE DELAY               @ Branch if R4 != 0

        STR R3, [R0, #0x404]    @  0x404 = 0b0100 0000 0100
        
        B   LOOP                @ infinite loop

 