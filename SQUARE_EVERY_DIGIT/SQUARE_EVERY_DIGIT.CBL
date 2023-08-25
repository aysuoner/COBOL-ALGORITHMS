       IDENTIFICATION DIVISION.
       PROGRAM-ID. SQUARE-DIGITS.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  RM          PIC 9(1).
       01  COUNT-RES   PIC 9(20).
       LINKAGE SECTION.
       01 N           PIC 9(10).
       01 RESULT      PIC 9(20).
       PROCEDURE DIVISION USING N RESULT.
           MOVE 1 TO COUNT-RES
           MOVE 0 TO RESULT 
           PERFORM UNTIL N = 0
              MOVE 0 TO RM
              DIVIDE N BY 10 GIVING N REMAINDER RM
              COMPUTE RESULT = RESULT + ((RM * RM) * COUNT-RES)
              IF RM IS LESS THAN 4
                 COMPUTE COUNT-RES = COUNT-RES * 10
               ELSE
                 COMPUTE COUNT-RES = COUNT-RES * 100
              END-IF
           END-PERFORM.
           Goback.
       END PROGRAM SQUARE-DIGITS.