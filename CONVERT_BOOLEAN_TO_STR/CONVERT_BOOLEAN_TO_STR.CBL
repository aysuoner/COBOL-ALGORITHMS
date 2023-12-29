       identification division.
       program-id. BooleanToString.
       data division.
       linkage section.
       01 b           pic 9.
          88 bool     value 1.
       01 result      pic a(5).
      
       procedure division using b result.
           initialize result
           IF bool
              MOVE "true" TO RESULT
           ELSE
              MOVE "false" TO RESULT
           END-IF
           goback.
       end program BooleanToString.
      