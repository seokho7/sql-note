-- 3월에 태어난 여성 회원 목록 출력하기

SELECT
    MEMBER_ID,
    MEMBER_NAME,
    GENDER,
    DATE_FORMAT(DATE_OF_BIRTH, '%Y-%m-%d') DATE_OF_BIRTH
FROM
    MEMBER_PROFILE
WHERE
    TLNO IS NOT NULL
    AND
    MONTH(DATE_OF_BIRTH) = '03'
    AND
    GENDER = 'W'
ORDER BY
    MEMBER_ID;

   /*
        결과의 컬럼명은 MEMBER_ID, MEMBER_NAME, GENDER, DATE_OF_BIRTH
        휴대폰 번호(TLNO) 가 공백이 아니면서,
        생일(DATE_OF_BIRTH)이 3월 이면서,
        성별(GENDER)가 여자인 회원들을
        오름차순으로 정렬
   */