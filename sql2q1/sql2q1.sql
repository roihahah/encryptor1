
--a
ALTER TABLE Roy_Hadad_Schools
  ADD total_students NUMBER;

--b
CREATE OR REPLACE TRIGGER trg_students_maintain_school_count
 AFTER INSERT OR DELETE OR UPDATE OF school_id ON Roy_Hadad_Students
   FOR EACH ROW
 BEGIN
    IF INSERTING THEN
        UPDATE Roy_Hadad_Schools
        SET total_students = NVL(total_students , 0) + 1
        WHERE id = :NEW.school_id;
    ELSIF DELETING THEN
        UPDATE Roy_Hadad_Schools
        SET total_students = NVL(total_students , 0) - 1
        WHERE id = :OLD.school_id;
    ELSIF UPDATING THEN
        IF :OLD.school_id != :NEW.school_id THEN
            UPDATE Roy_Hadad_Schools
            SET total_students = NVL(total_students , 0) - 1
            WHERE id = :OLD.school_id;
            
            UPDATE Roy_Hadad_Schools
            SET total_students = NVL(total_students , 0) + 1
            WHERE id = :NEW.school_id;
        END IF;
    END IF;
END;

    
--c
DELETE FROM Roy_Hadad_Exams;
DELETE FROM Roy_Hadad_Students;
DELETE FROM Roy_Hadad_Schools;
DELETE FROM Roy_Hadad_Settlements;
DELETE FROM Roy_Hadad_Areas;

--d
 ALTER TABLE Roy_Hadad_Schools
MODIFY total_students NUMBER DEFAULT 0;

--e

--1. checking student count after initial insertions
-- Areas
INSERT INTO Roy_Hadad_Areas (id, name) VALUES (areas_seq.NEXTVAL, 'צפון');
-- Settlements
INSERT INTO Roy_Hadad_Settlements (id, name, area_id)
VALUES (settlements_seq.NEXTVAL, 'חיפה', 1);

INSERT INTO Roy_Hadad_Settlements (id, name, area_id)
VALUES (settlements_seq.NEXTVAL, 'קריית שמונה', 1);

-- Schools
INSERT INTO Roy_Hadad_Schools (id, name, settlement_id)
VALUES (schools_seq.NEXTVAL, 'בית הספר הריאלי', 1);

INSERT INTO Roy_Hadad_Schools (id, name, settlement_id)
VALUES (schools_seq.NEXTVAL, 'תיכון הצפון', 2);

-- Students
INSERT INTO Roy_Hadad_Students (id, school_id, first_name, last_name)
VALUES (students_seq.NEXTVAL, 1, 'דפנה', 'כהן');

INSERT INTO Roy_Hadad_Students (id, school_id, first_name, last_name)
VALUES (students_seq.NEXTVAL, 1, 'יואב', 'לוי');

INSERT INTO Roy_Hadad_Students (id, school_id, first_name, last_name)
VALUES (students_seq.NEXTVAL, 2, 'נועה', 'ברק');

INSERT INTO Roy_Hadad_Students (id, school_id, first_name, last_name)
VALUES (students_seq.NEXTVAL, 2, 'רן', 'ביטון');

SELECT id, name, total_students
  FROM Roy_Hadad_Schools;

-- 2. Checking student count after updating student's school
UPDATE Roy_Hadad_Students
   SET school_id = 2
 WHERE id = 2;

SELECT id, name, total_students
  FROM Roy_Hadad_Schools;

--3. Checking student count after deleting a student
DELETE FROM Roy_Hadad_Students
 WHERE id = 1;

SELECT id, name, total_students
  FROM Roy_Hadad_Schools
 ORDER BY id;


