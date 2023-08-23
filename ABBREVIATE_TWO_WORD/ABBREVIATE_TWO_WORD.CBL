       identification division.
       program-id. AbbrevName.
       AUTHOR. aysu oner.
       data division.
       linkage section.
       01  s.
           05 s-length     pic 9(2).
           05 s-string.
              10 s-char       pic a occurs 0 to 50 times 
                                  depending on s-length.
       01  result.
           03 res-length pic 9(2).
           03 res-string.
              10 res pic a occurs 0 to 99 times depending on res-length.
      
       procedure division using s result.
            set res-length to 3
            move "." to res(2)
            unstring s-string delimited by spaces
              into res(1) res(3)
            end-unstring.
            move function upper-case(res-string) to res-string.
            goback.
       end program AbbrevName.
