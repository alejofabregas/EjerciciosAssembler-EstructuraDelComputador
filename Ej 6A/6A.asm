.begin
.org 2048
	x: 27
	y: 49
	z: 0
	main:	ld [x], %r1
		ld [y], %r2
		add %r15, %r0, %r16
		call suma
		st %r3, [z]
		jmpl %r16 + 4, %r0
	suma:	addcc %r1, %r2, %r3
		jmpl %r15 + 4, %r0
.end
