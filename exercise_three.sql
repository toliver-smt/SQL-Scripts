select project_location_id, zone_nm, color_txt, ipz.project_zone_id, latitude_no, longitude_no
from ic_project_zone ipz
inner join ic_project_zone_geo ipzg on ipz.project_zone_id = ipzg.project_zone_id
where ipz.project_zone_id like 'Zone_1'