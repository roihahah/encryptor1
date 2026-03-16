INSERT INTO RoyHadad_Settlements (settlement, area) VALUES ('תל אביב', 'מרכז');
INSERT INTO RoyHadad_Settlements (settlement, area) VALUES ('חיפה', 'צפון');
INSERT INTO RoyHadad_Settlements (settlement, area) VALUES ('ירושלים', 'מרכז');
INSERT INTO RoyHadad_Settlements (settlement, area) VALUES ('באר שבע', 'דרום');

INSERT INTO RoyHadad_Schools (name, settlement_id) VALUES ('בית הספר לאומניות', 1);
INSERT INTO RoyHadad_Schools (name, settlement_id) VALUES ('בית הספר העירוני א', 2);
INSERT INTO RoyHadad_Schools (name, settlement_id) VALUES ('בית הספר העירוני ב', 3);
INSERT INTO RoyHadad_Schools (name, settlement_id) VALUES ('תיכון הדרום', 4);
INSERT INTO RoyHadad_Schools (name, settlement_id) VALUES ('בית ספר ללא כימיה', 1);

INSERT INTO RoyHadad_Students (school_id, first_name, last_name) VALUES (1, 'דפנה', 'כהן');
INSERT INTO RoyHadad_Students (school_id, first_name, last_name) VALUES (1, 'יואב', 'לוי');
INSERT INTO RoyHadad_Students (school_id, first_name, last_name) VALUES (1, 'מאיה', 'ברק');

INSERT INTO RoyHadad_Students (school_id, first_name, last_name) VALUES (2, 'נועה', 'ישראלי');
INSERT INTO RoyHadad_Students (school_id, first_name, last_name) VALUES (2, 'איתי', 'מלכה');
INSERT INTO RoyHadad_Students (school_id, first_name, last_name) VALUES (2, 'שירה', 'ביטון');

INSERT INTO RoyHadad_Students (school_id, first_name, last_name) VALUES (3, 'רן', 'אברהם');
INSERT INTO RoyHadad_Students (school_id, first_name, last_name) VALUES (3, 'תמר', 'דוד');
INSERT INTO RoyHadad_Students (school_id, first_name, last_name) VALUES (3, 'אופק', 'שלום');

INSERT INTO RoyHadad_Students (school_id, first_name, last_name) VALUES (4, 'גל', 'פרץ');
INSERT INTO RoyHadad_Students (school_id, first_name, last_name) VALUES (4, 'ליאור', 'בן דוד');

INSERT INTO RoyHadad_Students (school_id, first_name, last_name) VALUES (5, 'עדי', 'חכם');
INSERT INTO RoyHadad_Students (school_id, first_name, last_name) VALUES (5, 'נועם', 'מור');

INSERT INTO RoyHadad_Exams (school_id, field, name, exam_date)
VALUES (1, 'כימיה', 'מבחן כימיה א', DATE '2024-01-10');

INSERT INTO RoyHadad_Exams (school_id, field, name, exam_date)
VALUES (1, 'מתמטיקה', 'מבחן מתמטיקה א', DATE '2024-02-10');

INSERT INTO RoyHadad_Exams (school_id, field, name, exam_date)
VALUES (1, 'ביולוגיה', 'מבחן ביולוגיה א', DATE '2024-03-10');

INSERT INTO RoyHadad_Exams (school_id, field, name, exam_date)
VALUES (2, 'ביולוגיה', 'מבחן ביולוגיה ב', DATE '2024-01-12');

INSERT INTO RoyHadad_Exams (school_id, field, name, exam_date)
VALUES (2, 'כימיה', 'מבחן כימיה ב', DATE '2024-02-14');

INSERT INTO RoyHadad_Exams (school_id, field, name, exam_date)
VALUES (2, 'מתמטיקה', 'מבחן מתמטיקה ב', DATE '2024-03-15');

INSERT INTO RoyHadad_Exams (school_id, field, name, exam_date)
VALUES (3, 'מתמטיקה', 'מבחן מתמטיקה ג', DATE '2024-01-18');

INSERT INTO RoyHadad_Exams (school_id, field, name, exam_date)
VALUES (3, 'כימיה', 'מבחן כימיה ג', DATE '2024-02-20');

INSERT INTO RoyHadad_Exams (school_id, field, name, exam_date)
VALUES (4, 'כימיה', 'מבחן כימיה ד', DATE '2024-01-25');

INSERT INTO RoyHadad_Exams (school_id, field, name, exam_date)
VALUES (4, 'היסטוריה', 'מבחן היסטוריה ד', DATE '2024-03-01');

INSERT INTO RoyHadad_Exams (school_id, field, name, exam_date)
VALUES (5, 'ספרות', 'מבחן ספרות ה', DATE '2024-02-01');

-- בית הספר לאומניות
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (1, 1, 95);
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (2, 1, 88);
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (3, 1, 91);

INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (1, 2, 76);
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (2, 2, 82);
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (3, 2, 79);

INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (1, 3, 89);
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (2, 3, 93);
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (3, 3, 90);

-- בית הספר העירוני א
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (4, 4, 84);
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (5, 4, 87);
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (6, 4, 90);

INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (4, 5, 72);
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (5, 5, 69);
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (6, 5, 75);

INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (4, 6, 93);
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (5, 6, 96);
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (6, 6, 94);

-- בית הספר העירוני ב
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (7, 7, 91);
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (8, 7, 85);

INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (7, 8, 77);
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (8, 8, 81);

INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (7, 9, 95);
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (8, 9, 92);

-- תיכון הדרום
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (9, 10, 68);
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (10, 10, 74);

INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (9, 11, 83);
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (10, 11, 79);

-- בית ספר ללא כימיה
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (11, 12, 88);
INSERT INTO RoyHadad_Scores (exam_id, student_id, score) VALUES (11, 13, 73);

COMMIT;

