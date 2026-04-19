-- Areas
INSERT INTO roy_hadad_areas (id, name) VALUES (areas_seq.NEXTVAL, 'צפון');
INSERT INTO roy_hadad_areas (id, name) VALUES (areas_seq.NEXTVAL, 'מרכז');
INSERT INTO roy_hadad_areas (id, name) VALUES (areas_seq.NEXTVAL, 'דרום');

-- Settlements
INSERT INTO roy_hadad_settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'חיפה', 1);
INSERT INTO roy_hadad_settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'תל אביב', 2);
INSERT INTO roy_hadad_settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'ראשון לציון', 2);
INSERT INTO roy_hadad_settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'באר שבע', 3);

-- Schools
INSERT INTO roy_hadad_schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'בית הספר הריאלי', 1);
INSERT INTO roy_hadad_schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'גימנסיה הרצליה', 2);
INSERT INTO roy_hadad_schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'מקיף ראשון', 3);
INSERT INTO roy_hadad_schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'תיכון באר שבע', 4);

-- Students
INSERT INTO roy_hadad_students (id, school_id, first_name, last_name)
VALUES (students_seq.NEXTVAL, 1, 'דפנה', 'כהן');

INSERT INTO roy_hadad_students (id, school_id, first_name, last_name)
VALUES (students_seq.NEXTVAL, 1, 'יואב', 'לוי');

INSERT INTO roy_hadad_students (id, school_id, first_name, last_name)
VALUES (students_seq.NEXTVAL, 2, 'נועה', 'ביטון');

INSERT INTO roy_hadad_students (id, school_id, first_name, last_name)
VALUES (students_seq.NEXTVAL, 3, 'דן', 'ברק');

INSERT INTO roy_hadad_students (id, school_id, first_name, last_name)
VALUES (students_seq.NEXTVAL, 4, 'איתי', 'מלכה');

--subjects
INSERT INTO roy_hadad_subjects (id, name)
VALUES (subjects_seq.NEXTVAL, 'מתמטיקה');

INSERT INTO roy_hadad_subjects (id, name)
VALUES (subjects_seq.NEXTVAL, 'אנגלית');

INSERT INTO roy_hadad_subjects (id, name)
VALUES (subjects_seq.NEXTVAL, 'פיזיקה');

INSERT INTO roy_hadad_subjects (id, name)
VALUES (subjects_seq.NEXTVAL, 'ספרות');

INSERT INTO roy_hadad_subjects (id, name)
VALUES (subjects_seq.NEXTVAL, 'היסטוריה');
    
-- Exams
INSERT INTO roy_hadad_exams (id, subject_id, name, exam_date)
VALUES (exams_seq.NEXTVAL,1, 'מבחן אמצע', TO_DATE('2000-01-10', 'YYYY-MM-DD'));

INSERT INTO roy_hadad_exams (id, subject_id, name, exam_date)
VALUES (exams_seq.NEXTVAL, 2, 'מבחן סמסטר', TO_DATE('2001-03-10', 'YYYY-MM-DD'));

INSERT INTO roy_hadad_exams (id, subject_id, name, exam_date)
VALUES (exams_seq.NEXTVAL,3, 'בוחן', TO_DATE('1998-06-15', 'YYYY-MM-DD'));

INSERT INTO roy_hadad_exams (id, subject_id, name, exam_date)
VALUES (exams_seq.NEXTVAL,4, 'מבחן', TO_DATE('2005-02-10', 'YYYY-MM-DD'));

INSERT INTO roy_hadad_exams (id, subject_id, name, exam_date)
VALUES (exams_seq.NEXTVAL,5, 'בוחן', TO_DATE('1999-05-20', 'YYYY-MM-DD'));

-- Scores (no sequence here)
INSERT INTO roy_hadad_scores (exam_id, student_id, score)
VALUES (1, 1, 95);

INSERT INTO roy_hadad_scores (exam_id, student_id, score)
VALUES (2, 1, 88);

INSERT INTO roy_hadad_scores (exam_id, student_id, score)
VALUES (1, 2, 70);

INSERT INTO roy_hadad_scores (exam_id, student_id, score)
VALUES (3, 3, 82);

INSERT INTO roy_hadad_scores (exam_id, student_id, score)
VALUES (4, 4, 67);

INSERT INTO roy_hadad_scores (exam_id, student_id, score)
VALUES (5, 5, 75);