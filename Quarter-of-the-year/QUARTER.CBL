      *-------------------
       IDENTIFICATION DIVISION.
       PROGRAM-ID.  QUARTERYEAR.
       AUTHOR. AYSU ONER.
       DATE-WRITTEN.  01/07/2023.
       DATE-COMPILED. 01/07/2023.
      *-------------------
       DATA DIVISION.
       LINKAGE SECTION.
       01 MONTH  PIC 9(2).
       01 RESULT PIC 9(1).
      *-------------------
       PROCEDURE DIVISION USING MONTH RESULT.
           EVALUATE TRUE
              WHEN MONTH <= 3
                 MOVE 1 TO RESULT
              WHEN MONTH <= 6
                 MOVE 2 TO RESULT
              WHEN MONTH <= 9
                 MOVE 3 TO RESULT
              WHEN MONTH <= 12
                 MOVE  4 TO RESULT
           END-EVALUATE.
           GOBACK.
       END PROGRAM QUARTERYEAR.
