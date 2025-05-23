WITH SUMAT AS(
SELECT PRODUCT_ID, SUM(AMOUNT) AS SUMA
    FROM FOOD_ORDER 
    WHERE TO_CHAR(PRODUCE_DATE, 'YYYY-MM') = '2022-05'
    GROUP BY PRODUCT_ID)


SELECT P.PRODUCT_ID, P.PRODUCT_NAME, S.SUMA * P.PRICE AS TOTAL_SALES
    FROM FOOD_PRODUCT P
    JOIN SUMAT S ON P.PRODUCT_ID = S.PRODUCT_ID
    ORDER BY TOTAL_SALES DESC, P.PRODUCT_ID ASC;