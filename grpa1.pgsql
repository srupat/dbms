select distinct m.match_num, name
from matches m inner join match_referees a
on m.match_num = a.match_num, referees r
where m.match_date = '2020-05-15' and a.fourth_referee = r.referee_id