.begin
.org 2048

x: 5
y: 0

main:
	ld [x], %r1
	add %r15, %r0, %r16
	add %r1, %r0, %r3
	add %r0, 10, %r4
	call chequear_rango
	st %r2, [y]
	jmpl %r16 + 4, %r0

chequear_rango:
	addcc %r3, -1, %r3
	be calc_factorial
	addcc %r4, -1, %r4
	be fuera_de_rango
	ba chequear_rango

calc_factorial:
	asdasd

for:
	

multiplicacion:
	

fuera_de_rango:
	add %r0, -1, %r2
	jmpl %r15 + 4, %r0

.end
