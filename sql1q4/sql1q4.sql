--a
--in the inserts file

--b
DELETE FROM Roy_Hadad_Scores
 WHERE exam_id IN (SELECT exams.id
                     FROM roy_hadad_exams exams
                     JOIN roy_hadad_subjects subjects
                       ON exams.subject_id = subjects.id
                    WHERE subjects.name = 'אנגלית')
   AND score < 80;

--c
UPDATE Roy_Hadad_Scores
   SET score = GREATEST(score -3 ,0)
 WHERE exam_id IN (SELECT exams.id
                     FROM roy_hadad_exams exams
                     JOIN roy_hadad_subjects subjects
                       ON exams.subject_id = subjects.id
                    WHERE subjects.name = 'מתמטיקה');

--d
UPDATE Roy_Hadad_Scores
   SET score = LEAST(score +3 , 100)
 WHERE exam_id IN (SELECT exams.id
                     FROM roy_hadad_exams exams
                     JOIN roy_hadad_subjects subjects
                       ON exams.subject_id = subjects.id
                    WHERE subjects.name = 'מתמטיקה');

--end
CREATE OR REPLACE VIEW roy_hadad_north_schools AS
SELECT school.id , school.name
  FROM Roy_Hadad_Schools school
  JOIN Roy_Hadad_Settlements settlements
    ON school.settlement_id = settlements.id
  JOIN Roy_Hadad_Areas areas
    ON areas.id = settlements.area_id
 WHERE areas.name = 'צפון';
