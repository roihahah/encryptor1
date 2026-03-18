-- Areas
INSERT INTO Roy_Hadad_Areas (id, name) VALUES (areas_seq.NEXTVAL, 'מרכז');
INSERT INTO Roy_Hadad_Areas (id, name) VALUES (areas_seq.NEXTVAL, 'צפון');
INSERT INTO Roy_Hadad_Areas (id, name) VALUES (areas_seq.NEXTVAL, 'דרום');

-- Settlements
INSERT INTO Roy_Hadad_Settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'תל אביב', 1);
INSERT INTO Roy_Hadad_Settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'חיפה', 2);
INSERT INTO Roy_Hadad_Settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'ירושלים', 1);
INSERT INTO Roy_Hadad_Settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'באר שבע', 3);

-- Schools
INSERT INTO Roy_Hadad_Schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'בית הספר לאומניות', 1);
INSERT INTO Roy_Hadad_Schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'בית הספר העירוני א', 2);
INSERT INTO Roy_Hadad_Schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'בית הספר העירוני ב', 3);
INSERT INTO Roy_Hadad_Schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'תיכון הדרום', 4);
INSERT INTO Roy_Hadad_Schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'בית ספר ללא כימיה', 1);

-- Students
INSERT INTO Roy_Hadad_Students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 1, 'דפנה', 'כהן');
INSERT INTO Roy_Hadad_Students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 1, 'יואב', 'לוי');
INSERT INTO Roy_Hadad_Students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 1, 'מאיה', 'ברק');

INSERT INTO Roy_Hadad_Students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 2, 'נועה', 'ישראלי');
INSERT INTO Roy_Hadad_Students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 2, 'איתי', 'מלכה');
INSERT INTO Roy_Hadad_Students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 2, 'שירה', 'ביטון');

INSERT INTO Roy_Hadad_Students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 3, 'רן', 'אברהם');
INSERT INTO Roy_Hadad_Students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 3, 'תמר', 'דוד');
INSERT INTO Roy_Hadad_Students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 3, 'אופק', 'שלום');

INSERT INTO Roy_Hadad_Students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 4, 'גל', 'פרץ');
INSERT INTO Roy_Hadad_Students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 4, 'ליאור', 'בן דוד');

INSERT INTO Roy_Hadad_Students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 5, 'עדי', 'חכם');
INSERT INTO Roy_Hadad_Students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 5, 'נועם', 'מור');

-- Exams
INSERT INTO Roy_Hadad_Exams (id, school_id, field, name, exam_date)
VALUES (exams_seq.NEXTVAL, 1, 'כימיה', 'מבחן כימיה א', DATE '2024-01-10');

INSERT INTO Roy_Hadad_Exams (id, school_id, field, name, exam_date)
VALUES (exams_seq.NEXTVAL, 1, 'מתמטיקה', 'מבחן מתמטיקה א', DATE '2024-02-10');

INSERT INTO Roy_Hadad_Exams (id, school_id, field, name, exam_date)
VALUES (exams_seq.NEXTVAL, 1, 'ביולוגיה', 'מבחן ביולוגיה א', DATE '2024-03-10');

INSERT INTO Roy_Hadad_Exams (id, school_id, field, name, exam_date)
VALUES (exams_seq.NEXTVAL, 2, 'ביולוגיה', 'מבחן ביולוגיה ב', DATE '2024-01-12');

INSERT INTO Roy_Hadad_Exams (id, school_id, field, name, exam_date)
VALUES (exams_seq.NEXTVAL, 2, 'כימיה', 'מבחן כימיה ב', DATE '2024-02-14');

INSERT INTO Roy_Hadad_Exams (id, school_id, field, name, exam_date)
VALUES (exams_seq.NEXTVAL, 2, 'מתמטיקה', 'מבחן מתמטיקה ב', DATE '2024-03-15');

INSERT INTO Roy_Hadad_Exams (id, school_id, field, name, exam_date)
VALUES (exams_seq.NEXTVAL, 3, 'מתמטיקה', 'מבחן מתמטיקה ג', DATE '2024-01-18');

INSERT INTO Roy_Hadad_Exams (id, school_id, field, name, exam_date)
VALUES (exams_seq.NEXTVAL, 3, 'כימיה', 'מבחן כימיה ג', DATE '2024-02-20');

INSERT INTO Roy_Hadad_Exams (id, school_id, field, name, exam_date)
VALUES (exams_seq.NEXTVAL, 4, 'כימיה', 'מבחן כימיה ד', DATE '2024-01-25');

INSERT INTO Roy_Hadad_Exams (id, school_id, field, name, exam_date)
VALUES (exams_seq.NEXTVAL, 4, 'היסטוריה', 'מבחן היסטוריה ד', DATE '2024-03-01');

INSERT INTO Roy_Hadad_Exams (id, school_id, field, name, exam_date)
VALUES (exams_seq.NEXTVAL, 5, 'ספרות', 'מבחן ספרות ה', DATE '2024-02-01');

-- Scores
-- בית הספר לאומניות
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (1, 1, 95);
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (2, 1, 88);
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (3, 1, 91);

INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (1, 2, 76);
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (2, 2, 82);
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (3, 2, 79);

INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (1, 3, 89);
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (2, 3, 93);
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (3, 3, 90);

-- בית הספר העירוני א
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (4, 4, 84);
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (5, 4, 87);
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (6, 4, 90);

INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (4, 5, 72);
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (5, 5, 69);
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (6, 5, 75);

INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (4, 6, 93);
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (5, 6, 96);
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (6, 6, 94);

-- בית הספר העירוני ב
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (7, 7, 91);
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (8, 7, 85);

INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (7, 8, 77);
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (8, 8, 81);

INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (7, 9, 95);
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (8, 9, 92);

-- תיכון הדרום
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (9, 10, 68);
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (10, 10, 74);

INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (9, 11, 83);
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (10, 11, 79);

-- בית ספר ללא כימיה
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (11, 12, 88);
INSERT INTO Roy_Hadad_Scores (exam_id, student_id, score) VALUES (11, 13, 73);

COMMIT;