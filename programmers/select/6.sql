-- 인기있는 아이스크림

SELECT
    FLAVOR
FROM
    FIRST_HALF
ORDER BY
    TOTAL_ORDER DESC,
    SHIPMENT_ID;

/*
    결과의 컬럼명은 FLAVOR
    총 주문량(TOTAL_ORDER) 을 기준으로 내림차순,
    출하 번호(SHIPMENT_ID) 를 기준으로 오름차순 정렬
*/