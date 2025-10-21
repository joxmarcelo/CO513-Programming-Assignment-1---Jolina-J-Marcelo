.global _start
_start:
.data
my_array: 
	.word 12, -9, 3, 0, 45, 18, 14 		@array
array_size:
	.word 7								@number of elements
.text
.global _start

_start:
	LDR r0, =my_array					
	LDR	r1, =array_size
	LDR r1, [r1]					@actual count of elemets
	
	LDR r2, [r0], #4				@first element (max)
	SUB r1, r1, #1					
	
loop:
	CMP r1, #0						
	BEQ done
	
	LDR r3, [r0], #4				@next element
	CMP r3, r2						@compare r3 (max) to r2
	MOVGT r2, r3					@if r3 > r2, change r2 (r2=r3)
	SUB r1, r1, #1					
	BNE loop
	
done:
	B done
	SWI 0