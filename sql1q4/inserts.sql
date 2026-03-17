INSERT INTO RoyHadad_Settlements (name, area) VALUES ('חיפה', 'צפון');
INSERT INTO RoyHadad_Settlements (name, area) VALUES ('קריית שמונה', 'צפון');
INSERT INTO RoyHadad_Settlements (name, area) VALUES ('תל אביב', 'מרכז');
INSERT INTO RoyHadad_Settlements (name, area) VALUES ('באר שבע', 'דרום');

INSERT INTO RoyHadad_Schools (name, settlement_id) VALUES ('בית הספר הריאלי', 1);
INSERT INTO RoyHadad_Schools (name, settlement_id) VALUES ('תיכון הצפון', 2);
INSERT INTO RoyHadad_Schools (name, settlement_id) VALUES ('גימנסיה תל אביב', 3);
INSERT INTO RoyHadad_Schools (name, settlement_id) VALUES ('מקיף באר שבע', 4);

INSERT INTO RoyHadad_Students (school_id, first_name, last_name) VALUES (1, 'דפנה', 'כהן');
INSERT INTO RoyHadad_Students (school_id, first_name, last_name) VALUES (1, 'יואב', 'לוי');
INSERT INTO RoyHadad_Students (school_id, first_name, last_name) VALUES (2, 'נועה', 'ברק');
INSERT INTO RoyHadad_Students (school_id, first_name, last_name) VALUES (2, 'רן', 'ביטון');
INSERT INTO RoyHadad_Students (school_id, first_name, last_name) VALUES (3, 'תמר', 'שלום');
INSERT INTO RoyHadad_Students (school_id, first_name, last_name) VALUES (4, 'איתי', 'מלכה');

INSERT INTO RoyHadad_Exams (school_id, field, name, exam_date)
VALUES (1, 'אנגלית', 'מבחן אנגלית א', DATE '2024-01-10');

INSERT INTO RoyHadad_Exams (school_id, field, name, exam_date)
VALUES (1, 'מתמטיקה', 'מבחן מתמטיקה א', DATE '2024-01-15');

INSERT INTO RoyHadad_Exams (school_id, field, name, exam_date)
VALUES (2, 'אנגלית', 'מבחן אנגלית ב', DATE '2024-02-10');

INSERT INTO RoyHadad_Exams (school_id, field, name, exam_date)
VALUES (2, 'מתמטיקה', 'מבחן מתמטיקה ב', DATE '2024-02-15');

INSERT INTO RoyHadad_Exams (school_id, field, name, exam_date)
VALUES (3, 'אנגלית', 'מבחן אנגלית ג', DATE '2024-03-10');

INSERT INTO RoyHadad_Exams (school_id, field, name, exam_date)
VALUES (4, 'מתמטיקה', 'מבחן מתמטיקה ד', DATE '2024-03-20');

-- exam 1: אנגלית, school 1
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (1, 1, 75);
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (1, 2, 85);

-- exam 2: מתמטיקה, school 1
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (2, 1, 2);
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (2, 2, 98);

-- exam 3: אנגלית, school 2
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (3, 3, 60);
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (3, 4, 82);

-- exam 4: מתמטיקה, school 2
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (4, 3, 0);
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (4, 4, 100);

-- exam 5: אנגלית, school 3
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (5, 5, 79);

-- exam 6: מתמטיקה, school 4
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (6, 6, 50);

COMMIT;
