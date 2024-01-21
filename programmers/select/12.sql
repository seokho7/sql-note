-- 조건에 맞는 회원수 구하기

SELECT
    COUNT(USER_ID) AS USERS
FROM
    USER_INFO
WHERE
    YEAR(JOINED) = '2021'
    AND
    20 <= AGE
    AND
    AGE <= 29;