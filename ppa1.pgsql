SELECT name
from teams t inner join matches m
on m.host_team_id = t.team_id or m.guest_team_id = t.team_id
GROUP by t.name
HAVING count(name) > 3