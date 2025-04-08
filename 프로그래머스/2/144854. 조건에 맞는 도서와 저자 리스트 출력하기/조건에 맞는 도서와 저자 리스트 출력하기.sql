SELECT B.BOOK_ID, A.AUTHOR_NAME, DATE_FORMAT(B.PUBLISHED_DATE, '%Y-%m-%d') AS PUBLISHED_DATE
    FROM AUTHOR A 
    JOIN BOOK B  ON A.AUTHOR_ID = B.AUTHOR_ID
    WHERE B.CATEGORY = '경제'
    ORDER BY PUBLISHED_DATE;