INCLUDE Irvine32.inc

EXTERN drawBoard@0:PROC

.data
	
.code
main PROC
	call drawBoard@0
	exit
main ENDP
END main