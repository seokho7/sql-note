-- 즐겨찾기가 가장 많은 식당 정보 출력하기

SELECT A.FOOD_TYPE AS FOOD_TYPE
     , A.REST_ID   AS REST_ID
     , A.REST_NAME AS REST_NAME
     , A.FAVORITES AS FAVORITES
  FROM (
         SELECT FOOD_TYPE
              , REST_ID
              , REST_NAME
              , FAVORITES
           FROM REST_INFO
          GROUP BY REST_NAME
          ORDER BY FAVORITES DESC
       ) A
 GROUP BY FOOD_TYPE
 ORDER BY FOOD_TYPE DESC
