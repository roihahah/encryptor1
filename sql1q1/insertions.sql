-- Areas
INSERT INTO roy_hadad_areas (id, name) VALUES (areas_seq.NEXTVAL, 'דרום');
INSERT INTO roy_hadad_areas (id, name) VALUES (areas_seq.NEXTVAL, 'מרכז');
INSERT INTO roy_hadad_areas (id, name) VALUES (areas_seq.NEXTVAL, 'צפון');

-- Settlements
INSERT INTO roy_hadad_settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'באר שבע', 1);
INSERT INTO roy_hadad_settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'תל אביב', 2);
INSERT INTO roy_hadad_settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'חיפה', 3);
INSERT INTO roy_hadad_settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'אשדוד', 1);
INSERT INTO roy_hadad_settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'ירושלים', 2);

-- Schools
INSERT INTO roy_hadad_schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'תיכון רמון', 1);
INSERT INTO roy_hadad_schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'גימנסיה הרצליה', 2);
INSERT INTO roy_hadad_schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'בית ספר אלון', 3);
INSERT INTO roy_hadad_schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'מקיף אשדוד', 4);
INSERT INTO roy_hadad_schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'תיכון ירושלים', 5);

-- Students
INSERT INTO roy_hadad_students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 1, 'דניאל', 'כהן');
INSERT INTO roy_hadad_students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 1, 'נועה', 'ברק');
INSERT INTO roy_hadad_students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 2, 'יובל', 'בן דוד');
INSERT INTO roy_hadad_students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 2, 'שירה', 'לוי');
INSERT INTO roy_hadad_students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 3, 'איתי', 'ביטון');
INSERT INTO roy_hadad_students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 3, 'מאיה', 'שלום');
INSERT INTO roy_hadad_students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 4, 'רן', 'בוסקילה');
INSERT INTO roy_hadad_students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 5, 'תמר', 'מלכה');

--subjects
INSERT INTO roy_hadad_subjects (id , name)
VALUES (subjects_seq.NEXTVAL , 'מתמטיקה');

INSERT INTO roy_hadad_subjects (id , name)
VALUES (subjects_seq.NEXTVAL , 'אנגלית');

INSERT INTO roy_hadad_subjects (id , name)
VALUES (subjects_seq.NEXTVAL , 'מדעי המחשב');

INSERT INTO roy_hadad_subjects (id , name)
VALUES (subjects_seq.NEXTVAL , 'היסטוריה');


INSERT INTO roy_hadad_subjects (id , name)
VALUES (subjects_seq.NEXTVAL , 'ספרות');

INSERT INTO roy_hadad_subjects (id , name)
VALUES (subjects_seq.NEXTVAL , 'אזרחות');

-- Exams
INSERT INTO roy_hadad_exams (id, subject_id, name, exam_date)
VALUES (exams_seq.NEXTVAL, 1, 'מבחן אמצע', DATE '2025-01-15');

INSERT INTO roy_hadad_exams (id, subject_id, name, exam_date)
VALUES (exams_seq.NEXTVAL, 1, 'מבחן סמסטר', DATE '2025-02-10');

INSERT INTO roy_hadad_exams (id, subject_id, name, exam_date)
VALUES (exams_seq.NEXTVAL, 3, 'בוחן 1', DATE '2025-01-20');

INSERT INTO roy_hadad_exams (id, subject_id, name, exam_date)
VALUES (exams_seq.NEXTVAL, 4, 'מבחן פתע', DATE '2025-03-01');

INSERT INTO roy_hadad_exams (id, subject_id, name, exam_date)
VALUES (exams_seq.NEXTVAL, 4, 'מבחן סיום', DATE '2025-02-25');

INSERT INTO roy_hadad_exams (id, subject_id, name, exam_date)
VALUES (exams_seq.NEXTVAL, 6, 'בוחן', DATE '2025-01-30');

-- Scores
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (1, 1, 78);
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (1, 2, 92);

INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (2, 1, 54);
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (2, 2, 67);

INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (3, 3, 88);
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (3, 4, 49);

INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (4, 5, 73);
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (4, 6, 58);

INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (5, 7, 61);
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (6, 8, 45);

COMMIT;