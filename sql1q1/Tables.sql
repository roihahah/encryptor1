-- drop tables if exist
BEGIN EXECUTE IMMEDIATE 'DROP TABLE RoyHadad_Scores CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE RoyHadad_Exams CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE RoyHadad_Students CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE RoyHadad_Schools CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE RoyHadad_Settlements CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE RoyHadad_Areas CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
-- drop sequences if exist
BEGIN EXECUTE IMMEDIATE 'DROP SEQUENCE areas_seq'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP SEQUENCE settlements_seq'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP SEQUENCE schools_seq'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP SEQUENCE students_seq'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP SEQUENCE exams_seq'; EXCEPTION WHEN OTHERS THEN NULL; END;
/


CREATE SEQUENCE areas_seq START WITH 1;

CREATE SEQUENCE settlements_seq START WITH 1;

CREATE SEQUENCE schools_seq START WITH 1;

CREATE SEQUENCE students_seq START WITH 1;

CREATE SEQUENCE exams_seq START WITH 1;

CREATE TABLE Roy_Hadad_Areas (
    id          NUMBER PRIMARY KEY,
    name        VARCHAR2(255)
);

CREATE TABLE Roy_Hadad_Settlements (
    id          NUMBER PRIMARY KEY,
    name        VARCHAR(255) UNIQUE NOT NULL,
    area_id     NUMBER,
    
    CONSTRAINT fk_settlements_area_id
        FOREIGN KEY (area_id)
        REFERENCES RoyHadad_Areas(id)
);

CREATE TABLE Roy_Hadad_Schools (
    id              NUMBER PRIMARY KEY,
    name            VARCHAR2(255),
    settlement_id   NUMBER,
    
    CONSTRAINT fk_schools_settlement_id
        FOREIGN KEY (settlement_id)
        REFERENCES RoyHadad_Settlements(id)
);



CREATE TABLE Roy_Hadad_Students (
    id          NUMBER PRIMARY KEY,
    school_id   NUMBER,
    first_name  VARCHAR2(255),
    last_name   VARCHAR2(255),

    CONSTRAINT fk_students_school_id
        FOREIGN KEY (school_id)
        REFERENCES RoyHadad_Schools(id)
);

CREATE TABLE Roy_Hadad_Exams (
    id          NUMBER PRIMARY KEY,
    school_id   NUMBER,
    field       VARCHAR2(255),
    name        VARCHAR2(255),
    exam_date   DATE,
    
    CONSTRAINT fk_exams_school_id
        FOREIGN KEY (school_id)
        REFERENCES RoyHadad_Schools(id)
);

CREATE TABLE Roy_Hadad_Scores(
    exam_id     NUMBER,
    student_id  NUMBER,
    score       NUMBER,
    
    CONSTRAINT fk_scores_exam_id
        FOREIGN KEY (exam_id)
        REFERENCES RoyHadad_Exams(id)
        ,
    CONSTRAINT fk_scores_student_id
        FOREIGN KEY (student_id)
        REFERENCES RoyHadad_Students(id)
        ,
    CONSTRAINT chk_score
        CHECK (score BETWEEN 0 AND 100)
    
);
