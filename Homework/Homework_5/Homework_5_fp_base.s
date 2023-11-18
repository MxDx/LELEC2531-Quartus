/************* CODE SECTION *************/
@Name Here
@Floating Point Addition
.text   @ the following is executable assembly                   

@ Ensure code section is 4-byte aligned: 
.balign 4

@ main is the entry point and must be global 
.global main    
b main          @ begin at main 

/************* FPNUMS ******************/
@ These addresses contain the two fp numbers to be added 

fpNum0:  .word   0x3f800000
fpNum1:  .word   0x3f800000

 
/************* MAIN SECTION *************/
main:
    ldr r0, fpNum0      @ r0 = fpNum0  
    ldr r1, fpNum1      @ r1 = fpNum1 

@ Your Code goes here:


	
    bx lr
.end     @ end of code

