SELECT COUNT(NAME) AS count
  FROM (
         SELECT NAME
           FROM ANIMAL_INS
          GROUP BY NAME
       ) A
