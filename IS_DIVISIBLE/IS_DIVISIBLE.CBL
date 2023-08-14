       IDENTIFICATION DIVISION.
       PROGRAM-ID. IS-DIVISIBLE.
       AUTHOR. AYSU ONER.
       DATA DIVISION.
       LINKAGE SECTION.
       01 N           PIC 9(8).
       01 X           PIC 9(8).
       01 Y           PIC 9(8).
       01 RESULT      PIC 9(1).
       PROCEDURE DIVISION USING N X Y RESULT.
           MOVE 0 TO RESULT.
           IF FUNCTION REM(N, X) = 0 AND FUNCTION REM(N, Y) = 0 THEN
               MOVE 1 TO RESULT
           END-IF.     
           GOBACK.
       END PROGRAM IS-DIVISIBLE.
