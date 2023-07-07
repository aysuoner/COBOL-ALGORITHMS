      **************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID.  IsIsogram.
       AUTHOR. AYSU ONER. 
       DATE-WRITTEN. 07/07/2023. 
       DATE-COMPILED. 07/07/2023.
      **************************
       DATA DIVISION.
       LINKAGE SECTION.
       01  S.
           05 LEN  PIC 9(2).
           05 CHR  OCCURS 0 TO 45 TIMES 
                        DEPENDING ON LEN INDEXED BY I.
              10 D PIC A.
       01  RESULT  PIC 9.
      **************************
       PROCEDURE DIVISION USING S RESULT.
           MOVE FUNCTION LOWER-CASE (S) to S.
           SORT CHR ASCENDING KEY D.
           MOVE 1 TO RESULT.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > LEN - 1
             IF CHR(I) = CHR(I + 1) THEN
              MOVE 0 TO RESULT
             END-IF
           END-PERFORM.
           GOBACK.
       END PROGRAM IsIsogram.
