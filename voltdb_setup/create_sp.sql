
LOAD CLASSES coordinator-procs.jar;
file -inlinebatch END_OF_2ND_BATCH

-- stored procedures
CREATE PROCEDURE FROM CLASS coordinator.Initialize;
CREATE PROCEDURE FROM CLASS coordinator.Results;
CREATE PROCEDURE PARTITION ON TABLE coordinator COLUMN datetime FROM CLASS coordinator.supply;
CREATE PROCEDURE FROM CLASS coordinator.FindMatchingJobs;
CREATE PROCEDURE FROM CLASS coordinator.GetJobsStateMap;

END_OF_2ND_BATCH
