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
   ADD, SUB, AND, ORR, LDR, STR, B
   If successful, it should write the value 85 to address 100
*/

main:   SUB R0, R15, R15	@ R0 = 0
        ADD R2, R0, #85	@ R2 = ...01010101 = 85
        ADD R3, R0, #85	@ R3 = ...01010101 = 85
        @EORS R4, R3, R2
        @ANDS R5, R3, R0
        TST R3, R0       	@ set flag zero
        BEQ SUCCESS_1
        B FAIL_1
SUCCESS_1: TST R3, #0       @ set flag zero, compared to immediate
           BEQ SUCCESS_2
           B FAIL_2
SUCCESS_2: STR R2, [R0, #100] 	@ Store 85 at address 100 if TEQ is OK
           B END
FAIL_1:    STR R0, [R0, #100]	@ Store 0 at address 100 if TEQ is NOT OK
           B END
FAIL_2:    ADD R3, R0, #1 
           STR R3, [R0, #100]	@ Store 1 at address 100 if TEQ is NOT OK
           B END
END: LDR R6, [R0, #100]
