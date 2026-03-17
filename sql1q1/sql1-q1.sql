
--1
--a
SELECT  first_name, last_name 
  FROM  RoyHadad_Students;

--b
SELECT  name 
FROM    RoyHadad_Schools;

--c
SELECT s.score, e.field 
  FROM RoyHadad_Exams e
  JOIN RoyHadad_Scores s
    ON e.id = s.exam_id
 WHERE s.score > 55;

--d
SELECT first_name || ' ' || last_name AS full_name
  FROM RoyHadad_Students
 WHERE last_name LIKE 'ב%';

--e
SELECT first_name, last_name 
  FROM RoyHadad_Students
 ORDER BY first_name, last_name ASC;