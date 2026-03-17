--a
--in the inserts file

--b
DELETE FROM RoyHadad_Scores
 WHERE exam_id IN (
    SELECT id
      FROM RoyHadad_Exams
     WHERE field = 'אנגלית'
  )
   AND score < 80;

--c
UPDATE RoyHadad_Scores
   SET score = GREATEST(score -3 ,0)
 WHERE exam_id IN (
    SELECT id
      FROM RoyHadad_Exams
     WHERE field = 'מתמטיקה'
);

--d
UPDATE RoyHadad_Scores
   SET score = LEAST(score +3 , 100)
 WHERE exam_id IN (
    SELECT id
      FROM RoyHadad_Exams
     WHERE field = 'מתמטיקה'
);

--end
CREATE OR REPLACE VIEW RoyHadad_north_schools AS
SELECT school.id , school.name
  FROM RoyHadad_Schools school
  JOIN RoyHadad_Settlements settlements
    ON school.settlement_id = settlements.id
 WHERE settlements.area = 'צפון';
