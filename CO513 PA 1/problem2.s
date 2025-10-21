.global _start
_start:
	
	Mov		r0, #81
	Mov 	r1, #36
	
gcd_loop:
	CMP		r1, #0		@if r1=0
	BEQ		done		@done if GCD=r0

mainloop:
	CMP 	r1, #0		@until r1 is not equal to 0
	BEQ		done
	
	Mov		r2, r1		@temp = r1
	
Mod_Loop:
	CMP		r0, r1		@if r0<r1
	BLT		Mod_Done	@if mas maliit na si r0, end
	SUB		r0, r0, r1	@r0=ro-r1
	B		Mod_Loop	@repeat until ro<r1

Mod_Done:
	Mov 	r1, r0		@r1=remainder
	Mov		r0, r2		@r0=temp
	B		mainloop	
	
done:
	SWI		0
