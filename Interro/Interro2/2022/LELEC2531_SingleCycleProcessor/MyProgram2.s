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


main:   SUB R0, R15, R15 	@ R0 = 0
        ADD R2, R0, #255        @ R2 = ...11111111
        ADD R3, R0, #14    	@ R3 = ...00001110
        BIC R4, R2, R3    	@ R4 = ...11110001
        STR R4, [R0, #100] 	@ mem[100] = ...11110001 = 241
