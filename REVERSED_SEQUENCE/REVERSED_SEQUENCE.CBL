       identification division.
       program-id. ReverseSeq.
       data division.
       linkage section.
       01  n  pic 9(6).
       01  result.
           05 res-length     pic 9(6).
           05 res            pic 9(6) occurs 0 to 800000 times 
                                     depending on res-length.
      
       procedure division using n result.      
           initialize res-length
           perform varying n from n by -1 until n = 0
              add 1 to res-length
              move n to res(res-length)
          end-perform.  
       end program ReverseSeq.