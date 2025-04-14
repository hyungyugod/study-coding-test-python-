SELECT NAME, DATETIME
    FROM ANIMAL_INS I
    WHERE I.ANIMAL_ID NOT IN (SELECT ANIMAL_ID FROM ANIMAL_OUTS)
    ORDER BY I.DATETIME ASC
    FETCH FIRST 3 ROW ONLY;