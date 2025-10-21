.global _start
_start:
	
	Mov 	r0, #11			@r0=11; BIN=1011; ODD parity 
	Mov 	r2, #0			@r2 will be the counter of # of 1s

check_loop:
	CMP		r0, #0			@if r0=0, done
	BEQ		done			
	
	AND		r3, r0, #1		@get the least significant bit (LSB)
	ADD 	r2, r2, r3		@if 1 ang LSB add sa bilang
	LSR		r0, r0, #1		@Shift Right to check the next bit
	B		check_loop
	
done:
	AND		r1, r2, #1		@get the LSB of the counter
	SWI		0				@r1=0 even parity; r1=1 odd parity
