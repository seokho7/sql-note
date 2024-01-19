-- 재구매가 일어난 상품과 회원 리스트 구하기

SELECT
    USER_ID,
    PRODUCT_ID
FROM
    ONLINE_SALE
GROUP BY
    USER_ID, PRODUCT_ID
HAVING
    COUNT(USER_ID) > 1
ORDER BY
    USER_ID, PRODUCT_ID DESC;

/*
    결과의 컬렴명은 USER_ID, PRODUCT_ID
    GROUP BY를 이용해 USER_ID 와 PRODUCT_ID 그룹을 만들어 준다. => 중복 제거됨
    USER_ID가 두 개 이상의 row가 있는 것들을 찾자 = HAVING COUNT(USER_ID) > 1
    USER_ID는 오름차순, PRODUCT_ID는 내림차순으로 정렬해준다.
*/