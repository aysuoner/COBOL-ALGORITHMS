      *------------------
       IDENTIFICATION DIVISION.
       PROGRAM-ID. LEAPYEAR.
       AUTHOR. AYSU ONER.
       DATE-WRITTEN. 03/07/2023.
       DATE-COMPILED. 03/07/2023.
      *------------------
       DATA DIVISION.
       LINKAGE SECTION.
       01 YEAR          PIC 9(8).
       01 RESULT        PIC 9.
      *------------------
       PROCEDURE DIVISION USING YEAR RESULT.
           MOVE 0 TO RESULT.
           IF  FUNCTION REM(YEAR, 4) = 0
               IF ((FUNCTION  REM(YEAR, 100) = 0 AND 
                  FUNCTION  REM(YEAR, 400) IS NOT ZERO) 
                  OR
                  (FUNCTION  REM(YEAR, 400) = 0 AND 
                  FUNCTION  REM(YEAR, 4000) = 0 )) THEN
                  MOVE 0 TO RESULT
               ELSE
                  MOVE 1 TO RESULT
               END-IF
           END-IF.
           GOBACK.
       END PROGRAM LEAPYEAR.
      *------------------

      *REM FUNCTION SYNTAX
      *The REM function works like the MOD function.
      *FUNCTION REM (dividend, divisor)