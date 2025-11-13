INCLUDE globals.inc

.data
.code
movePiece PROC			; moves the current piece based on provided input
movePiece ENDP

placePiece PROC			; places the current piece. Might be unnecessary 
placePiece ENDP

rotatePiece PROC		; grabs the rotated piece in the pieces array
rotatePiece ENDP

isSafe PROC				; takes current shape coordinates and checks if it is safe 
isSafe ENDP

checkCollision PROC		; checks whether shape has collided with already placed shape
checkCollision ENDP
END