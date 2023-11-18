/************* CODE SECTION *************/
@Name Maxime Delacroix
.text   @ the following is executable assembly

@ Ensure code section is 4-byte aligned:
.balign 4

@ main is the entry point and must be global
.global main
B main          @ begin at main

/************* MAIN SECTION *************/
main:
	MOV  R0, #8			@ n = 8
	MOV  R1, #1			@ old = 1
	MOV  R2, #0			@ cur = 0
	MOV  R3, #0			@ i = 0
	CMP  R0, #0			@ tmp = 0
	BEQ  LR
	B    loop			@ jump to loop
loop:
	MOV  R4, R2			@ tmp = cur
	ADD  R2, R1, R2		@ cur = old + cur
	ADD  R3, R3, #1  	@ i = i + 1
	MOV  R1, R4			@ old = tmp
	CMP  R3, R0			@ i == n
	BEQ  done			@ if true, jump to done
	B    loop			@ infinite loop
done:
	MOV R0, R2     		@ store cur in R0 for the result
	B LR			@ exit cleanly

.end     @ end of code

