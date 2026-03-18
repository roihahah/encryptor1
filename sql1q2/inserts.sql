-- Areas
INSERT INTO Roy_Hadad_Areas (id, name) VALUES (areas_seq.NEXTVAL, 'צפון');
INSERT INTO Roy_Hadad_Areas (id, name) VALUES (areas_seq.NEXTVAL, 'מרכז');
INSERT INTO Roy_Hadad_Areas (id, name) VALUES (areas_seq.NEXTVAL, 'דרום');

-- Settlements
INSERT INTO Roy_Hadad_Settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'חיפה', 1);
INSERT INTO Roy_Hadad_Settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'תל אביב', 2);
INSERT INTO Roy_Hadad_Settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'ראשון לציון', 2);
INSERT INTO Roy_Hadad_Settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'באר שבע', 3);

-- Schools
INSERT INTO Roy_Hadad_Schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'בית הספר הריאלי', 1);
INSERT INTO Roy_Hadad_Schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'גימנסיה הרצליה', 2);
INSERT INTO Roy_Hadad_Schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'מקיף ראשון', 3);
INSERT INTO Roy_Hadad_Schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'תיכון באר שבע', 4);

-- Students
INSERT INTO Roy_Hadad_Students (id, school_id, first_name, last_name)
VALUES (students_seq.NEXTVAL, 1, 'דפנה', 'כהן');

INSERT INTO Roy_Hadad_Students (id, school_id, first_name, last_name)
VALUES (students_seq.NEXTVAL, 1, 'יואב', 'לוי');

INSERT INTO Roy_Hadad_Students (id, school_id, first_name, last_name)
VALUES (students_seq.NEXTVAL, 2, 'נועה', 'ביטון');

INSERT INTO Roy_Hadad_Students (id, school_id, first_name, last_name)
VALUES (students_seq.NEXTVAL, 3, 'דן', 'ברק');

INSERT INTO Roy_Hadad_Students (id, school_id, first_name, last_name)
VALUES (students_seq.NEXTVAL, 4, 'איתי', 'מלכה');

-- Exams
INSERT INTO Roy_Hadad_Exams (id, school_id, field, name, exam_date)
VALUES (exams_seq.NEXTVAL, 1, 'מתמטיקה', 'מבחן אמצע', DATE '2000-01-10');

INSERT INTO Roy_Hadad_Exams (id, school_id, field, name, exam_date)
VALUES (exams_seq.NEXTVAL, 1, 'אנגלית', 'מבחן סמסטר', DATE '2001-03-10');

INSERT INTO Roy_Hadad_Exams (id, school_id, field, name, exam_date)
VALUES (exams_seq.NEXTVAL, 2, 'פיזיקה', 'בוחן', DATE '1998-06-15');

INSERT INTO Roy_Hadad_Exams (id, school_id, field, name, exam_date)
VALUES (exams_seq.NEXTVAL, 3, 'ספרות', 'מבחן', DATE '2005-02-10');

INSERT INTO Roy_Hadad_Exams (id, school_id, field, name, exam_date)
VALUES (exams_seq.NEXTVAL, 4, 'היסטוריה', 'בוחן', DATE '1999-05-20');

-- Scores (no sequence here)
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score)
VALUES (1, 1, 95);

INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score)
VALUES (2, 1, 88);

INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score)
VALUES (1, 2, 70);

INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score)
VALUES (3, 3, 82);

INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score)
VALUES (4, 4, 67);

INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score)
VALUES (5, 5, 75);