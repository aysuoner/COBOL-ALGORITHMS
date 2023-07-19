      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ToCamelCase.
       AUTHOR.        AYSU ONER.
       DATE-WRITTEN.  19/07/2023.
       DATE-COMPILED. 19/07/2023.
      ******************************************************************
       DATA DIVISION.
      *---- 
       WORKING-STORAGE SECTION.
       01  I        PIC 9(03).
       01  K        PIC 9(03).
       01  J        PIC 9(03).
       01  TXT-LEN  PIC 9(03).
       01  RES-LEN  PIC 9(03).
      *----
       LINKAGE SECTION.
       01  TXT         PIC X(100).
       01  RESULT      PIC A(100).
      ******************************************************************
       PROCEDURE DIVISION USING TXT RESULT.
           INITIALIZE RESULT.
           MOVE 1 TO J I.
           COMPUTE TXT-LEN = LENGTH OF TXT.
           PERFORM UNTIL I > TXT-LEN
              MOVE 0 TO K
              UNSTRING TXT DELIMITED BY '_' OR '-'
                 INTO RESULT (J:) *> DELIMIT GORENE KADAR EKLEME YAPTIM
                 COUNT IN K       *> EKLENEN STRING'IN UZUNLUGU
                 WITH POINTER I   *> DELIMETER'DAN SONRAKI YERI GOSTERIR
              END-UNSTRING
              IF I NOT > TXT-LEN *> SONA EKLEMEMESI ICIN KONTROL
              ADD K TO J       *> J'YI EKLENEN STR UZUNLUGUNA GETIRDIM
              ADD 1 TO J       *> EKLEYECEGIM UPPER ICIN J + 1
              STRING RESULT DELIMITED BY SPACE
                 FUNCTION UPPER-CASE (TXT(I:1)) DELIMITED BY  SIZE 
					  INTO RESULT
              END-STRING
              ADD 1 to I *> MANUAL OLARAK EKLEME YAPTIGIM ICIN I + 1
              END-IF
           END-PERFORM
           DISPLAY RESULT.
           GOBACK.
       END PROGRAM ToCamelCase.
