select project_nm, ipzg.project_zone_id, latitude_no, ipzg.longitude_no
from ic_project ip
inner join ic_project_location ipl on ip.project_id = ipl.project_id
inner join ic_project_zone ipz on ipl.project_location_id = ipz.project_location_id
inner join ic_project_zone_geo ipzg on ipz.project_zone_id = ipzg.project_zone_id