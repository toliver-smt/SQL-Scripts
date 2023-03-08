select project_nm, count(distinct ipl.project_location_id) as num_locations, count(distinct ipz.project_zone_id) as num_zones, count(ipzg.longitude_no) as num_coords
from ic_project ip
inner join ic_project_location ipl on ip.project_id = ipl.project_id 
inner join ic_project_zone ipz on ipl.project_location_id = ipz.project_location_id
inner join ic_project_zone_geo ipzg on ipz.project_zone_id = ipzg.project_zone_id
group by project_nm