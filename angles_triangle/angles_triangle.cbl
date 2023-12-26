      *------------------
       IDENTIFICATION DIVISION.
       program-id. other-angle.
       AUTHOR.         AYSU ONER.
       DATE-WRITTEN.   06/07/2023
       DATE-COMPILED.  06/07/2023.
      *------------------
       data division.
       linkage section.
       01 angle-a       pic 9(3).
       01 angle-b       pic 9(3).
       01 angle-c       pic 9(3).
       procedure division using angle-a angle-b angle-c.
           move 0 to angle-c.
           COMPUTE angle-c = 180 - (angle-a + angle-b).
       end program other-angle.
       