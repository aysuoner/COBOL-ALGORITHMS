      ******************************************************************       
       IDENTIFICATION DIVISION.
       PROGRAM-ID.     SameCase.
       AUTHOR.        AYSU ONER.
       DATE-WRITTEN.  19/07/2023
       DATE-COMPILED. 19/07/2023
      ******************************************************************       
       DATA DIVISION.
       LINKAGE SECTION.
       01  A PIC X.
       01  B PIC X.
       01  RESULT  PIC S9(01).
      ******************************************************************       
       PROCEDURE DIVISION USING A B RESULT.
           EVALUATE TRUE
           WHEN (A IS NOT ALPHABETIC OR B IS NOT ALPHABETIC)
                  OR (A IS = SPACE OR B IS = SPACE)
               SET RESULT TO -1
           WHEN (A IS ALPHABETIC-UPPER AND B IS ALPHABETIC-UPPER)
                OR (A IS ALPHABETIC-LOWER AND B IS ALPHABETIC-LOWER)
              SET RESULT TO 1
           WHEN OTHER
              SET RESULT to 0
           END-EVALUATE.   
           goback.
       end program SameCase.
      