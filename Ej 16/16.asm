.begin
.org 2048

x: 27
y: 49
z: 0

.macro push r
	add %r14, -4, %r14
	st r, %r14
.endmacro

.macro pop r
	ld %r14, r
	add %r14, 4, %r14
.endmacro

main:
	ld [x], %r1
	ld [y], %r2
	push %r1
	push %r2
	add %r15, %r0, %r16
	call cual_es_mayor
	pop %r3
	st %r3, [z]
	jmpl %r16 + 4, %r0

cual_es_mayor:
	

.end
