SELECT DISTINCT player
FROM game JOIN goal ON matchid = id
WHERE (team1='GER' or team2='GER') and teamid != 'GER'