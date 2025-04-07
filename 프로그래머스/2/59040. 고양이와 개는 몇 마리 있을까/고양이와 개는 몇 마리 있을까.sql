SELECT ANIMAL_TYPE, COUNT(ANIMAL_TYPE) AS count
    FROM ANIMAL_INS 
    GROUP BY ANIMAL_TYPE
    HAVING ANIMAL_TYPE IN ('DOG', 'CAT')
    ORDER BY ANIMAL_TYPE ASC;