-- select * from matches where host_team_score > 3;
-- conditional

-- select * from matches where host_team_id = 'T0001';
--logical

-- select * from players where name like '%ab%';
--like/not like

-- select * from players where name in ('Kabir', 'Joseph');
--in/not in

-- select * from players where jersey_no between 5 and 10;
-- between - and

-- select name from players where team_id is not null;
-- is null/is not null

-- select player_id from players order by jersey_no asc;
--order by

-- select count(player_id) from players where jersey_no between 5 and 10 group by team_id;
-- group by
-- aggregate functions

-- select count(player_id) from players where jersey_no between 5 and 10 group by team_id having count(player_id) > 2;
-- having

-- select * from players;

-- select player_id from players where jersey_no >50 union select player_id from players where name like 'R%';
-- set functions (union)

-- select player_id from players where jersey_no >50 intersect select player_id from players where name like 'R%';
-- set function(intersect)



