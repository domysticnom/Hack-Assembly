// File: Fill.asm
// Author: Dominic Rivas
// Date: 3/5/2020
// Section: 508
// E-mail: dominicr1001@tamu.edu 
// Description: If a key is pressed, turn the screen black
(RESTART)
@SCREEN
D=A
@0
M=D	

(KEYPRESS)

@KBD
D=M
@BLACK
D,JGT	
@WHITE
D,JEQ	

@KEYPRESS
0,JMP

(BLACK)
@R1
M=-1	
@PIXEL
0,JMP

(WHITE)
@R1
M=0	
@PIXEL
0,JMP

(PIXEL)
@R1	
D=M	

@R0
A=M	
M=D	

@R0
D=M+1	
@KBD
D=A-D	

@R0
M=M+1
A=M

@PIXEL
D,JGT 
@RESTART
0,JMP