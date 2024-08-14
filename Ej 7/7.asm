.begin
.org 2048
	x: 27
	y: 49
	main:	ld [x], %r1
		ld [y], %r2
		add %r15, %r0, %r16
		call .extern suma
		jmpl %r16 + 4, %r0
.end


.begin
.org 2048
	.extern suma:
		addcc %r1, %r2, %r3
		jmpl %r15 + 4, %r0
.end