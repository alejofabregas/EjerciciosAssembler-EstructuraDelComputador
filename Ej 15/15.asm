.begin
.org 2048

x: -5
y: 7FFFFFFFh

main:
	ld [x], %r10
	ld [y], %r11
	add %r15, %r0, %r16
	call valor_abs
	st %r10, [x]
	jmpl %r16 + 4, %r0

valor_abs:
	and %r10, %r11, %r10
	jmpl %r15 + 4, %r0

.end
