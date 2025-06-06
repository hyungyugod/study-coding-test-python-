WITH RE (HOUR)AS(
    SELECT 0 AS HOUR
        FROM DUAL
    
    UNION ALL
    
    SELECT HOUR + 1
        FROM RE
        WHERE HOUR < 23),

OUTS AS (
    SELECT TO_NUMBER(TO_CHAR(DATETIME, 'FMHH24')) AS HOUR, COUNT(*) AS COUNT
        FROM ANIMAL_OUTS 
        GROUP BY  TO_NUMBER(TO_CHAR(DATETIME, 'FMHH24')))
        
        
SELECT R.HOUR, NVL(O.COUNT, 0) AS COUNT
    FROM RE R
    LEFT JOIN OUTS O ON R.HOUR = O.HOUR
    ORDER BY R.HOUR ASC;
    