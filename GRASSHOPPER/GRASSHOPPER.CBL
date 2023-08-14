       identification division.
       program-id. summation.
       data division.
       WORKING-STORAGE SECTION.
       linkage section.
       01  num          pic 9(4).
       01  result       pic 9(8).
       procedure division using num result.
           move 0 to result.
           COMPUTE RESULT = (NUM * (NUM + 1) / 2).
       end program summation.
