      *------------------
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SOLUTION.
       AUTHOR.         AYSU ONER.
       DATE-WRITTEN.   06/07/2023
       DATE-COMPILED.  06/07/2023.
      *------------------
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 TMP        PIC S9(8).
       LINKAGE SECTION.
       01 N           PIC S9(8).
       01 RESULT      PIC 9(8).
       PROCEDURE DIVISION USING  N RESULT.
           MOVE 1 TO TMP;
           MOVE 0 TO RESULT;
           IF N IS LESS THAN OR EQUAL TO 0
           GOBACK.
           PERFORM UNTIL TMP IS EQUAL TO N
              IF FUNCTION REM(TMP, 3) = 0 OR FUNCTION REM(TMP, 5) = 0
                 COMPUTE RESULT = RESULT + TMP;
              END-IF
              COMPUTE TMP = TMP + 1;
           END-PERFORM   
           GOBACK.
       END PROGRAM SOLUTION.