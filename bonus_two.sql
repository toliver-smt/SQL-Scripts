select project_nm, MAX(ipzg.latitude_no) as maximum_lat, MIN(ipzg.longitude_no) as maximum_long, MIN(ipzg.latitude_no) as minimum_lat, MIN(ipzg.longitude_no) as minimum_long, SUM(ipzg.latitude_no) as total_lat, SUM(ipzg.longitude_no) as total_long, AVG(ipzg.latitude_no) as average_lat, AVG(ipzg.longitude_no) as average_long
from ic_project ip
right join ic_project_location ipl on ip.project_id = ipl.project_id 
inner join ic_project_zone ipz on ipl.project_location_id = ipz.project_location_id
inner join ic_project_zone_geo ipzg on ipz.project_zone_id = ipzg.project_zone_id
group by project_nm