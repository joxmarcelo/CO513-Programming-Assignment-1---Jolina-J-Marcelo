.global _start
_start:
	
	Mov		r0, #8
	Mov 	r1, #1
	
loop:
	CMP 	r0, #1
	BEQ 	done
	MUL 	r1, r1, r0
	SUB 	r0, r0, #1
	B 		loop
	
done:
	mov 	r4, #1
	SWI 	0