       IDENTIFICATION DIVISION.
       PROGRAM-ID. BMI.
       DATA DIVISION.
       WORKING-STORAGE SECTION. 
       01 BMI PIC 9(8)V9(2).
       LINKAGE SECTION.
       01 WEIGHT           PIC 9(8).
       01 HEIGHT           PIC 9(8)V9(2).
       01 RESULT           PIC A(11).
       PROCEDURE DIVISION USING WEIGHT HEIGHT RESULT.
           INITIALIZE RESULT
           COMPUTE BMI = WEIGHT / (HEIGHT * HEIGHT)
           EVALUATE TRUE
              WHEN BMI <= 18.5
                 MOVE "Underweight" TO RESULT
              WHEN BMI <= 25.0
                 MOVE "Normal" TO RESULT
              WHEN BMI <= 30.0
                 MOVE "Overweight" TO RESULT
              WHEN BMI > 30
                 MOVE "Obese" TO RESULT
           END-EVALUATE
           GOBACK.
       END PROGRAM BMI.
