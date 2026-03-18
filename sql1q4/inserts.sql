-- Areas
INSERT INTO Roy_Hadad_Areas (id, name) VALUES (areas_seq.NEXTVAL, 'צפון');
INSERT INTO Roy_Hadad_Areas (id, name) VALUES (areas_seq.NEXTVAL, 'מרכז');
INSERT INTO Roy_Hadad_Areas (id, name) VALUES (areas_seq.NEXTVAL, 'דרום');

-- Settlements
INSERT INTO Roy_Hadad_Settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'חיפה', 1);
INSERT INTO Roy_Hadad_Settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'קריית שמונה', 1);
INSERT INTO Roy_Hadad_Settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'תל אביב', 2);
INSERT INTO Roy_Hadad_Settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'באר שבע', 3);

-- Schools
INSERT INTO Roy_Hadad_Schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'בית הספר הריאלי', 1);
INSERT INTO Roy_Hadad_Schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'תיכון הצפון', 2);
INSERT INTO Roy_Hadad_Schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'גימנסיה תל אביב', 3);
INSERT INTO Roy_Hadad_Schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'מקיף באר שבע', 4);

-- Students
INSERT INTO Roy_Hadad_Students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 1, 'דפנה', 'כהן');
INSERT INTO Roy_Hadad_Students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 1, 'יואב', 'לוי');
INSERT INTO Roy_Hadad_Students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 2, 'נועה', 'ברק');
INSERT INTO Roy_Hadad_Students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 2, 'רן', 'ביטון');
INSERT INTO Roy_Hadad_Students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 3, 'תמר', 'שלום');
INSERT INTO Roy_Hadad_Students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 4, 'איתי', 'מלכה');

-- Exams
INSERT INTO Roy_Hadad_Exams (id, school_id, field, name, exam_date)
VALUES (exams_seq.NEXTVAL, 1, 'אנגלית', 'מבחן אנגלית א', DATE '2024-01-10');

INSERT INTO Roy_Hadad_Exams (id, school_id, field, name, exam_date)
VALUES (exams_seq.NEXTVAL, 1, 'מתמטיקה', 'מבחן מתמטיקה א', DATE '2024-01-15');

INSERT INTO Roy_Hadad_Exams (id, school_id, field, name, exam_date)
VALUES (exams_seq.NEXTVAL, 2, 'אנגלית', 'מבחן אנגלית ב', DATE '2024-02-10');

INSERT INTO Roy_Hadad_Exams (id, school_id, field, name, exam_date)
VALUES (exams_seq.NEXTVAL, 2, 'מתמטיקה', 'מבחן מתמטיקה ב', DATE '2024-02-15');

INSERT INTO Roy_Hadad_Exams (id, school_id, field, name, exam_date)
VALUES (exams_seq.NEXTVAL, 3, 'אנגלית', 'מבחן אנגלית ג', DATE '2024-03-10');

INSERT INTO Roy_Hadad_Exams (id, school_id, field, name, exam_date)
VALUES (exams_seq.NEXTVAL, 4, 'מתמטיקה', 'מבחן מתמטיקה ד', DATE '2024-03-20');

-- Scores
-- exam 1: אנגלית, school 1
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (1, 1, 75);
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (1, 2, 85);

-- exam 2: מתמטיקה, school 1
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (2, 1, 2);
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (2, 2, 98);

-- exam 3: אנגלית, school 2
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (3, 3, 60);
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (3, 4, 82);

-- exam 4: מתמטיקה, school 2
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (4, 3, 0);
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (4, 4, 100);

-- exam 5: אנגלית, school 3
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (5, 5, 79);

-- exam 6: מתמטיקה, school 4
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (6, 6, 50);

COMMIT;