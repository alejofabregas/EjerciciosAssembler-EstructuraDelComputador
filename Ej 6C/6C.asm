.begin
.org 2048
	nums:	27
		49
		
	main:	add %r15, %r0, %r16
		call suma
		jmpl %r16 + 4, %r0
	suma:	ld [nums], %r1
		ld [nums+4], %r2
		addcc %r1, %r2, %r3
		st %r3, [nums+8]
		jmpl %r15 + 4, %r0
.end
