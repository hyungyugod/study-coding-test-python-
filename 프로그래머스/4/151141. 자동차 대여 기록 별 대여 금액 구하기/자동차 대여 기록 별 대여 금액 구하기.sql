SELECT 
    H.HISTORY_ID,
    ROUND(
        C.DAILY_FEE * (H.END_DATE - H.START_DATE + 1) 
        * NVL(1 - (CAST(REPLACE(DP.DISCOUNT_RATE, '%', '') AS DECIMAL(5,2)) / 100), 1)
    , 0) AS FEE
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY H
JOIN CAR_RENTAL_COMPANY_CAR C ON H.CAR_ID = C.CAR_ID
LEFT JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN DP 
    ON C.CAR_TYPE = DP.CAR_TYPE
    AND (
        (H.END_DATE-H.START_DATE + 1 >= 90 AND DP.DURATION_TYPE = '90일 이상')
        OR (H.END_DATE-H.START_DATE + 1 >= 30 AND H.END_DATE-H.START_DATE + 1 < 90 AND DP.DURATION_TYPE = '30일 이상')
        OR (H.END_DATE-H.START_DATE + 1 >= 7 AND H.END_DATE-H.START_DATE + 1 < 30 AND DP.DURATION_TYPE = '7일 이상')
    )
WHERE C.CAR_TYPE = '트럭'
ORDER BY FEE DESC, H.HISTORY_ID DESC;
