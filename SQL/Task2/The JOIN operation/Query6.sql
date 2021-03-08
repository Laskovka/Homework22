SELECT mdate, teamname
FROM game JOIN eteam ON (team1=eteam.id)
WHERE coach LIKE 'Fernando Santos'