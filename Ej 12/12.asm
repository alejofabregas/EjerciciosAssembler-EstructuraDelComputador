.begin
.org 2048

.macro push r
	add %r14, -4, %r14
	st r, %r14
.endmacro

.macro pop r
	ld %r14, r
	add %r14, 4, %r14
.endmacro

x: 2147483647
y: 2147483647
z: 0

main:
	ld [x], %r1
	ld [y], %r2
	push %r1
	push %r2
	add %r15, %r0, %r16
	call multiplicar
	pop %r4
	st %r4, [z]
	jmpl %r16 + 4, %r0

multiplicar:
	pop %r2
	pop %r1
	add %r0, %r0, %r4
	addcc %r2, %r0, %r3
	bneg multiplicar_neg

multiplicar_pos:
	addcc %r1, %r4, %r4
	bvs fuera_de_rango
	addcc %r3, -1, %r3
	be terminar_pos
	ba multiplicar_pos

multiplicar_neg:
	addcc %r1, %r4, %r4
	bvs fuera_de_rango
	addcc %r3, 1, %r3
	be terminar_neg
	ba multiplicar_neg

terminar_pos:
	push %r4
	jmpl %r15 + 4, %r0

terminar_neg:
	neg %r4, %r4
	push %r4
	jmpl %r15 + 4, %r0
	
fuera_de_rango:
	add %r0, -1, %r4
	push %r4
	jmpl %r15 + 4, %r0
.end
