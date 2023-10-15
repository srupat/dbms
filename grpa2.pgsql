select p.name
from players p inner join teams t
on p.team_id = t.team_id
where t.name = 'Arawali' and p.dob = (select min(dob) from players)