       identification division.
       program-id. DNAtoRNA.

       data division.
       linkage section.
       01  dna.
           03 dna-length     pic 9(3).
           03 nucleotids.
               05 nucleotid pic a occurs 0 to 300 times 
                              depending on dna-length.
       01  result.
           03 res-length      pic 9(3).
           03 nucleotids.
               05 nucleotid pic a occurs 0 to 300 times 
                              depending on res-length.

       procedure division using dna result.
           INSPECT nucleotids IN dna
           REPLACING ALL 'T' BY 'U'.
           MOVE dna to result.
           goback.
       end program DNAtoRNA.
      