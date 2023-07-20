       identification division.
       program-id. row-sum-odd-numbers.
       data division.
       WORKING-STORAGE SECTION.
       linkage section.
       01 n            pic 9(8).
       01 result       pic 9(8).
       procedure division using n result.
           COMPUTE result = N **3.
           goback.
       end program row-sum-odd-numbers.
      
