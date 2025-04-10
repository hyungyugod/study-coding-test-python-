WITH J AS(
SELECT FLAVOR, SUM(TOTAL_ORDER) AS TOTAL_ORDER
    FROM JULY
    GROUP BY FLAVOR)
    
SELECT H.FLAVOR
    FROM FIRST_HALF H
    JOIN J ON H.FLAVOR = J.FLAVOR
    ORDER BY H.TOTAL_ORDER + J.TOTAL_ORDER DESC
    LIMIT 3;