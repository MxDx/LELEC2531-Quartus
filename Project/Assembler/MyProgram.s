@ Maxime Delacroix 31632000
@ 2023-12

main:
    SUB R0, R15, R15
    ADD R1, R0, #1
    CMP R0, R1
    BEQ fail
    B   success

fail:
    STR R0, [R0, #220] // Store 0 at 55

success:
    STR R1, [R0, #220] // Store 1 at 55