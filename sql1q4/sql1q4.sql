--a
--in the inserts file

--b
DELETE FROM Roy_Hadad_Scores
 WHERE exam_id IN (
    SELECT id
      FROM Roy_Hadad_Exams
     WHERE field = 'אנגלית'
  )
   AND score < 80;

--c
UPDATE Roy_Hadad_Scores
   SET score = GREATEST(score -3 ,0)
 WHERE exam_id IN (
    SELECT id
      FROM Roy_Hadad_Exams
     WHERE field = 'מתמטיקה'
);

--d
UPDATE Roy_Hadad_Scores
   SET score = LEAST(score +3 , 100)
 WHERE exam_id IN (
    SELECT id
      FROM Roy_Hadad_Exams
     WHERE field = 'מתמטיקה'
);

--end
CREATE OR REPLACE VIEW RoyHadad_north_schools AS
SELECT school.id , school.name
  FROM Roy_Hadad_Schools school
  JOIN Roy_Hadad_Settlements settlements
    ON school.settlement_id = settlements.id
  JOIN Roy_Hadad_Areas areas
    ON areas.id = settlements.area_id
 WHERE areas.name = 'צפון';
