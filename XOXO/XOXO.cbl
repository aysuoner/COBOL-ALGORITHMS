       identification division.
       program-id. Xo.
      
       data division.
       WORKING-STORAGE SECTION.
       01 count-x     PIC 9(3).
       01 count-o     PIC 9(3).
       linkage section.
       01 s           pic a(100).
       01 result      pic 9.
      
       procedure division using s result.
           initialize result count-x count-o
           move 0 to result 
           INSPECT s TALLYING count-x  FOR ALL 'O' 'o'
           INSPECT s TALLYING count-o  FOR ALL 'X' 'x'
           IF count-o is EQUAL TO count-x
              move 1 to result 
           END-IF 
           goback.
       end program Xo.