INCLUDE Irvine32.inc

BOARD_WIDTH      EQU 10        ; 10 columns
BOARD_HEIGHT     EQU 20        ; 20 rows
BOARD_SIZE       EQU BOARD_WIDTH * BOARD_HEIGHT

TOTAL_PIECES     EQU 7         ; 7 shapes
PIECE_SIZE       EQU 25         ; 5 x 5 matrix
PIECE_LENGTH     EQU PIECE_SIZE * 4

SPAWN_X          EQU 4         ; column 3 (center)
SPAWN_Y          EQU 0         ; top row

GET_BOARD_INDEX MACRO row, col ;Might be useful
    mov esi, row * 10
    add esi, col
ENDM

IFNDEF BOARD_STATE_ASM
    EXTERN boardArray:BYTE     ; Declared in board_state.asm
ENDIF

IFNDEF PIECE_DEFINITIONS_ASM
    EXTERN pieceArray:BYTE
ENDIF