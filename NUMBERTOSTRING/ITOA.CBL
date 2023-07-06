      *------------------
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ITOA.
       AUTHOR.         AYSU ONER.
       DATE-WRITTEN.   06/07/2023
       DATE-COMPILED.  06/07/2023.
      *------------------
       DATA DIVISION.
       LINKAGE SECTION.
       01 INPUT-VAR               PIC 9(06).
       01 RESULT                  PIC X(07).
       01 STR REDEFINES INPUT-VAR PIC X(06).
      *------------------
       PROCEDURE DIVISION USING INPUT-VAR RESULT.
           MOVE STR TO RESULT.
           DISPLAY RESULT.
           GOBACK.
       END PROGRAM ITOA.