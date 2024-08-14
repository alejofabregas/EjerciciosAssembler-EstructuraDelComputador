.begin
.org 2048
	x: 27
	y: 49
	main:	ld [x], %r1
		ld [y], %r2
		st %r1, [y]
		st %r2, [x]
	jmpl %r15+4, %r0
.end
