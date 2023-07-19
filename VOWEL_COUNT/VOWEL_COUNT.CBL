       IDENTIFICATION DIVISION.
       PROGRAM-ID.  vowelCount.
       AUTHOR. AYSU ONER. 
       DATE-WRITTEN. 19/07/2023.
       DATE-COMPILED. 19/07/2023.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  X PIC 9(02).
       LINKAGE SECTION.
       01  S.
           03 S-LNGTH    PIC 9(02).
           03 S-CHAR      PIC X(50).
       01  RESULT PIC 9(02).
       PROCEDURE DIVISION USING S RESULT.
           MOVE 0 TO RESULT.
           PERFORM VARYING X FROM 1 BY 1 UNTIL X > S-LNGTH 
              IF S-CHAR(X:1) IS = 'e' OR 'a' OR 'i' OR 'o' OR 'u'
                 ADD 1 TO RESULT
              END-IF
           END-PERFORM.
           goback.
       end program vowelCount.
