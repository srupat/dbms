select p.name, p.dob, t.name, m.name
from managers m inner join teams t on m.team_id = t.team_id
inner join players p on p.team_id = t.team_id
where p.jersey_no = 39