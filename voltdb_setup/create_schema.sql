create demand table{
id,
datetime,
region,
total_job_workload, 
load_factor,
deadline}

create supply table{
id,
datetime,
region,
type,
cut-in,
rated,
cut-off,
power-efficiency}

create job table
id,
demand_id, 
supply_id,
status}
