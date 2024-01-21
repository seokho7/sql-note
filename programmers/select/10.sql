-- 서울에 위치한 식당 목록 출력하기

SELECT
    RI.REST_ID,
    RI.REST_NAME,
    RI.FOOD_TYPE,
    RI.FAVORITES,
    RI.ADDRESS,
    ROUND(AVG(RR.REVIEW_SCORE),2) AS SCORE
FROM
    REST_INFO   AS  RI
INNER JOIN
    REST_REVIEW AS  RR
    ON  RI.REST_ID = RR.REST_ID
WHERE
    RI.ADDRESS LIKE '서울%'
GROUP BY
    RI.REST_ID
ORDER BY
    SCORE DESC,
    RI.FAVORITES DESC

/*
    '서울에 위치한 식당들' 키워드를 못봐서 한참을 헤맸다 ㅋㅋㅋ
    'LIKE 서울로 시작하는' 조건을 추가하여 해결
*/