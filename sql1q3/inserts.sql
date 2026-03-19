-- Areas
INSERT INTO roy_hadad_areas (id, name) VALUES (areas_seq.NEXTVAL, 'מרכז');
INSERT INTO roy_hadad_areas (id, name) VALUES (areas_seq.NEXTVAL, 'צפון');
INSERT INTO roy_hadad_areas (id, name) VALUES (areas_seq.NEXTVAL, 'דרום');

-- Settlements
INSERT INTO roy_hadad_settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'תל אביב', 1);
INSERT INTO roy_hadad_settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'חיפה', 2);
INSERT INTO roy_hadad_settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'ירושלים', 1);
INSERT INTO roy_hadad_settlements (id, name, area_id) VALUES (settlements_seq.NEXTVAL, 'באר שבע', 3);

-- Schools
INSERT INTO roy_hadad_schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'בית הספר לאומניות', 1);
INSERT INTO roy_hadad_schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'בית הספר העירוני א', 2);
INSERT INTO roy_hadad_schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'בית הספר העירוני ב', 3);
INSERT INTO roy_hadad_schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'תיכון הדרום', 4);
INSERT INTO roy_hadad_schools (id, name, settlement_id) VALUES (schools_seq.NEXTVAL, 'בית ספר ללא כימיה', 1);

-- Students
INSERT INTO roy_hadad_students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 1, 'דפנה', 'כהן');
INSERT INTO roy_hadad_students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 1, 'יואב', 'לוי');
INSERT INTO roy_hadad_students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 1, 'מאיה', 'ברק');

INSERT INTO roy_hadad_students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 2, 'נועה', 'ישראלי');
INSERT INTO roy_hadad_students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 2, 'איתי', 'מלכה');
INSERT INTO roy_hadad_students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 2, 'שירה', 'ביטון');

INSERT INTO roy_hadad_students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 3, 'רן', 'אברהם');
INSERT INTO roy_hadad_students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 3, 'תמר', 'דוד');
INSERT INTO roy_hadad_students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 3, 'אופק', 'שלום');

INSERT INTO roy_hadad_students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 4, 'גל', 'פרץ');
INSERT INTO roy_hadad_students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 4, 'ליאור', 'בן דוד');

INSERT INTO roy_hadad_students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 5, 'עדי', 'חכם');
INSERT INTO roy_hadad_students (id, school_id, first_name, last_name) VALUES (students_seq.NEXTVAL, 5, 'נועם', 'מור');

--subjects
INSERT INTO roy_hadad_subjects(id , name)
VALUES (subjects_seq.NEXTVAL, 'כימיה');

INSERT INTO roy_hadad_subjects(id , name)
VALUES (subjects_seq.NEXTVAL, 'מתמטיקה');

INSERT INTO roy_hadad_subjects(id , name)
VALUES (subjects_seq.NEXTVAL, 'ביולוגיה');

INSERT INTO roy_hadad_subjects(id , name)
VALUES (subjects_seq.NEXTVAL, 'היסטוריה');

INSERT INTO roy_hadad_subjects(id , name)
VALUES (subjects_seq.NEXTVAL, 'ספרות');

-- Exams
INSERT INTO roy_hadad_exams (id, subject_id, name, exam_date)
VALUES (exams_seq.NEXTVAL, 1, 'מבחן כימיה א', TO_DATE('2024-01-10', 'YYYY-MM-DD'));

INSERT INTO roy_hadad_exams (id, subject_id, name, exam_date)
VALUES (exams_seq.NEXTVAL, 2, 'מבחן מתמטיקה א', TO_DATE('2024-02-10', 'YYYY-MM-DD'));

INSERT INTO roy_hadad_exams (id, subject_id, name, exam_date)
VALUES (exams_seq.NEXTVAL, 3, 'מבחן ביולוגיה א', TO_DATE('2024-03-10', 'YYYY-MM-DD'));

INSERT INTO roy_hadad_exams (id, subject_id, name, exam_date)
VALUES (exams_seq.NEXTVAL, 3, 'מבחן ביולוגיה ב', TO_DATE('2024-01-12', 'YYYY-MM-DD'));

INSERT INTO roy_hadad_exams (id, subject_id, name, exam_date)
VALUES (exams_seq.NEXTVAL, 1, 'מבחן כימיה ב', TO_DATE('2024-02-14', 'YYYY-MM-DD'));

INSERT INTO roy_hadad_exams (id, subject_id, name, exam_date)
VALUES (exams_seq.NEXTVAL, 2, 'מבחן מתמטיקה ב', TO_DATE('2024-03-15', 'YYYY-MM-DD'));

INSERT INTO roy_hadad_exams (id, subject_id, name, exam_date)
VALUES (exams_seq.NEXTVAL, 2, 'מבחן מתמטיקה ג', TO_DATE('2024-01-18', 'YYYY-MM-DD'));

INSERT INTO roy_hadad_exams (id, subject_id, name, exam_date)
VALUES (exams_seq.NEXTVAL, 1, 'מבחן כימיה ג', TO_DATE('2024-02-20', 'YYYY-MM-DD'));

INSERT INTO roy_hadad_exams (id, subject_id, name, exam_date)
VALUES (exams_seq.NEXTVAL, 1, 'מבחן כימיה ד', TO_DATE('2024-01-25', 'YYYY-MM-DD'));

INSERT INTO roy_hadad_exams (id, subject_id, name, exam_date)
VALUES (exams_seq.NEXTVAL, 4, 'מבחן היסטוריה ד', TO_DATE('2024-03-01', 'YYYY-MM-DD'));

INSERT INTO roy_hadad_exams (id, subject_id, name, exam_date)
VALUES (exams_seq.NEXTVAL, 5, 'מבחן ספרות ה', TO_DATE('2024-02-01', 'YYYY-MM-DD'));

-- Scores
-- בית הספר לאומניות
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (1, 1, 95);
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (2, 1, 88);
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (3, 1, 91);

INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (1, 2, 76);
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (2, 2, 82);
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (3, 2, 79);

INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (1, 3, 89);
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (2, 3, 93);
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (3, 3, 90);

-- בית הספר העירוני א
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (4, 4, 84);
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (5, 4, 87);
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (6, 4, 90);

INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (4, 5, 72);
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (5, 5, 69);
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (6, 5, 75);

INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (4, 6, 93);
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (5, 6, 96);
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (6, 6, 94);

-- בית הספר העירוני ב
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (7, 7, 91);
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (8, 7, 85);

INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (7, 8, 77);
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (8, 8, 81);

INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (7, 9, 95);
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (8, 9, 92);

-- תיכון הדרום
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (9, 10, 68);
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (10, 10, 74);

INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (9, 11, 83);
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (10, 11, 79);

-- בית ספר ללא כימיה
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (11, 12, 88);
INSERT INTO roy_hadad_scores (exam_id, student_id, score) VALUES (11, 13, 73);

COMMIT;