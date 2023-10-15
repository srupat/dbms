select p.name, p.dob
from players p inner join teams t
on p.team_id = t.team_id
where t.name = 'Amigos' or t.name = 'Black Eagles'