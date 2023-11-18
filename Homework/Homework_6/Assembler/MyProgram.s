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
	ADD R1, R0, #255
	ADD R2, R1, R1
	STR R2, [R0, #196]
	EOR R3, R1, #77
	AND R4, R3, #0x1F
	ADD R5, R3, R4
	LDRB R6, [R5]      @ Load only a byte not the hole thing 
	LDRB R7, [R5, #1]
	SUBS R0, R6, R7
	BLT MAIN
	BGT HERE
	STR R1, [R4, #110]
	B MAIN
HERE 
	STR R6, [R4, #110]