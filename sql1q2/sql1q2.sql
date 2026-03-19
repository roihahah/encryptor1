--2
--a
SELECT students.first_name, students.last_name
  FROM Roy_Hadad_Students students
  JOIN Roy_Hadad_Schools schools
    ON schools.id = students.school_id
 ORDER BY schools.name, students.first_name, students.last_name;

--b
SELECT s.score, e.exam_date
  FROM Roy_Hadad_Exams e
  JOIN Roy_Hadad_Scores s
    ON e.id = s.exam_id
 WHERE e.exam_date >= TO_DATE('1995-01-01');

--c
SELECT students.first_name, students.last_name
  FROM Roy_Hadad_Students students
  JOIN Roy_Hadad_Schools schools
    ON schools.id = students.school_id
  JOIN Roy_Hadad_Settlements settlements
    ON settlements.id = schools.settlement_id
 WHERE schools.name = 'בית הספר הריאלי' AND settlements.name = 'חיפה';

--d
SELECT schools.id, schools.name
  FROM Roy_Hadad_Schools schools
  JOIN Roy_Hadad_Settlements settlements
    ON schools.settlement_id = settlements.id
  JOIN Roy_Hadad_Areas areas
    ON areas.id = settlements.area_id
 WHERE areas.name = 'מרכז';

--e
SELECT areas.name, settlements.name, schools.name
  FROM Roy_Hadad_Schools schools
  JOIN Roy_Hadad_Settlements settlements
    ON settlements.id = schools.settlement_id
  JOIN Roy_Hadad_Areas areas
    ON areas.id = settlements.area_id;

--f
SELECT students.id, students.first_name, students.last_name, AVG(scores.score) AS average_score
  FROM Roy_Hadad_Students students
  JOIN Roy_Hadad_Scores scores
    ON scores.student_id = students.id
 WHERE students.first_name = 'דפנה'
 GROUP BY students.id, students.first_name, students.last_name;
 
 --g
SELECT schools.name, students.first_name, students.last_name, exams.field, scores.score
  FROM Roy_Hadad_Students students
  JOIN Roy_Hadad_Schools schools
    ON students.school_id = schools.id
  JOIN Roy_Hadad_Settlements settlements
    ON settlements.id = schools.settlement_id
  JOIN Roy_Hadad_Areas areas
    ON areas.id = settlements.area_id
  JOIN Roy_Hadad_Scores scores
    ON students.id = scores.student_id
  JOIN Roy_Hadad_Exams exams
    ON exams.id = scores.exam_id
 WHERE areas.name = 'צפון';