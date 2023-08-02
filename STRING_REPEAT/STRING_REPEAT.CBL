       identification division.
       program-id. RepeatStr.
       data division.
       linkage section.
       01  n               pic 9(2).
       01  s.
           05 s-length     pic 9(2).
           05 s-char       pic x occurs 0 to 50 times 
                                  depending on s-length.
       01  result.
           05 res-length   pic 9(4).
           05 res          pic x occurs 0 to 3000 times 
                                 depending on res-length.
      
       procedure division using n s result.    
           move 0 to res-length.
           perform N TIMES 
              move s-char(1:s-length) to res(res-length + 1: s-length)
              add s-length to res-length
           end-perform.
            goback.
       end program RepeatStr.
      