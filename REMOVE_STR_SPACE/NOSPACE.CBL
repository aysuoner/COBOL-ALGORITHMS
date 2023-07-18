       identification division.
       program-id. NoSpace.
       DATE-WRITTEN.  18/07/2023.
       DATE-COMPILED. 18/07/2023.
       data division.
       working-storage section.
       01  i           pic 99.
       linkage section.
       01  strng.
           05 slen      pic 99.
           05 chars    pic x(80).
       01  result.
           05 rlen      pic 99.
           05 chars    pic x(80).
       procedure division using strng result.
           initialize result
           perform varying i from 1 by 1 until i > slen
             if chars of strng(i:1) NOT = ' '
              add 1 to rlen
              move chars of strng(i:1) to chars of result(rlen:)
             end-if
           end-perform.
           goback.
       end program NoSpace.