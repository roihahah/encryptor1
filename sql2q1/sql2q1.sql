
--a
ALTER TABLE RoyHadad_Schools
ADD students_number NUMBER;

--b
CREATE OR REPLACE TRIGGER after_student_insert
AFTER INSERT ON RoyHadad_Students
FOR EACH ROW
BEGIN
    UPDATE RoyHadad_Schools
    SET students_number = NVL(students_number , 0) + 1
    WHERE id = :NEW.school_id;
END;
/

CREATE OR REPLACE TRIGGER after_student_delete
AFTER DELETE ON RoyHadad_Students
FOR EACH ROW
BEGIN
    UPDATE RoyHadad_Schools
    SET students_number = NVL(students_number , 0) - 1
    WHERE id = :OLD.school_id;
END;
/


CREATE OR REPLACE TRIGGER after_student_update
AFTER UPDATE ON RoyHadad_Students
FOR EACH ROW
BEGIN
    IF :OLD.school_id != :NEW.school_id THEN
        UPDATE RoyHadad_Schools
        SET students_number = NVL(students_number , 0) - 1
        WHERE id = :OLD.school_id;
        
        UPDATE RoyHadad_Schools
        SET students_number = NVL(students_number , 0) + 1
        WHERE id = :NEW.school_id;
    END IF;
END;
/
--c
DELETE FROM RoyHadad_Exams;
DELETE FROM RoyHadad_Students;
DELETE FROM RoyHadad_Schools;

--d
ALTER TABLE RoyHadad_Schools
MODIFY students_number NUMBER DEFAULT 0;

--e
INSERT INTO RoyHadad_Settlements (settlement, area) VALUES ('חיפה', 'צפון');
INSERT INTO RoyHadad_Settlements (settlement, area) VALUES ('קריית שמונה', 'צפון');

INSERT INTO RoyHadad_Schools (name, settlement_id) VALUES ('בית הספר הריאלי', 1);
INSERT INTO RoyHadad_Schools (name, settlement_id) VALUES ('תיכון הצפון', 2);

INSERT INTO RoyHadad_Students (school_id, first_name, last_name) VALUES (1, 'דפנה', 'כהן');
INSERT INTO RoyHadad_Students (school_id, first_name, last_name) VALUES (1, 'יואב', 'לוי');
INSERT INTO RoyHadad_Students (school_id, first_name, last_name) VALUES (2, 'נועה', 'ברק');
INSERT INTO RoyHadad_Students (school_id, first_name, last_name) VALUES (2, 'רן', 'ביטון');

INSERT INTO RoyHadad_Exams (school_id, field, name, exam_date)
VALUES (1, 'אנגלית', 'מבחן אנגלית א', DATE '2024-01-10');

INSERT INTO RoyHadad_Exams (school_id, field, name, exam_date)
VALUES (1, 'מתמטיקה', 'מבחן מתמטיקה א', DATE '2024-01-15');

INSERT INTO RoyHadad_Exams (school_id, field, name, exam_date)
VALUES (2, 'אנגלית', 'מבחן אנגלית ב', DATE '2024-02-10');

INSERT INTO RoyHadad_Exams (school_id, field, name, exam_date)
VALUES (2, 'מתמטיקה', 'מבחן מתמטיקה ב', DATE '2024-02-15');

-- exam 1: אנגלית, school 1
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (1, 1, 75);
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (1, 2, 85);

-- exam 2: מתמטיקה, school 1
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (2, 1, 2);
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (2, 2, 98);

SELECT * FROM RoyHadad_Schools;

DELETE FROM RoyHadad_Scores
WHERE student_id = 1;
DELETE FROM RoyHadad_Students
WHERE id = 1;


SELECT * FROM RoyHadad_Schools;
