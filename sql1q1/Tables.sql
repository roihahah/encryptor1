BEGIN
    BEGIN EXECUTE IMMEDIATE 'DROP TABLE roy_hadad_scores CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
    BEGIN EXECUTE IMMEDIATE 'DROP TABLE roy_hadad_exams CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
    BEGIN EXECUTE IMMEDIATE 'DROP TABLE roy_hadad_subjects CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
    BEGIN EXECUTE IMMEDIATE 'DROP TABLE roy_hadad_students CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
    BEGIN EXECUTE IMMEDIATE 'DROP TABLE roy_hadad_schools CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
    BEGIN EXECUTE IMMEDIATE 'DROP TABLE roy_hadad_settlements CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
    BEGIN EXECUTE IMMEDIATE 'DROP TABLE roy_hadad_areas CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;

    BEGIN EXECUTE IMMEDIATE 'DROP SEQUENCE areas_seq'; EXCEPTION WHEN OTHERS THEN NULL; END;
    BEGIN EXECUTE IMMEDIATE 'DROP SEQUENCE settlements_seq'; EXCEPTION WHEN OTHERS THEN NULL; END;
    BEGIN EXECUTE IMMEDIATE 'DROP SEQUENCE schools_seq'; EXCEPTION WHEN OTHERS THEN NULL; END;
    BEGIN EXECUTE IMMEDIATE 'DROP SEQUENCE students_seq'; EXCEPTION WHEN OTHERS THEN NULL; END;
    BEGIN EXECUTE IMMEDIATE 'DROP SEQUENCE exams_seq'; EXCEPTION WHEN OTHERS THEN NULL; END;
    BEGIN EXECUTE IMMEDIATE 'DROP SEQUENCE subjects_seq'; EXCEPTION WHEN OTHERS THEN NULL; END;
END;


create sequence areas_seq 
minvalue 1
maxvalue 9999999999999999999999999
start with 1
increment by 1
cache 20;

CREATE SEQUENCE settlements_seq
minvalue 1
maxvalue 9999999999999999999999999
start with 1
increment by 1
cache 20;

CREATE SEQUENCE schools_seq
minvalue 1
maxvalue 9999999999999999999999999
start with 1
increment by 1
cache 20;

CREATE SEQUENCE students_seq
minvalue 1
maxvalue 9999999999999999999999999
start with 1
increment by 1
cache 20;

CREATE SEQUENCE exams_seq
minvalue 1
maxvalue 9999999999999999999999999
start with 1
increment by 1
cache 20;

CREATE SEQUENCE subjects_seq
minvalue 1
maxvalue 9999999999999999999999999
start with 1
increment by 1
cache 20;

CREATE TABLE roy_hadad_areas (
    id          NUMBER PRIMARY KEY,
    name        VARCHAR2(255)
);

CREATE TABLE roy_hadad_settlements (
    id          NUMBER PRIMARY KEY,
    name        VARCHAR(255) UNIQUE NOT NULL,
    area_id     NUMBER,
    
    CONSTRAINT fk_settlements_area_id
        FOREIGN KEY (area_id)
        REFERENCES roy_hadad_areas(id)
);

CREATE TABLE roy_hadad_schools (
    id              NUMBER PRIMARY KEY,
    name            VARCHAR2(255),
    settlement_id   NUMBER,
    
    CONSTRAINT fk_schools_settlement_id
        FOREIGN KEY (settlement_id)
        REFERENCES roy_hadad_settlements(id)
);



CREATE TABLE roy_hadad_students (
    id          NUMBER PRIMARY KEY,
    school_id   NUMBER,
    first_name  VARCHAR2(255),
    last_name   VARCHAR2(255),

    CONSTRAINT fk_students_school_id
        FOREIGN KEY (school_id)
        REFERENCES roy_hadad_schools(id)
);

CREATE TABLE roy_hadad_subjects (
    id     NUMBER PRIMARY KEY,
    name   VARCHAR2(255) UNIQUE NOT NULL

);

CREATE TABLE roy_hadad_exams (
    id          NUMBER PRIMARY KEY,
    subject_id  NUMBER,
    name        VARCHAR2(255),
    exam_date   DATE,
    
    CONSTRAINT fk_exams_subject_id
        FOREIGN KEY (subject_id)
        REFERENCES roy_hadad_subjects(id)
);



CREATE TABLE roy_hadad_scores (
    exam_id     NUMBER,
    student_id  NUMBER,
    score       NUMBER,
    
    CONSTRAINT fk_scores_exam_id
        FOREIGN KEY (exam_id)
        REFERENCES roy_hadad_exams(id)
        ,
    CONSTRAINT fk_scores_student_id
        FOREIGN KEY (student_id)
        REFERENCES roy_hadad_students(id)
        ,
    CONSTRAINT chk_score
        CHECK (score BETWEEN 0 AND 100)
    
);
