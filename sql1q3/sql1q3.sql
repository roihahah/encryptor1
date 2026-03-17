
--a
SELECT schools.id , students.id , students.first_name , students.last_name , ROUND(AVG(scores.score),2)
  FROM RoyHadad_Students students
  JOIN RoyHadad_Schools schools
    ON students.school_id = schools.id
  JOIN RoyHadad_Scores scores
    ON students.id = scores.student_id
 WHERE schools.name = 'בית הספר לאומניות'
 GROUP BY 
    schools.id,
    students.first_name,
    students.last_name,
    students.id
;

--b
SELECT schools.id , schools.name , ROUND(AVG(scores.score),2)
  FROM RoyHadad_Schools schools
  JOIN RoyHadad_Exams exams
    ON schools.id = exams.school_id
  JOIN RoyHadad_Scores scores
    ON scores.exam_id = exams.id
 GROUP BY 
    schools.id ,
    schools.name;

--c
SELECT schools.id , ROUND(AVG(scores.score),2)
  FROM RoyHadad_Schools schools
  JOIN RoyHadad_Exams exams
    ON schools.id = exams.school_id
  JOIN RoyHadad_Scores scores
    ON scores.exam_id = exams.id
 WHERE schools.name = 'בית הספר העירוני א' AND exams.field = 'ביולוגיה'
 GROUP BY schools.id;

--d
SELECT schools.id , schools.name , ROUND(AVG(scores.score) , 2) AS avg_score
  FROM RoyHadad_Schools schools
  JOIN RoyHadad_Exams exams
    ON schools.id = exams.school_id
  JOIN RoyHadad_Scores scores
    ON scores.exam_id = exams.id 
 WHERE exams.field = 'כימיה'
 GROUP BY schools.id , schools.name
 ORDER BY AVG(scores.score) DESC;

--e
SELECT schools.id, schools.name, ROUND(AVG(scores.score),2) AS avg_score
  FROM RoyHadad_Schools schools
  LEFT JOIN RoyHadad_Exams exams
    ON exams.school_id = schools.id
   AND exams.field = 'כימיה'
  JOIN RoyHadad_Scores scores
    ON scores.exam_id = exams.id
 GROUP BY schools.id, schools.name
 ORDER BY avg_score DESC;

--f

SELECT students.id , students.first_name , students.last_name , ROUND(AVG(scores.score) , 2)
  FROM RoyHadad_Students students
  JOIN RoyHadad_Scores scores
    ON scores.student_id = students.id
 GROUP BY students.id , students.first_name , students.last_name
 ORDER BY AVG(scores.score) DESC
 FETCH FIRST 1 ROW ONLY;


--g
SELECT students.id , students.first_name , students.last_name , ROUND(AVG(scores.score) , 2)
  FROM RoyHadad_Students students
  JOIN RoyHadad_Schools schools
    ON schools.id = students.school_id
  JOIN RoyHadad_Scores scores
    ON students.id = scores.student_id
  JOIN RoyHadad_Exams exams
    ON exams.id = scores.exam_id
 WHERE exams.field = 'מתמטיקה' AND schools.name = 'בית הספר העירוני ב'
 GROUP BY students.id , students.first_name , students.last_name
 ORDER BY AVG(scores.score) DESC
 FETCH FIRST 1 ROW ONLY;

--h

SELECT school_id ,  school_name , student_id , student_first_name, student_last_name  , ROUND(avg_score , 2)
  FROM (
    SELECT schools.id AS school_id,
           schools.name AS school_name,
           students.id AS student_id,
           students.first_name AS student_first_name,
           students.last_name AS student_last_name,
           AVG(scores.score) AS avg_score , 
           RANK() OVER(PARTITION BY schools.id  ORDER BY AVG(scores.score) DESC) AS rnk
      FROM RoyHadad_Schools schools
      JOIN RoyHadad_Students students
        ON schools.id = students.school_id
      JOIN RoyHadad_Scores scores
        ON scores.student_id = students.id
     GROUP BY schools.id , schools.name , students.id ,  students.first_name , students.last_name
    )
 WHERE rnk = 1
 ORDER BY avg_score DESC;