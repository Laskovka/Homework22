SELECT player, teamid, coach, gtime
FROM goal JOIN eteam on teamid=id
WHERE gtime<=10