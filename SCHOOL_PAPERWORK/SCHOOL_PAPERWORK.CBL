       identification division.
       program-id. schoolPaperwork.      
       data division.
       linkage section.
       01  n         pic s9(3).
       01  m         pic s9(3).      
       01  result    pic 9(5).
       procedure division using n m result.
           INITIALIZE RESULT.
           IF (M > 0 AND N > 0)
              COMPUTE RESULT = M * N;
           END-IF.
           goback.
       end program schoolPaperwork.
      