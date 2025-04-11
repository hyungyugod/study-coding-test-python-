WITH ONE AS(
    SELECT ID
        FROM ECOLI_DATA 
        WHERE PARENT_ID IS NULL),
TWO AS (SELECT ID
            FROM ECOLI_DATA 
            WHERE PARENT_ID IN (SELECT ID FROM ONE))

SELECT ID 
    FROM ECOLI_DATA 
    WHERE PARENT_ID IN (SELECT ID FROM TWO)
    ORDER BY ID ASC;