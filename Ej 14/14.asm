.begin
.org 2048

x: 5
y: 0
!2147483647

main:
	ld [x], %r1
	add %r1, %r0, %r2
	add %r15, %r0, %r16
	call calc_cuadrado
	st %r3, [y]
	jmpl %r16 + 4, %r0

calc_cuadrado:
	addcc %r1, %r3, %r3
	bvs fuera_de_rango
	addcc %r2, -1, %r2
	be terminar_calc
	ba calc_cuadrado

fuera_de_rango:
	add %r0, -1, %r3
	jmpl %r15 + 4, %r0

terminar_calc:
	jmpl %r15 + 4, %r0

.end
