// File: .asm
// Author: Dominic Rivas
// Date: 3/5/2020
// Section: 508
// E-mail: dominicr1001@tamu.edu 
// Description: Divides 2 numbers
 @R2
 M = 0
 @R0
 D = M
 @END
 D, JEQ
(LOOP)
 @R1
 D = D - M
 @END
 D, JLT
 @R2
 M = M + 1
 @END
 D, JEQ 
 @LOOP
 0, JMP
 
(END)
 @END
 0, JMP