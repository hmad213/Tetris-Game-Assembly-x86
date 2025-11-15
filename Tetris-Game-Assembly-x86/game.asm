INCLUDE globals.inc

PUBLIC startGame
EXTERN drawBoard@0:PROC

.data
	currentPiece DWORD ?
	nextPiece DWORD ?
	currentPieceCoordinates DWORD 4 dup(?)
.code
startGame PROC		; contains the game loop. also initializes everything before the loop

gameloop:
	mov dl, 0
	mov dh, 0
	call Gotoxy

	call drawBoard@0

	mov eax, 100
	call Delay
	jmp gameloop

startGame ENDP

updateGame PROC		; updates the game after each loop
updateGame ENDP

endGame PROC		; Game over loop. Takes input to restart the game
endGame ENDP

checkGameOver PROC
checkGameOver ENDP
END