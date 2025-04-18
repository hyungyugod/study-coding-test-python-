SELECT I.YEAR, (J.MAXS-I.SIZE_OF_COLONY) AS YEAR_DEV, I.ID
    FROM (SELECT ID, SIZE_OF_COLONY, YEAR(DIFFERENTIATION_DATE) AS YEAR
            FROM ECOLI_DATA) I
    JOIN (SELECT MAX(SIZE_OF_COLONY) AS MAXS, YEAR(DIFFERENTIATION_DATE) AS YEAR -- MAX 열을 만들어서 원본 테이블과 합쳐버린다.
            FROM ECOLI_DATA
            GROUP BY YEAR(DIFFERENTIATION_DATE)) J 
        ON I.YEAR = J.YEAR
    ORDER BY I.YEAR ASC, YEAR_DEV ASC;









        
        
        