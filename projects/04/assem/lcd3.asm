 @R2
 M=0
 
 @R1
 D=M
 @IFR1EQ0
 D, JEQ
 
 @R17 
 M=D
 
 @R0
 D = M
 @IFR0EQ0
 D ,JEQ
 
 @R16
 M = D  
(LOOP)
 @R1
 D = D - M
 @MODULO
 D, JLT
 @EVENDIV
 D, JEQ 
 @LOOP
 0, JMP
 
(MODULO)
 @R1
 D = D + M
 @R3
 M = D
 @R1
 D = M
 @R0
 M = D
 @R3
 D = M
 @R1
 M = D
 @R0
 D = M
 @LOOP
 0,JMP
(EVENDIV)
 @R1
 D = M
 @R2
 M = D
 @R16
 D=M
 @R0
 M=D
 @R17
 D=M
 @R1
 M=D
 @END
 0, JMP
(IFR0EQ0)
@R1
 D=M
 @R2
 M=D
 @END
 0, JMP
(IFR1EQ0)
 @R0
 D=M
 @R2
 M=D
 @END
 0, JMP
(END)
 @END
 0, JMP