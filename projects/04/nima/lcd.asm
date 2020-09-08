// File: lcd.asm
// Author: Nima Ghadiri
// Date: 3/3/2020
// Section: 508
// E-mail: nimasg3@tamu.edu 
// Description:
// The content of this file calculate the largest common denominator of two integers.
@R0 
D = M  
@a 
M = D 

@a
D = M
@EQUAL
D;JEQ

@R1 
D = M  
@b 
M = D  


		
@b
D = M	
@BZERO
D;JEQ

@0 
D = A  
@R2
M = D

@0 
D = A  
@R3
M = D
		
(POSITIVE)
		@a
        D = M
		@R3
        M = D

        @LCD 
        D;JLT 
		
        @b
        D = D - M
		
		@EQUAL
		D;JEQ
		
        @LCD 
        D;JLT

        @b
        D = M
        @a
        M = M - D 

        @POSITIVE
        0;JMP

(LCD)
		@b
		D = M
		
		@a
		M = D
		
		@R3
		D = M
		
		@b
		M = D
		
		@POSITIVE
		0;JMP
		
(BZERO)
		@a
		D = M
		
		@R2
		M = D
		
		@END
		0;JMP
	
(EQUAL)
		@b
		D = M
		
		@R2
		M = D
		
		@END
		0;JMP

(END)
        @END
        0;JMP	