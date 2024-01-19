-- 평균 일일 대여 요금 구하기
SELECT
    ROUND(AVG(DAILY_FEE)) AS AVERAGE_FEE
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = 'SUV';

/*
    결과의 컬럼명은 AVERAGE_FEE
    DAILY_FEE(일일 대여 요금)의 평균 = AVG(DAILY_FEE)
    근데 그러면 소수점으로 떨어지니까 반올림 해준다.
*/