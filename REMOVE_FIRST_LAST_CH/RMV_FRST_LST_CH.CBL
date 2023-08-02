       identification division.
       program-id. removeChar.
       data division.

       linkage section.
       01  str.
           05 s-length     pic 9(2).
           05 s-char       pic x occurs 2 to 20 times 
                                  depending on s-length
                                  indexed by i.
       01  result.
           05 res-length   pic 9(2).
           05 res          pic x occurs 0 to 20 times 
                                 depending on res-length.
      
       procedure division using str result.     
           initialize res-length
           perform varying i from 2 by 1 until i = s-length
               add 1 to res-length
               move s-char(i) to res(res-length)
           end-perform.
       end program removeChar.
      