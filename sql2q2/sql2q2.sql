--a + b
ALTER TABLE Roy_Hadad_Settlements
ADD status NUMBER DEFAULT 1;

--c
CREATE OR REPLACE PACKAGE Roy_Hadad_city_updater AS
    PROCEDURE Roy_Hadad_update_city;
END Roy_Hadad_city_updater; 
  
CREATE OR REPLACE PACKAGE BODY Roy_Hadad_city_updater AS 
    PROCEDURE Roy_Hadad_update_city AS
    BEGIN
        UPDATE Roy_Hadad_Settlements
           SET status = 2
         WHERE status = 1;
         
         COMMIT;
    END Roy_Hadad_update_city;
END Roy_Hadad_city_updater;


--d
BEGIN
    DBMS_SCHEDULER.drop_job('ROYHADAD_JOB');
END;

BEGIN
    DBMS_SCHEDULER.create_job(
        job_name => 'UPDATE_SETTLEMENT_STATUS_JOB',
        job_type => 'PLSQL_BLOCK',
        job_action => 'BEGIN Roy_Hadad_city_updater.Roy_Hadad_update_city; END;',
        start_date => SYSTIMESTAMP,
        repeat_interval => 'FREQ=SECONDLY; INTERVAL=30',
        enabled => TRUE
    );
END;
    
    
