      *------------------------------
       IDENTIFICATION DIVISION.
      *------------------------------
       PROGRAM-ID. FINALGRADE.
       AUTHOR. AYSU ONER.
       DATE-WRITTEN. 01-08-2023.
       DATE-COMPILED. 01-08-2023.
      *------------------------------
       DATA DIVISION.
      *------------------------------
       LINKAGE SECTION.
       01 PROJECTS PIC 9(2).
       01 EXAM     PIC 9(3).
       01 RESULT   PIC 9(3).
      *------------------------------
       PROCEDURE DIVISION USING EXAM PROJECTS RESULT.
      *------------------------------
       FINALGRADE-CALCU.
           EVALUATE TRUE
             WHEN EXAM > 90 OR PROJECTS IS GREATER THAN 10
                 MOVE 100 TO RESULT
             WHEN EXAM > 75
               IF PROJECTS IS GREATER THAN OR EQUAL TO 5
                 MOVE 90 TO RESULT
             WHEN EXAM > 50
               IF PROJECTS IS GREATER THAN OR EQUAL TO 2
                 MOVE 75 TO RESULT
             WHEN OTHER
               MOVE 0 TO RESULT
           END-EVALUATE.
       FINALGRADE-CALCU-END. EXIT.
		
           DISPLAY RESULT.
           GOBACK.
       END PROGRAM FINALGRADE.