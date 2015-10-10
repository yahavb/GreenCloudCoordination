create demand table{
id,
datetime,
region,
total_job_workload, 
load_factor,
deadline,
required_core_hour}

create supply table{
id,
datetime,
region,
type,
cut-in,
rated,
cut-off,
power-efficiency,
avail_cores_hour}

create job table
id,
demand_id, 
supply_id,
status,
core_hour}
