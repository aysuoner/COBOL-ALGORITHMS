       IDENTIFICATION DIVISION.
       PROGRAM-ID. LOVEFUNC.
       DATA DIVISION.
       WORKING-STORAGE SECTION. 
       01 MOD-1           PIC 9(1).
       01 MOD-2           PIC 9(1).
       LINKAGE SECTION.
       01 FLOWER1           PIC 9(8). *>1
       01 FLOWER2           PIC 9(8). *>4
       01 RESULT            PIC 9.
       PROCEDURE DIVISION USING flower1 flower2 RESULT.
           INITIALIZE MOD-1 MOD-2
           COMPUTE MOD-1 = FUNCTION REM(FLOWER1 , 2) 
           COMPUTE MOD-2 = FUNCTION REM(FLOWER2 , 2)
           IF MOD-1 IS EQUAL TO MOD-2
              MOVE 0 TO RESULT 
           ELSE
              MOVE 1 TO RESULT
           END-IF 
           GOBACK.
       END PROGRAM LOVEFUNC.
