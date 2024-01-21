-- 조건에 맞는 도서 리스트 출력하기

SELECT
    BOOK_ID,
    DATE_FORMAT(PUBLISHED_DATE, '%Y-%m-%d') AS PUBLISHED_DATE
FROM
    BOOK
WHERE
    YEAR(PUBLISHED_DATE) = '2021'
    AND
    CATEGORY = '인문'
ORDER BY
    BOOK_ID DESC;

/*
    결과의 컬럼명은 BOOK_ID, PUBLISHED_DATE
    2021년도 이면서, CATEGORY가 '인문' 인 컬럼들을 추려내고
    날짜 출력 형식이 yyyy-mm-dd 이므로 DATE_FORMAT 함수로 해당 포맷을 맞춰준다.
*/