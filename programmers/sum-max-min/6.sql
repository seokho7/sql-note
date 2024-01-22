-- 중복 제거하기

SELECT COUNT(NAME) AS count
  FROM (
         SELECT NAME
           FROM ANIMAL_INS
          GROUP BY NAME
       ) A
