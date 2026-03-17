--a + b
ALTER TABLE RoyHadad_Settlements
ADD status NUMBER DEFAULT 1;

--c
CREATE OR REPLACE PACKAGE RoyHadad_city_updater AS
    PROCEDURE RoyHadad_update_city;
    END RoyHadad_city_updater; 
/  
CREATE OR REPLACE PACKAGE BODY RoyHadad_city_updater AS 
    PROCEDURE RoyHadad_update_city IS
    BEGIN
        UPDATE RoyHadad_Settlements
        SET status = 2
        WHERE status = 1;
    END RoyHadad_update_city;
END RoyHadad_city_updater;
/

--d
BEGIN
    DBMS_SCHEDULER.create_job(
        job_name => 'ROYHADAD_JOB',
        job_type => 'PLSQL_BLOCK',
        job_action => 'BEGIN RoyHadad_city_updater.RoyHadad_update_city; END;',
        start_date => SYSTIMESTAMP,
        repeat_interval => 'FREQ=SECONDLY; INTERVAL=30',
        enabled => TRUE
    );
    END;
    /
    
