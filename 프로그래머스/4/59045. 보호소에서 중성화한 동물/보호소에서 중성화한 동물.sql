WITH INTACTANI AS (
SELECT ANIMAL_ID, ANIMAL_TYPE, NAME
    FROM ANIMAL_INS
    WHERE INSTR(SEX_UPON_INTAKE, 'Intact') > 0)


SELECT I.ANIMAL_ID, I.ANIMAL_TYPE, I.NAME
    FROM ANIMAL_OUTS O 
    JOIN INTACTANI I ON O.ANIMAL_ID = I.ANIMAL_ID 
    WHERE INSTR(O.SEX_UPON_OUTCOME, 'Neutered') > 0 OR INSTR(O.SEX_UPON_OUTCOME, 'Spayed')> 0
    ORDER BY I.ANIMAL_ID;