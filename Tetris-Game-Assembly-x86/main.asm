INCLUDE Irvine32.inc
.data
	msg BYTE "Hello world!", 0
.code
main PROC
	mov edx, OFFSET msg
	call WriteString
	exit
main ENDP
END main