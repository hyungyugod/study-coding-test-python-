SELECT 
    C.CAR_ID,
    C.CAR_TYPE,
    ROUND(
        C.DAILY_FEE * (1 - CAST(REPLACE(DP.DISCOUNT_RATE, '%', '') AS DECIMAL(5, 2)) / 100) * 30
    , 0) AS FEE
FROM CAR_RENTAL_COMPANY_CAR C
JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN DP 
    ON C.CAR_TYPE = DP.CAR_TYPE
    AND DP.DURATION_TYPE = '30일 이상'
WHERE C.CAR_TYPE IN ('세단', 'SUV')
  -- 11월 동안 대여가 겹치지 않는 차량만
  AND C.CAR_ID NOT IN (
      SELECT DISTINCT H.CAR_ID
      FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY H
      WHERE NOT (H.END_DATE < '2022-11-01' OR H.START_DATE > '2022-11-30')
  )
  -- 요금 필터링
  AND ROUND(
        C.DAILY_FEE * (1 - CAST(REPLACE(DP.DISCOUNT_RATE, '%', '') AS DECIMAL(5, 2)) / 100) * 30
    , 0) >= 500000
  AND ROUND(
        C.DAILY_FEE * (1 - CAST(REPLACE(DP.DISCOUNT_RATE, '%', '') AS DECIMAL(5, 2)) / 100) * 30
    , 0) < 2000000
ORDER BY FEE DESC, C.CAR_TYPE ASC, C.CAR_ID DESC;





        
