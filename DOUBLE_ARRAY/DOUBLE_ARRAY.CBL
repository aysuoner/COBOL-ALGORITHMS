       identification division.
       program-id. Maps.
       AUTHOR. aysu oner
       data division.
       linkage section.
       01  arr.
           05 arrLength     pic 9(4).
           05 xs            pic s9(4)  occurs 0 to 1000 times 
                                       depending on arrLength
                                       indexed by i.
       01  result.
           05 resLength     pic 9(4).
           05 res           pic s9(4) occurs 0 to 1000 times 
                                      depending on resLength.
      
       procedure division using arr result.
           initialize result
           PERFORM VARYING i FROM 1 BY 1 UNTIL i > arrLength
              ADD 1 TO resLength
              COMPUTE res(resLength:) = 2 * xs(i)
           END-PERFORM
           goback.
       end program Maps.
