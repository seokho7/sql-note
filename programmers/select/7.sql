-- 흉부외과 또는 일반외과 의사 목록 출력하기

SELECT
    DR_NAME,
    DR_ID,
    MCDP_CD,
    DATE_FORMAT(HIRE_YMD, '%Y-%m-%d') AS HIRE_YMD
FROM
    DOCTOR
WHERE
    MCDP_CD = 'CS'
    OR
    MCDP_CD = 'GS'
ORDER BY
    HIRE_YMD DESC,
    DR_NAME;

 /*
     결과의 컬럼명은 DR_NAME, DR_ID, MCDP_CD, HIRE_YMD
     진료과(MCDP_CD) 가 흉부외과(CS)이거나 일반외과(GS) 인 의사들을
     고용일자(HIRE_YMD) 기준으로 내림차순,
     이름 기준으로 오름차순 정렬
 */