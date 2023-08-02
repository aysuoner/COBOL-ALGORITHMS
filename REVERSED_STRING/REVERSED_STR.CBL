       identification division.
       program-id. solution.

       data division.
       working-storage section.
       01  i           pic 99.
       linkage section.
       01  str.
           05 len      pic 99.
           05 chars    pic a(30).
       01  result.
           05 len      pic 99.
           05 chars    pic a(30).

       procedure division using str result.
           move len of str to len of result
           perform varying i from 1 by 1 until i > len of str
               move chars of str(i:1) 
                 to chars of result(len of str - i + 1:1)
           end-perform.
       end program solution.