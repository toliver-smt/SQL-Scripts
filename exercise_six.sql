select ija.job_attribute_cd, attribute_nm, admin_flg, coalesce(value_txt, '') as "Value", coalesce(job_nm, '') as "Job Name"
from ic_job ij
inner join ic_job_attribute_xr ijax on ij.job_id = ijax.job_id and ij.job_id = 'JOB_4'
right join ic_job_attribute ija on ijax.job_attribute_cd = ija.job_attribute_cd