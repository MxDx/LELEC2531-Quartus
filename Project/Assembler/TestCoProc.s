@ Maxime Delacroix 31632000
@ 2023-12

main:
    SUB R0, R15, R15
    LDR R1, [R0, #4]
    LDR R2, [R0, #8]
    STR R1, [R0, #1152] @ 1152 = 0x480
    STR R2, [R0, #1156] @ 1156 = 0x484
    LDR R3, [R0, #1176] @ 1176 = 0x498

    STR R3, [R0, #0x404]  @  0x404 
    @ LDR R4, [R0, #0x404]  @  0x404

 