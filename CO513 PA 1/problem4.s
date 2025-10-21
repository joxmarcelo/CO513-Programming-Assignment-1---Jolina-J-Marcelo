.global _start
_start:
	
	MOV		r0, #0xA5 		@r0 = 0xA5 (1010 0101)
	AND		r2, r0, #0xF0	@Mask Upper Nibble 
	AND 	r3, r0, #0x0F	@Mask Lower Nibble
	
	LSR 	r2, r0, #4		@shift upper nibble right (0000 1010)
	LSL		r3, r3, #4		@shift lower nibble left (0101 0000)
	
	ORR		r1, r2, r3		@combination of r2 & r3 (0101 1010)
	
	SWI		0