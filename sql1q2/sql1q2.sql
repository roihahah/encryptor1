--2
--a
SELECT students.first_name, students.last_name
  FROM roy_hadad_students students
  JOIN roy_hadad_schools schools
    ON schools.id = students.school_id
 ORDER BY schools.name, students.first_name, students.last_name;

--b
SELECT s.score, e.exam_date
  FROM roy_hadad_exams e
  JOIN roy_hadad_scores s
    ON e.id = s.exam_id
 WHERE e.exam_date >= TO_DATE('1995-01-01' , 'YYYY-MM-DD');

--c
SELECT students.first_name, students.last_name
  FROM roy_hadad_students students
  JOIN roy_hadad_schools schools
    ON schools.id = students.school_id
  JOIN roy_hadad_settlements settlements
    ON settlements.id = schools.settlement_id
 WHERE schools.name = 'בית הספר הריאלי' AND settlements.name = 'חיפה';

--d
SELECT schools.id, schools.name
  FROM roy_hadad_schools schools
  JOIN roy_hadad_settlements settlements
    ON schools.settlement_id = settlements.id
  JOIN roy_hadad_areas areas
    ON areas.id = settlements.area_id
 WHERE areas.name = 'מרכז';

--e
SELECT areas.name, settlements.name, schools.name
  FROM roy_hadad_schools schools
  JOIN roy_hadad_settlements settlements
    ON settlements.id = schools.settlement_id
  JOIN roy_hadad_areas areas
    ON areas.id = settlements.area_id;

--f
SELECT students.id, students.first_name, students.last_name, AVG(scores.score) AS average_score
  FROM roy_hadad_students students
  JOIN roy_hadad_scores scores
    ON scores.student_id = students.id
 WHERE students.first_name = 'דפנה'
 GROUP BY students.id, students.first_name, students.last_name;
 
 --g
SELECT schools.name, students.first_name, students.last_name, subjects.name, scores.score
  FROM roy_hadad_students students
  JOIN roy_hadad_schools schools
    ON students.school_id = schools.id
  JOIN roy_hadad_settlements settlements
    ON settlements.id = schools.settlement_id
  JOIN roy_hadad_areas areas
    ON areas.id = settlements.area_id
  JOIN roy_hadad_scores scores
    ON students.id = scores.student_id
  JOIN roy_hadad_exams exams
    ON exams.id = scores.exam_id
  JOIN roy_hadad_subjects subjects
    ON subjects.id = exams.subject_id
 WHERE areas.name = 'צפון';