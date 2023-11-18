/************* CODE SECTION *************/
@Name Maxime Delacroix
@Floating Point Addition
.text   @ the following is executable assembly                   

@ Ensure code section is 4-byte aligned: 
.balign 4

@ main is the entry point and must be global 
.global main    
b main          @ begin at main 

/************* FPNUMS ******************/
@ These addresses contain the two fp numbers to be added 

fpNum0:  .word   0x477fffb0
fpNum1:  .word   0x3f010000

 
/************* MAIN SECTION *************/
main:
    ldr r0, fpNum0      @ r0 = fpNum0  
    ldr r1, fpNum1      @ r1 = fpNum1 

    @ Shift the numbers to the right by 23 bits to 
    @ get the exponents
    lsr r2, r0, #23     @ r2 = r0 >> 23
    lsr r3, r1, #23     @ r3 = r1 >> 23

    @ Mask the exponent to get the fraction
    lsl r4, r0, #8      @ r4 = r0 << 8
    lsl r5, r1, #8      @ r5 = r1 << 8
    orr r4, r4, #0x80000000 @ Adding the leading 1
    orr r5, r5, #0x80000000 @ Adding the leading 1

    @ Substract and raise the flags
    subs r6, r2, r3     @ r6 = r2 - r3
	
    @ Compare the exponent and store the bigger one in r7
    movge r7, r2        @ r7 = r2 if r2 >= r3
    movlt r7, r3        @ r7 = r3 if r2 < r3

    @ Shift the fraction
    lsrgt r5, r5, r6    @ r5 = r5 >> r6 if r2 > r3
    sublt r6, r3, r2    @ r6 = r3 - r2 if r2 < r3
    lsrlt r4, r4, r6    @ r4 = r4 >> r6 if r2 < r3

    @ Add the fraction
    adds r4, r4, r5     @ r4 = r4 + r5
    @ r4 hold now the sum of the fraction

    @ Normalize the fraction
    lsrcs r4, r4, #1    @ r4 = r4 >> 1 if r4 overflowed
    addcs r7, r7, #1    @ r7 = r7 + 1 if r4 overflowed

    @ Rounding the result

    @ Strip the leading 1 off the resulting mantissa
    @ and merge the signe, exponent and fraction bits
    lsl r7, r7, #23     @ r7 = r7 << 23
    lsl r4, r4, #1      @ r4 = r4 << 1
    lsr r4, r4, #9      @ r4 = r4 >> 9
    orr r0, r7, r4      @ r0 = r7 | r4

    b lr
.end     @ end of code

