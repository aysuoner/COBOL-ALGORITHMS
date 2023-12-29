       identification division.
       program-id. makeUpperCase.     
       data division.
       linkage section.
       01  s.             
           03 s-length     pic 9(3).
           03 s-chars.    
               05 s-char   pic x occurs 1 to 100 times
                                depending on s-length. 
       01  result.
           03 res-length   pic 9(3).
           03 res-chars.
               05 res-char pic x occurs 1 to 100 times
                                 depending on res-length.    
       procedure division using s result.
           Move Function Upper-case(s) to result 
           goback.
       end program makeUpperCase.
      