WITH FI AS( SELECT FISH_TYPE, CASE
                    WHEN LENGTH IS NULL THEN 10
                    ELSE LENGTH
                    END AS LEN
                FROM FISH_INFO 
)

SELECT COUNT(FISH_TYPE) AS FISH_COUNT, MAX(LEN) AS MAX_LENGTH, FISH_TYPE
    FROM FI
    GROUP BY FISH_TYPE
    HAVING AVG(LEN) >= 33
    ORDER BY FISH_TYPE ASC;
