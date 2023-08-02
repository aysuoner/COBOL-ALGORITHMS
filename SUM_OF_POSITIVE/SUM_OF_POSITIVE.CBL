       IDENTIFICATION DIVISION.
       PROGRAM-ID. PositiveSum.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 I PIC 9(03).
       LINKAGE SECTION.
       01 arr.
          05 arr-length     PIC 9(3).
          05 xs             PIC S9(3) OCCURS 0 TO 100 TIMES 
                            DEPENDING ON arr-length.
       01 result            PIC 9(5).
       
       PROCEDURE DIVISION USING arr result.
           INITIALIZE result
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > arr-length
              IF XS(I) IS GREATER THAN ZERO 
                ADD xs(I) TO result
              END-IF
          END-PERFORM
           GOBACK.
       END PROGRAM PositiveSum.
