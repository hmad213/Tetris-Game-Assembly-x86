INCLUDE Irvine32.inc
INCLUDE globals.inc

PUBLIC drawBoard
.data
line BYTE 25 dup('-'), 0
startRow BYTE '</ ', 0
endRow BYTE '\>', 0
temp DWORD ?

.code
drawBoard PROC
	mov edx, OFFSET line
	call WriteString
	call Crlf

	mov ecx, BOARD_HEIGHT
	mov esi, 0
	rowLoop:
		mov edx, OFFSET startRow
		call WriteString
		mov temp, ecx
		mov ecx, BOARD_WIDTH

		colLoop:
			mov al, boardArray[esi]
			call WriteChar
			mov al, ' '
			call WriteChar
			inc esi
			loop colLoop

		mov edx, OFFSET endRow
		call WriteString
		call Crlf
		mov ecx, temp
		loop rowLoop

	mov edx, OFFSET line
	call WriteString
	call Crlf
	ret
drawBoard ENDP
END