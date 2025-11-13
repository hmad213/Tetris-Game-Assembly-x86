BOARD_STATE_ASM EQU 1        ; To avoid duplication
INCLUDE globals.inc

PUBLIC initializeBoard
PUBLIC boardArray

.data
boardArray BYTE BOARD_SIZE dup(0)

.code
initializeBoard PROC
	mov ecx, BOARD_SIZE
	mov esi, 0
	clearLoop:
		mov boardArray[esi], 0
		add esi, TYPE boardArray
		loop clearLoop
	ret
initializeBoard ENDP
END