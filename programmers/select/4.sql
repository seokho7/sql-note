-- 12세 이하인 여자 환자 목록 출력하기

SELECT
    PT_NAME,
    PT_NO,
    GEND_CD,
    AGE,
    COALESCE(TLNO, 'NONE') AS TLNO
FROM
    PATIENT
WHERE
    AGE <= 12
    AND
    GEND_CD = 'W'
ORDER BY
    AGE DESC,
    PT_NAME ASC;

/*
    결과의 컬럼명은 PT_NAME, PT_NO, GEND_CD, AGE, TLNO
    12세 이하인 환자이면서, 성별이 여자인 친구들 where로 가져오고
    나이를 기준으로 내림차순, 나이가 같다면 환자 이름으로 오름차순 정렬
    그리고 휴대폰 번호가 없는 친구들은 => NULL 이면
    'NONE' 으로 내용 채워주기
*/