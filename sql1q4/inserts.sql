-- Areas
INSERT INTO roy_hadad_areas (id, name) VALUES (areas_seq.NEXTVAL, 'צפון');
INSERT INTO roy_hadad_areas (id, name) VALUES (areas_seq.NEXTVAL, 'מרכז');
INSERT INTO roy_hadad_areas (id, name) VALUES (areas_seq.NEXTVAL, 'דרום');

-- Settlements
INSERT INTO roy_hadad_settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'חיפה', 1);
INSERT INTO roy_hadad_settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'קריית שמונה', 1);
INSERT INTO roy_hadad_settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'תל אביב', 2);
INSERT INTO roy_hadad_settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'באר שבע', 3);

-- Schools
INSERT INTO roy_hadad_schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'בית הספר הריאלי', 1);
INSERT INTO roy_hadad_schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'תיכון הצפון', 2);
INSERT INTO roy_hadad_schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'גימנסיה תל אביב', 3);
INSERT INTO roy_hadad_schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'מקיף באר שבע', 4);

-- Students
INSERT INTO roy_hadad_students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 1, 'דפנה', 'כהן');
INSERT INTO roy_hadad_students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 1, 'יואב', 'לוי');
INSERT INTO roy_hadad_students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 2, 'נועה', 'ברק');
INSERT INTO roy_hadad_students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 2, 'רן', 'ביטון');
INSERT INTO roy_hadad_students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 3, 'תמר', 'שלום');
INSERT INTO roy_hadad_students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 4, 'איתי', 'מלכה');

--Subjects
INSERT INTO roy_hadad_subjects(id ,name)
VALUES (subjects_seq.NEXTVAL , 'אנגלית');

INSERT INTO roy_hadad_subjects(id ,name)
VALUES (subjects_seq.NEXTVAL , 'מתמטיקה');

-- Exams
INSERT INTO roy_hadad_exams (id, subject_id, name, exam_date)
VALUES (exams_seq.NEXTVAL, 1, 'מבחן אנגלית א', TO_DATE('2024-01-10', 'YYYY-MM-DD'));

INSERT INTO roy_hadad_exams (id, subject_id, name, exam_date)
VALUES (exams_seq.NEXTVAL, 2, 'מבחן מתמטיקה א', TO_DATE('2024-01-15', 'YYYY-MM-DD'));

INSERT INTO roy_hadad_exams (id, subject_id, name, exam_date)
VALUES (exams_seq.NEXTVAL, 1, 'מבחן אנגלית ב', TO_DATE('2024-02-10', 'YYYY-MM-DD'));

INSERT INTO roy_hadad_exams (id, subject_id, name, exam_date)
VALUES (exams_seq.NEXTVAL, 2, 'מבחן מתמטיקה ב', TO_DATE('2024-02-15', 'YYYY-MM-DD'));

INSERT INTO roy_hadad_exams (id, subject_id, name, exam_date)
VALUES (exams_seq.NEXTVAL, 1, 'מבחן אנגלית ג', TO_DATE('2024-03-10', 'YYYY-MM-DD'));

INSERT INTO roy_hadad_exams (id, subject_id, name, exam_date)
VALUES (exams_seq.NEXTVAL, 2, 'מבחן מתמטיקה ד', TO_DATE('2024-03-20', 'YYYY-MM-DD'));

-- Scores
-- exam 1: אנגלית, school 1
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (1, 1, 75);
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (1, 2, 85);

-- exam 2: מתמטיקה, school 1
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (2, 1, 2);
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (2, 2, 98);

-- exam 3: אנגלית, school 2
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (3, 3, 60);
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (3, 4, 82);

-- exam 4: מתמטיקה, school 2
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (4, 3, 0);
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (4, 4, 100);

-- exam 5: אנגלית, school 3
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (5, 5, 79);

-- exam 6: מתמטיקה, school 4
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (6, 6, 50);

COMMIT;