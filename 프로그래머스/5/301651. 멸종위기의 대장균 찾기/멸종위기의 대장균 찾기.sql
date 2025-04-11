WITH RECURSIVE GEN AS (
    SELECT ID, PARENT_ID, 1 AS GN
        FROM ECOLI_DATA 
        WHERE PARENT_ID IS NULL
    
    UNION ALL
    
    SELECT E.ID, E.PARENT_ID, G.GN + 1 AS GN
        FROM ECOLI_DATA E
        JOIN GEN G ON G.ID = E.PARENT_ID -- 방금 거를 부모로 삼는 얘들만 연결된 표 만듦.
)

SELECT COUNT(*) AS COUNT, GN AS GENERATION
FROM GEN
WHERE ID NOT IN (
    SELECT DISTINCT PARENT_ID
    FROM ECOLI_DATA
    WHERE PARENT_ID IS NOT NULL
)
GROUP BY GN
ORDER BY GN ASC;