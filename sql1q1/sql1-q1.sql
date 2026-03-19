
--1
--a
SELECT first_name, last_name 
  FROM roy_hadad_students;

--b
SELECT name 
  FROM roy_hadad_schools;

--c
SELECT scores.score, subjects.name 
  FROM roy_hadad_exams exams
  JOIN roy_hadad_scores scores
    ON exams.id = scores.exam_id
  JOIN roy_hadad_subjects subjects
    ON subjects.id = exams.subject_id
 WHERE scores.score > 55;

--d
SELECT first_name || ' ' || last_name AS full_name
  FROM roy_hadad_students
 WHERE last_name LIKE 'ב%';

--e
SELECT first_name, last_name 
  FROM roy_hadad_students
 ORDER BY first_name, last_name ASC;