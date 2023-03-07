select project_nm, status_cd, job_nm, class_nm
from ic_project ip
inner join ic_project_job ipj on ip.project_id = ipj.project_id
inner join ic_job ij on ipj.job_id = ij.job_id
where status_cd like 'ACTIVE' and ij.create_dt<'2018-05-01'