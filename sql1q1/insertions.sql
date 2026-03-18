-- Areas
INSERT INTO RoyHadad_Areas (id, name) VALUES (areas_seq.NEXTVAL, 'דרום');
INSERT INTO RoyHadad_Areas (id, name) VALUES (areas_seq.NEXTVAL, 'מרכז');
INSERT INTO RoyHadad_Areas (id, name) VALUES (areas_seq.NEXTVAL, 'צפון');

-- Settlements
INSERT INTO RoyHadad_Settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'באר שבע', 1);
INSERT INTO RoyHadad_Settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'תל אביב', 2);
INSERT INTO RoyHadad_Settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'חיפה', 3);
INSERT INTO RoyHadad_Settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'אשדוד', 1);
INSERT INTO RoyHadad_Settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'ירושלים', 2);

-- Schools
INSERT INTO RoyHadad_Schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'תיכון רמון', 1);
INSERT INTO RoyHadad_Schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'גימנסיה הרצליה', 2);
INSERT INTO RoyHadad_Schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'בית ספר אלון', 3);
INSERT INTO RoyHadad_Schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'מקיף אשדוד', 4);
INSERT INTO RoyHadad_Schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'תיכון ירושלים', 5);

-- Students
INSERT INTO RoyHadad_Students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 1, 'דניאל', 'כהן');
INSERT INTO RoyHadad_Students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 1, 'נועה', 'ברק');
INSERT INTO RoyHadad_Students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 2, 'יובל', 'בן דוד');
INSERT INTO RoyHadad_Students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 2, 'שירה', 'לוי');
INSERT INTO RoyHadad_Students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 3, 'איתי', 'ביטון');
INSERT INTO RoyHadad_Students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 3, 'מאיה', 'שלום');
INSERT INTO RoyHadad_Students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 4, 'רן', 'בוסקילה');
INSERT INTO RoyHadad_Students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 5, 'תמר', 'מלכה');

-- Exams
INSERT INTO RoyHadad_Exams (id, school_id, field, name, exam_date)
VALUES (exams_seq.NEXTVAL, 1, 'מתמטיקה', 'מבחן אמצע', DATE '2025-01-15');

INSERT INTO RoyHadad_Exams (id, school_id, field, name, exam_date)
VALUES (exams_seq.NEXTVAL, 1, 'אנגלית', 'מבחן סמסטר', DATE '2025-02-10');

INSERT INTO RoyHadad_Exams (id, school_id, field, name, exam_date)
VALUES (exams_seq.NEXTVAL, 2, 'מדעי המחשב', 'בוחן 1', DATE '2025-01-20');

INSERT INTO RoyHadad_Exams (id, school_id, field, name, exam_date)
VALUES (exams_seq.NEXTVAL, 3, 'היסטוריה', 'מבחן פתע', DATE '2025-03-01');

INSERT INTO RoyHadad_Exams (id, school_id, field, name, exam_date)
VALUES (exams_seq.NEXTVAL, 4, 'ספרות', 'מבחן סיום', DATE '2025-02-25');

INSERT INTO RoyHadad_Exams (id, school_id, field, name, exam_date)
VALUES (exams_seq.NEXTVAL, 5, 'אזרחות', 'בוחן', DATE '2025-01-30');

-- Scores
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (1, 1, 78);
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (1, 2, 92);

INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (2, 1, 54);
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (2, 2, 67);

INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (3, 3, 88);
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (3, 4, 49);

INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (4, 5, 73);
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (4, 6, 58);

INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (5, 7, 61);
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (6, 8, 45);

COMMIT;