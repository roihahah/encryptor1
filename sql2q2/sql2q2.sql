--a + b
ALTER TABLE roy_hadad_settlements
  ADD status NUMBER DEFAULT 1;

--c
CREATE OR REPLACE PACKAGE roy_hadad_city_updater AS
    PROCEDURE roy_hadad_update_city;
END Roy_Hadad_city_updater; 
  
CREATE OR REPLACE PACKAGE BODY roy_hadad_city_updater AS 
    PROCEDURE roy_hadad_update_city AS
    BEGIN
        UPDATE roy_hadad_settlements
           SET status = 2
         WHERE status = 1;
         
         COMMIT;
    END roy_hadad_update_city;
END roy_hadad_city_updater;


--d
BEGIN
    DBMS_SCHEDULER.drop_job('UPDATE_SETTLEMENT_STATUS_JOB');
END;

BEGIN
    DBMS_SCHEDULER.create_job(
        job_name => 'ROY_HADAD_UPDATE_SETTLEMENT_STATUS_JOB',
        job_type => 'PLSQL_BLOCK',
        job_action => 'BEGIN roy_hadad_city_updater.roy_hadad_update_city; END;',
        start_date => SYSTIMESTAMP,
        repeat_interval => 'FREQ=SECONDLY; INTERVAL=30',
        enabled => TRUE
    );
END;
    
    
