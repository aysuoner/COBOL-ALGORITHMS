       IDENTIFICATION DIVISION.
       PROGRAM-ID. CENTURY.
       AUTHOR.  AYSU ONER.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 REM    PIC 9(02).
       LINKAGE SECTION.
       01 YEAR         PIC 9(05).
       01 RESULT       PIC 9(08).
       PROCEDURE DIVISION USING YEAR RESULT.
           DIVIDE YEAR BY 100 GIVING RESULT REMAINDER REM.
           IF REM IS GREATER THAN ZERO 
              ADD 1 TO RESULT.
           Goback.
       END PROGRAM CENTURY.
