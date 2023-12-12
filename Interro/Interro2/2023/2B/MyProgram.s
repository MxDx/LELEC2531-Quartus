/************* CODE SECTION *************/
@Name Here
.text   @ the following is executable assembly

@ Ensure code section is 4-byte aligned:
.balign 4

@ main is the entry point and must be global
.global main

B main          @ begin at main
.balign 128

/************* MAIN SECTION *************/

/*
   Test ARM processor
   ADD, SUB, AND, ORR, EOR, LDR, LDRB, STR, B
   If successful, it should write the value 254 to word 32 
   and the value 510 to word 49.
*/

; MyProgram.asm
MAIN 
    SUB R0, R15, R15
    ADD R10, R0, #1
    MOV R1, #255
    ADD R2, R1, R1
    B   LOOP
LOOP
    ADDS R2, R2, R2
    BCS END
    B LOOP
END
@    ADC R1, R10, #1
@    STR R1, [R0, #100]
