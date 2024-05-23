	.syntax unified
	.global _start

_start:
	mov r0, 1
	mov r1, 5

loop:
	cmp r1, 1
	ble _end
	mul r0, r1
	sub r1, r1, 1	
	bal loop	

_end:
	mov r7, 1
	swi 0
