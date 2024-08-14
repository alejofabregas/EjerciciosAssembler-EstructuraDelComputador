.begin
.org 2048
x: 2147483647
y: 2147483647
z: 0
main:
	ld [x], %r1
	ld [y], %r2
	add %r14, -4, %r14
	st %r1, %r14
	add %r14, -4, %r14
	st %r2, %r14
	add %r15, %r0, %r16
	call suma_es_representable
	ld %r14, %r3
	add %r14, 4, %r14
	st %r3, [z]
	jmpl %r16 + 4, %r0
suma_es_representable:
	ld %r14, %r1
	add %r14, 4, %r14
	ld %r14, %r2
	add %r14, 4, %r14
	addcc %r1, %r2, %r3
	bvs representable
no_representable:
	add %r0, -1, %r4
	add %r14, -4, %r14
	st %r4, %r14
	jmpl %r15 + 4, %r0
representable:
	add %r14, -4, %r14
	st %r0, %r14
	jmpl %r15 + 4, %r0
.end
