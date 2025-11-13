INCLUDE Irvine32.inc

EXTERN drawBoard@0:PROC
EXTERN initializeBoard@0:PROC

.data
	
.code
main PROC
	; temporary calling. startGame will be called here
	call drawBoard@0
	exit
main ENDP
END main