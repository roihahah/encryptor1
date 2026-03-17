--2
--a
SELECT students.first_name , students.last_name
  FROM RoyHadad_Students students
  JOIN RoyHadad_Schools schools
    ON schools.id = students.school_id
 ORDER BY schools.name , students.first_name , students.last_name;

--b
SELECT s.score , e.exam_date
  FROM RoyHadad_Exams e
  JOIN RoyHadad_Scores s
    ON e.id = s.exam_id
 WHERE e.exam_date >= DATE '1995-01-01';

--c
SELECT students.first_name , students.last_name
  FROM RoyHadad_Students students
  JOIN RoyHadad_Schools schools
    ON schools.id = students.school_id
  JOIN RoyHadad_Settlements settlements
    ON settlements.id = schools.settlement_id
 WHERE schools.name = 'בית הספר הריאלי' AND settlements.name = 'חיפה';

--d
SELECT schools.id , schools.name
  FROM RoyHadad_Schools schools
  JOIN RoyHadad_Settlements settlements
    ON schools.settlement_id = settlements.id
 WHERE settlements.area = 'מרכז';

--e
SELECT settlements.area, settlements.name , schools.name
  FROM RoyHadad_Schools schools
  JOIN RoyHadad_Settlements settlements
    ON settlements.id = schools.settlement_id;

--f
SELECT students.id , students.first_name , students.last_name , AVG(scores.score) AS average_score
  FROM RoyHadad_Students students
  JOIN RoyHadad_Scores scores
    ON scores.student_id = students.id
 WHERE students.first_name = 'דפנה'
 GROUP BY students.id , students.first_name , students.last_name;
 
 --g
 SELECT schools.name , students.first_name , students.last_name , exams.field , scores.score
FROM RoyHadad_Students students
JOIN RoyHadad_Schools schools
    ON students.school_id = schools.id
JOIN RoyHadad_Settlements settlements
    ON settlements.id = schools.settlement_id
JOIN RoyHadad_Scores scores
    ON students.id = scores.student_id
JOIN RoyHadad_Exams exams
    ON exams.id = scores.exam_id
WHERE settlements.area = 'צפון';