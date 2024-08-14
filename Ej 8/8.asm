.begin
.org 2048

.macro suma s1, s2, res
	addcc s1, s2, res
.endmacro

x: 27
y: 49
z: 0

main:	ld [x], %r1
	ld [y], %r2
	suma %r1, %r2, %r3
	st %r3, [z]
	jmpl %r15 + 4, %r0

.end
