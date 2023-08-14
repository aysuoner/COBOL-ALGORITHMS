       identification division.
       program-id. Digitize.
       AUTHOR. AYSU ONER.
       data division.
       WORKING-STORAGE SECTION.
       01  REM PIC 9(01).
       linkage section.
       01  n pic 9(38).
       01  result.
           05 res-length     pic 9(2).
           05 res            pic 9 occurs 1 to 38 times 
                                   depending on res-length.

       procedure division using n result.
           initialize result
           if  n = 0 then 
              add 1 to res-length
              move 0 to res(res-length) 
              goback
           end-if 
           PERFORM UNTIL N = 0
              COMPUTE REM = FUNCTION REM(N, 10)
              MOVE REM TO result (res-length:)
              COMPUTE N = N / 10
           END-PERFORM.
           goback.
       end program Digitize.
