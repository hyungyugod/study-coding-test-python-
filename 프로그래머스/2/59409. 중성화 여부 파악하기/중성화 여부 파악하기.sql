SELECT ANIMAL_ID, NAME,
        CASE 
            WHEN INSTR(SEX_UPON_INTAKE,'Neutered') > 0
                OR INSTR(SEX_UPON_INTAKE,'Spayed') > 0 THEN 'O'
            ELSE 'X'
            END AS 중성화
        FROM ANIMAL_INS 
        ORDER BY ANIMAL_ID;