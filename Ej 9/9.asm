.begin
.org 2048
x: -27
main:	ld [x], %r1
	add %r14, -4, %r14
	st %r1, %r14
	add %r15, %r0, %r16
	call valor_absoluto
	ld %r14, %r1
	add %r14, 4, %r14
	st %r1, [x]
	jmpl %r16 + 4, %r0
valor_absoluto:	
	ld %r14, %r1
	add %r14, 4, %r14
	addcc %r1, %r0, %r1
	bneg es_negativo
es_positivo:	
	add %r14, -4, %r14
	st %r1, %r14
	jmpl %r15 + 4, %r0
es_negativo:	
	neg %r1, %r1
	add %r14, -4, %r14
	st %r1, %r14
	jmpl %r15 + 4, %r0
.end
