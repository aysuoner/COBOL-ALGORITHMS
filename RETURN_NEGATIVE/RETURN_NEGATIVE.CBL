       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAKE-NEGATIVE.
       AUTHOR. AYSU ONER.
       DATA DIVISION.
       LINKAGE SECTION.
       01 N           PIC S9(8).
       01 RESULT      PIC S9(8).
       PROCEDURE DIVISION USING N RESULT.
           MOVE N TO RESULT.
           IF RESULT > 0
              COMPUTE RESULT = RESULT * (-1)
           END-IF.
           GOBACK.
       END PROGRAM MAKE-NEGATIVE.
