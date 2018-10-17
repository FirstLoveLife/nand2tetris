(START)
    @16384
    D=A  //D = 16483, which is screen
    @0
    M=D	//RAM0 is location of screen
    @24576
    D=M
    @COLOR
    D;JGT
    @UNCOLOR
    D;JEQ
(COLOR)
    @1
    M=-1
    @LOOP
    0;JMP
(UNCOLOR)
    @1
    M=0
    @LOOP
    0;JMP
(LOOP)
    @1
    D=M	//D CONTAINS COLOR OR UNCOLOR

    @0
    A=M	//Paint
    M=D
    
    @0
    D=M+1
    @24576
    D=A-D //SCREEN starts at 16384, ends with 24576(32*256 = 8192 == 24576 - 16384)

    @0
    M=M+1
    A=M

    @LOOP
    D;JGT
    @START
    0;JMP
