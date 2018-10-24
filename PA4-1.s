
	@	Put the required header information here
	@JACOB MATHIEU
	@OCT23 2018
	@INTRO TO COMP ORG AND ASSEMBLY

	.extern printf
	.extern scanf
	.global main
	.func main
main:
	PUSH	{LR}
	LDR	R2, =startval 	@ get addr of startval
	LDR	R2, [R2]	@ Load startval -> R2
	LDR	R3, =endval	@ get addr of endval
	LDR	R3, [R3]	@ Load endval -> R3
	@-------------
	@ Your code begins here
	@ Your code must put the final answer
	@ in R1.
	@-------------
	MOV R1, #0

_loop:
	ADD R1, R2, R1 @adds R2 value to R1
	ADD R2, R2, #1 @Incriments R2 by 1
	CMP R2, R3 @Checks when to stop the counting 
	BLE _loop @ ends loop
	
	
	@-------------
	@ Do NOT alter code past this line.
	@-------------
	LDR	R0, =out
	BL	printf
	POP	{PC}
	
.data
startval:	.word 1
endval:		.word 5
out:		.asciz "%d\n"
