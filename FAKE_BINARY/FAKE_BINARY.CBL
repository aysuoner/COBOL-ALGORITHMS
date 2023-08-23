       identification division.
       program-id. fakeBinary.    
       data division.
       linkage section.
       01  x.             
           03 x-length     pic 99.
           03 x-chars.    
               05 x-char   pic x occurs 0 to 30 times
                                depending on x-length
                                indexed i.
       01  result.
           03 res-length   pic 99.
           03 res-chars.
               05 res-char pic x occurs 0 to 30 times
                                 depending on res-length.  
       procedure division using x result.
           PERFORM VARYING i From 1 by 1 until i > x-length
                ADD 1 to res-length
               IF x-char(i) < 5
                 move 0 to res-char(i)
               ELSE 
                 move 1 to res-char(i)
               END-IF
           END-PERFORM.
           goback.
       end program fakeBinary.
      