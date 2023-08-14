       identification division.
       program-id. square-sum.
       data division.
       WORKING-STORAGE SECTION.
       01  TEMP PIC 9(4).
       linkage section.
       01  arr.
           05 arr-length   pic s99.
           05 xs           pic s99 occurs 0 to 10 times 
                                     depending on arr-length
                                      INDEXED BY I.
       01 result           pic 9(8).
      
       procedure division using arr result.
           perform varying I from 1 by 1 until I > arr-length
              MOVE 0 TO TEMP
              COMPUTE TEMP = XS(I) ** 2
              ADD TEMP TO RESULT
           END-PERFORM.
           goback.
       end program square-sum.
