	@ Factorial
	@ Put the required header information here
	@ JACOB MATHIEU
	@ OCT 23 2018
	@ INtro to com org and assembly

	.extern printf
	.extern scanf
	.global main
	.func main
main:	PUSH	{LR}
	LDR	R0, =prompt	@ Get address of prompt
	BL	printf		@ Print prompt to screen
	LDR	R0, =in		@ Get addr of input format string
	LDR	R1, =n		@ Get addr of n
	BL	scanf		@ Put value in n using scanf
	LDR	R0, =n		@ Addr of n into R0
	LDR	R0, [R0]	@ n is now in R0
	@-------------
	@ Your code goes here.  Put n! in R2
	@-------------
	MOV R2, #1 @moves 1 into R2
	CMP R0,#0 @compares the number one to number 2
	MOVEQ R2,#1 @if R0 is equal to 2 then you move 1 into R2
loop
	CMP R0, #1 @compares 1 to R0
	MULGE R2, R2, R0 @only runs if greater than or equal to 
	SUBGE R0, R0, #1 @only if greaterthan or equal to 
	BGE loop


	@-------------
	@ Do NOT alter code past this line.
	@-------------
	MOV	R1, R2
	LDR	R0, =out
	BL 	printf
	POP	{PC}
	
.data
n:	.word 0
prompt:	.asciz "Enter n: "
in:	.asciz "%d"
out:	.asciz "factorial is: %d\n"

