INSERT INTO RoyHadad_Settlements (settlement, area) VALUES ('חיפה','צפון');
INSERT INTO RoyHadad_Settlements (settlement, area) VALUES ('תל אביב','מרכז');
INSERT INTO RoyHadad_Settlements (settlement, area) VALUES ('ראשון לציון','מרכז');
INSERT INTO RoyHadad_Settlements (settlement, area) VALUES ('באר שבע','דרום');

INSERT INTO RoyHadad_Schools (name, settlement_id) VALUES ('בית הספר הריאלי',1);
INSERT INTO RoyHadad_Schools (name, settlement_id) VALUES ('גימנסיה הרצליה',2);
INSERT INTO RoyHadad_Schools (name, settlement_id) VALUES ('מקיף ראשון',3);
INSERT INTO RoyHadad_Schools (name, settlement_id) VALUES ('תיכון באר שבע',4);

INSERT INTO RoyHadad_Students (school_id, first_name, last_name)
VALUES (1,'דפנה','כהן');

INSERT INTO RoyHadad_Students (school_id, first_name, last_name)
VALUES (1,'יואב','לוי');

INSERT INTO RoyHadad_Students (school_id, first_name, last_name)
VALUES (2,'נועה','ביטון');

INSERT INTO RoyHadad_Students (school_id, first_name, last_name)
VALUES (3,'דן','ברק');

INSERT INTO RoyHadad_Students (school_id, first_name, last_name)
VALUES (4,'איתי','מלכה');

INSERT INTO RoyHadad_Exams (school_id, field, name, exam_date)
VALUES (1,'מתמטיקה','מבחן אמצע',DATE '2000-01-10');

INSERT INTO RoyHadad_Exams (school_id, field, name, exam_date)
VALUES (1,'אנגלית','מבחן סמסטר',DATE '2001-03-10');

INSERT INTO RoyHadad_Exams (school_id, field, name, exam_date)
VALUES (2,'פיזיקה','בוחן',DATE '1998-06-15');

INSERT INTO RoyHadad_Exams (school_id, field, name, exam_date)
VALUES (3,'ספרות','מבחן',DATE '2005-02-10');

INSERT INTO RoyHadad_Exams (school_id, field, name, exam_date)
VALUES (4,'היסטוריה','בוחן',DATE '1999-05-20');

INSERT INTO RoyHadad_Scores (exam_id, student_id, score)
VALUES (1,1,95);

INSERT INTO RoyHadad_Scores (exam_id, student_id, score)
VALUES (2,1,88);

INSERT INTO RoyHadad_Scores (exam_id, student_id, score)
VALUES (1,2,70);

INSERT INTO RoyHadad_Scores (exam_id, student_id, score)
VALUES (3,3,82);

INSERT INTO RoyHadad_Scores (exam_id, student_id, score)
VALUES (4,4,67);

INSERT INTO RoyHadad_Scores (exam_id, student_id, score)
VALUES (5,5,75);