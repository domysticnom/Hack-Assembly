 // File: .asm
// Author: Dominic Rivas
// Date: 3/5/2020
// Section: 508
// E-mail: dominicr1001@tamu.edu 
// Description: finds the remainder when dividing two numbers
 @R2
 M = 0
 @R0
 D = M
 @END
 D, JEQ
 
(LOOP)
 @R1
 D = D - M
 @REMAINDER
 D, JLT
 @END
 D, JEQ
 @LOOP
 0, JMP
 
(REMAINDER)
 @R1
 D = D + M
 @R2
 M = D
 
(END)
 @END
 0, JMP