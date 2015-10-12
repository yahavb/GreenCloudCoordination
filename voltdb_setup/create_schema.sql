file -inlinebatch END_OF_BATCH
CREATE TABLE demand
(
  id   varchar(50)    NOT NULL
, datetime   datetime NOT NULL
, region  varchar(50) NOT NULL
, total_job_workload integer     NOT NULL
, load_factor varchar(50) NOT NULL
, CONSTRAINT d_id PRIMARY KEY
  (
    id
  )
);

CREATE TABLE demand_status
(
  demand_id varchar(50) NOT NULL
  , deadline datetime NOT NULL
  , required_core_hour integer     NOT NULL
  , CONSTRAINT pk_ds_id PRIMARY KEY
  (
    demand_id
  )
);

CREATE TABLE supply
(
  id    varchar(50)   NOT NULL
, datetime   datetime NOT NULL
, region  varchar(50) NOT NULL
, supply_type varchar(50) NOT NULL
, CONSTRAINT s_id PRIMARY KEY
  (
    id
  )
);

CREATE TABLE supply_status
(
  supply_id varchar(50) NOT NULL
  , cut_in integer     NOT NULL
  , rated integer     NOT NULL
  , cut_off integer     NOT NULL
  , CONSTRAINT pk_ss_id PRIMARY KEY
  (
    supply_id
  )
);

CREATE TABLE job
(
  id varchar(50) NOT NULL
  , demand_id varchar(50) NOT NULL
  , demand_id varchar(50) NOT NULL
  , status integer     NOT NULL
  , core_hours integer     NOT NULL
  , CONSTRAINT j_id PRIMARY KEY
  (
    id
  )
);

PARTITION TABLE demand_status ON COLUMN datetime;
PARTITION TABLE supply_status ON COLUMN datetime;
END_OF_BATCH
