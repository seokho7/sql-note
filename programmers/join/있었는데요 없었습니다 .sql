SELECT A_OUT.ANIMAL_ID
     , A_OUT.NAME
  FROM ANIMAL_INS AS A_IN
  JOIN ANIMAL_OUTS AS A_OUT
    ON A_IN.ANIMAL_ID = A_OUT.ANIMAL_ID
 WHERE A_IN.DATETIME > A_OUT.DATETIME
 ORDER BY A_IN.DATETIME
