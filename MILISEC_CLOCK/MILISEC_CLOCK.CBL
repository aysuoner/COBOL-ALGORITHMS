       IDENTIFICATION DIVISION.
       PROGRAM-ID. PAST.
       DATA DIVISION.
       LINKAGE SECTION.
       01 H        PIC 9(02).
       01 M        PIC 9(02).
       01 S        PIC 9(02).
       01 millis   PIC 9(08).
       PROCEDURE DIVISION USING H M S millis.
           COMPUTE millis = (H * 3600000) + (M * 60000) + (S * 100)
           GOBACK.
       END PROGRAM PAST.
