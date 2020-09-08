// File: lcd.asm
// Author: Dominic Rivas
// Date: 3/5/2020
// Section: 508
// E-mail: dominicr1001@tamu.edu 
// Description: Finds the largest common divisor
@R2
 M = 0
 
 @R1
 D = M
 @IFR1EQ0
 D, JEQ
 @b 
 M = D
 
 @R0
 D = M
 @IFR0EQ0
 D, JEQ
 @a
 M = D 
 
(LOOP)
 @b
 D = D - M
 @MODULO
 D, JLT
 @EVENDIV
 D, JEQ 
 @LOOP
 0, JMP
 
(MODULO)
 @b
 D = D + M
 @c		
 M = D
 @b
 D = M
 @a
 M = D
 @c
 D = M
 @b
 M = D
 @a
 D = M
 @LOOP
 0,JMP
(EVENDIV)
 @b
 D = M
 @R2
 M = D
 @END
 0, JMP
(IFR0EQ0)
 @R1
 D = M
 @R2
 M = D 
 @END
 0, JMP
(IFR1EQ0)
 @R0
 D = M
 @R2
 M = D
 @END
 0, JMP
(END)
 @END
 0, JMP