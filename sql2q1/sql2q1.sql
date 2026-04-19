
--a
ALTER TABLE roy_hadad_schools
  ADD total_students NUMBER;

--b
CREATE OR REPLACE TRIGGER trg_students_maintain_school_count
 AFTER INSERT OR DELETE OR UPDATE OF school_id ON roy_hadad_students
   FOR EACH ROW
 BEGIN
    IF INSERTING THEN
        UPDATE roy_hadad_schools
        SET total_students = NVL(total_students , 0) + 1
        WHERE id = :NEW.school_id;
    ELSIF DELETING THEN
        UPDATE roy_hadad_schools
        SET total_students = NVL(total_students , 0) - 1
        WHERE id = :OLD.school_id;
    ELSIF UPDATING THEN
        IF :OLD.school_id != :NEW.school_id THEN
            UPDATE roy_hadad_schools
            SET total_students = NVL(total_students , 0) - 1
            WHERE id = :OLD.school_id;
            
            UPDATE roy_hadad_schools
            SET total_students = NVL(total_students , 0) + 1
            WHERE id = :NEW.school_id;
        END IF;
    END IF;
END;

    
--c
DELETE FROM roy_hadad_exams;
DELETE FROM roy_hadad_students;
DELETE FROM roy_hadad_schools;
DELETE FROM roy_hadad_settlements;
DELETE FROM roy_hadad_areas;

--d
 ALTER TABLE roy_hadad_schools
MODIFY total_students NUMBER DEFAULT 0;

--e

--1. checking student count after initial insertions
-- Areas
INSERT INTO roy_hadad_areas (id, name) VALUES (areas_seq.NEXTVAL, 'צפון');
-- Settlements
INSERT INTO roy_hadad_settlements (id, name, area_id)
VALUES (settlements_seq.NEXTVAL, 'חיפה', 1);

INSERT INTO roy_hadad_settlements (id, name, area_id)
VALUES (settlements_seq.NEXTVAL, 'קריית שמונה', 1);

-- Schools
INSERT INTO roy_hadad_schools (id, name, settlement_id)
VALUES (schools_seq.NEXTVAL, 'בית הספר הריאלי', 1);

INSERT INTO roy_hadad_schools (id, name, settlement_id)
VALUES (schools_seq.NEXTVAL, 'תיכון הצפון', 2);

-- Students
INSERT INTO roy_hadad_students (id, school_id, first_name, last_name)
VALUES (students_seq.NEXTVAL, 1, 'דפנה', 'כהן');

INSERT INTO roy_hadad_students (id, school_id, first_name, last_name)
VALUES (students_seq.NEXTVAL, 1, 'יואב', 'לוי');

INSERT INTO roy_hadad_students (id, school_id, first_name, last_name)
VALUES (students_seq.NEXTVAL, 2, 'נועה', 'ברק');

INSERT INTO roy_hadad_students (id, school_id, first_name, last_name)
VALUES (students_seq.NEXTVAL, 2, 'רן', 'ביטון');

SELECT id, name, total_students
  FROM Roy_Hadad_Schools;

-- 2. Checking student count after updating student's school
UPDATE roy_hadad_students
   SET school_id = 2
 WHERE id = 2;

SELECT id, name, total_students
  FROM roy_hadad_schools;

--3. Checking student count after deleting a student
DELETE FROM roy_hadad_students
 WHERE id = 1;

SELECT id, name, total_students
  FROM roy_hadad_schools
 ORDER BY id;


