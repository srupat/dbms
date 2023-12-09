select t.team_id, count(player_id)
from teams t inner join players p
on t.team_id = p.team_id
group by(t.team_id)
order by (t.team_id) asc