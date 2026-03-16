
-- Settlements
INSERT INTO RoyHadad_Settlements (settlement, area) VALUES ('באר שבע', 'דרום');
INSERT INTO RoyHadad_Settlements (settlement, area) VALUES ('תל אביב', 'מרכז');
INSERT INTO RoyHadad_Settlements (settlement, area) VALUES ('חיפה', 'צפון');
INSERT INTO RoyHadad_Settlements (settlement, area) VALUES ('אשדוד', 'דרום');
INSERT INTO RoyHadad_Settlements (settlement, area) VALUES ('ירושלים', 'מרכז');

-- Schools
INSERT INTO RoyHadad_Schools (name, settlement_id) VALUES ('תיכון רמון', 1);
INSERT INTO RoyHadad_Schools (name, settlement_id) VALUES ('גימנסיה הרצליה', 2);
INSERT INTO RoyHadad_Schools (name, settlement_id) VALUES ('בית ספר אלון', 3);
INSERT INTO RoyHadad_Schools (name, settlement_id) VALUES ('מקיף אשדוד', 4);
INSERT INTO RoyHadad_Schools (name, settlement_id) VALUES ('תיכון ירושלים', 5);

-- Students
INSERT INTO RoyHadad_Students (school_id, first_name, last_name) VALUES (1, 'דניאל', 'כהן');
INSERT INTO RoyHadad_Students (school_id, first_name, last_name) VALUES (1, 'נועה', 'ברק');
INSERT INTO RoyHadad_Students (school_id, first_name, last_name) VALUES (2, 'יובל', 'בן דוד');
INSERT INTO RoyHadad_Students (school_id, first_name, last_name) VALUES (2, 'שירה', 'לוי');
INSERT INTO RoyHadad_Students (school_id, first_name, last_name) VALUES (3, 'איתי', 'ביטון');
INSERT INTO RoyHadad_Students (school_id, first_name, last_name) VALUES (3, 'מאיה', 'שלום');
INSERT INTO RoyHadad_Students (school_id, first_name, last_name) VALUES (4, 'רן', 'בוסקילה');
INSERT INTO RoyHadad_Students (school_id, first_name, last_name) VALUES (5, 'תמר', 'מלכה');

-- Exams
INSERT INTO RoyHadad_Exams (school_id, field, name, exam_date)
VALUES (1, 'מתמטיקה', 'מבחן אמצע', DATE '2025-01-15');

INSERT INTO RoyHadad_Exams (school_id, field, name, exam_date)
VALUES (1, 'אנגלית', 'מבחן סמסטר', DATE '2025-02-10');

INSERT INTO RoyHadad_Exams (school_id, field, name, exam_date)
VALUES (2, 'מדעי המחשב', 'בוחן 1', DATE '2025-01-20');

INSERT INTO RoyHadad_Exams (school_id, field, name, exam_date)
VALUES (3, 'היסטוריה', 'מבחן פתע', DATE '2025-03-01');

INSERT INTO RoyHadad_Exams (school_id, field, name, exam_date)
VALUES (4, 'ספרות', 'מבחן סיום', DATE '2025-02-25');

INSERT INTO RoyHadad_Exams (school_id, field, name, exam_date)
VALUES (5, 'אזרחות', 'בוחן', DATE '2025-01-30');

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