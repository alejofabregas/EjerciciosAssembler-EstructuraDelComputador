.begin
.org 2048
	x: 27
	y: 49
	z: 0
	main:	ld [x], %r1
		ld [y], %r2
		add %r14, -4, %r14
		st %r1, %r14
		add %r14, -4, %r14
		st %r2, %r14
		add %r15, %r0, %r16
		call suma
		ld %r14, %r3
		add %r14, 4, %r14
		st %r3, [z]
		jmpl %r16 + 4, %r0
	suma:	ld %r14, %r6
		add %r14, 4, %r14
		ld %r14, %r5
		add %r14, 4, %r14
		addcc %r5, %r6, %r7
		add %r14, -4, %r14
		st %r7, %r14
		jmpl %r15 + 4, %r0
.end
