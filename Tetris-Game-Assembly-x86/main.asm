INCLUDE Irvine32.inc

EXTERN startGame@0:PROC

.data
	
.code
main PROC
	; temporary calling. startGame will be called here
	call startGame@0
	exit
main ENDP
END main