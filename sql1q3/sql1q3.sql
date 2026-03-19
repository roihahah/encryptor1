
--a
SELECT schools.id, students.id, students.first_name, students.last_name, ROUND(AVG(scores.score), 2) AS avg_score
  FROM roy_hadad_students students
  JOIN roy_hadad_schools schools
    ON students.school_id = schools.id
  JOIN roy_hadad_scores scores
    ON students.id = scores.student_id
 WHERE schools.name = 'בית הספר לאומניות'
 GROUP BY schools.id,
          students.id,
          students.first_name,
          students.last_name;

--b
SELECT schools.id, schools.name, ROUND(AVG(scores.score), 2) AS avg_score
  FROM roy_hadad_exams exams
  JOIN roy_hadad_scores scores
    ON scores.exam_id = exams.id
  JOIN roy_hadad_students students
    ON students.id = scores.student_id
  JOIN roy_hadad_schools schools
    ON schools.id = students.school_id
 GROUP BY schools.id,
          schools.name;

--c
SELECT schools.id, ROUND(AVG(scores.score), 2) AS avg_score
  FROM roy_hadad_exams exams
  JOIN roy_hadad_scores scores
    ON scores.exam_id = exams.id
  JOIN roy_hadad_students students
    ON students.id = scores.student_id
  JOIN roy_hadad_schools schools
    ON schools.id = students.school_id
  JOIN roy_hadad_subjects subjects
    ON subjects.id = exams.subject_id
 WHERE schools.name = 'בית הספר העירוני א' AND subjects.name = 'ביולוגיה'
 GROUP BY schools.id;

--d
SELECT schools.id, schools.name, ROUND(AVG(scores.score), 2) AS avg_score
  FROM roy_hadad_exams exams
  JOIN roy_hadad_scores scores
    ON scores.exam_id = exams.id
  JOIN roy_hadad_students students
    ON students.id = scores.student_id
  JOIN roy_hadad_schools schools
    ON schools.id = students.school_id
  JOIN roy_hadad_subjects subjects
    ON subjects.id = exams.subject_id
 WHERE subjects.name = 'כימיה'
 GROUP BY schools.id, schools.name
 ORDER BY avg_score DESC;

--e
SELECT schools.id, schools.name, ROUND(AVG(scores.score), 2) AS avg_score
  FROM roy_hadad_exams exams
  JOIN roy_hadad_scores scores
    ON scores.exam_id = exams.id
  JOIN roy_hadad_students students
    ON students.id = scores.student_id
  JOIN roy_hadad_schools schools
    ON schools.id = students.school_id
  JOIN roy_hadad_subjects subjects
    ON subjects.id = exams.subject_id
 WHERE subjects.name = 'כימיה'
 GROUP BY schools.id, schools.name
 ORDER BY avg_score DESC;

--f

SELECT students.id, students.first_name, students.last_name, ROUND(AVG(scores.score) , 2) AS avg_score
  FROM roy_hadad_students students
  JOIN roy_hadad_scores scores
    ON scores.student_id = students.id
 GROUP BY students.id, students.first_name, students.last_name
 ORDER BY avg_score DESC
 FETCH FIRST 1 ROW ONLY;


--g
SELECT students.id, students.first_name, students.last_name, ROUND(AVG(scores.score), 2) AS avg_score
  FROM roy_hadad_exams exams
  JOIN roy_hadad_scores scores
    ON scores.exam_id = exams.id
  JOIN roy_hadad_students students
    ON students.id = scores.student_id
  JOIN roy_hadad_schools schools
    ON schools.id = students.school_id
  JOIN roy_hadad_subjects subjects
    ON subjects.id = exams.subject_id
 WHERE subjects.name = 'מתמטיקה' AND schools.name = 'בית הספר העירוני ב'
 GROUP BY students.id, students.first_name, students.last_name
 ORDER BY avg_score DESC
 FETCH FIRST 1 ROW ONLY;

--h
--
----version 1
SELECT school_id, school_name, student_id, student_first_name, student_last_name, avg_score
  FROM (SELECT schools.id AS school_id,
               schools.name AS school_name,
               students.id AS student_id,
               students.first_name AS student_first_name,
               students.last_name AS student_last_name,
               ROUND(AVG(scores.score), 2) AS avg_score , 
               RANK() OVER(PARTITION BY schools.id  ORDER BY AVG(scores.score) DESC) AS rnk
          FROM roy_hadad_schools schools
          JOIN roy_hadad_students students
            ON schools.id = students.school_id
          JOIN roy_hadad_scores scores
            ON scores.student_id = students.id
         GROUP BY schools.id, schools.name, students.id, students.first_name, students.last_name)
 WHERE rnk = 1
 ORDER BY avg_score DESC;
 
--version 2
SELECT school_max.school_id,  students_avg.school_name, students_avg.student_id, students_avg.student_first_name, students_avg.student_last_name,  students_avg.avg_score
  FROM(SELECT schools.id AS school_id,
              schools.name AS school_name,
              students.id AS student_id,
              students.first_name AS student_first_name,
              students.last_name AS student_last_name,
              ROUND(AVG(scores.score), 2) AS avg_score
         FROM roy_hadad_schools schools
         JOIN roy_hadad_students students
           ON schools.id = students.school_id
         JOIN roy_hadad_scores scores
           ON scores.student_id = students.id
        GROUP BY schools.id, schools.name, students.id, students.first_name, students.last_name) students_avg
  JOIN(SELECT school_id, MAX(avg_score) AS max_score
        FROM(SELECT schools.id AS school_id, students.id, ROUND(AVG(scores.score), 2) AS avg_score
               FROM roy_hadad_schools schools
               JOIN roy_hadad_students students
                 ON students.school_id = schools.id
               JOIN roy_hadad_scores scores
                 ON scores.student_id = students.id
              GROUP BY schools.id, students.id)
        GROUP BY school_id) school_max
    ON school_max.school_id = students_avg.school_id
   AND school_max.max_score = students_avg.avg_score
 ORDER BY students_avg.avg_score DESC;
  
  
  
