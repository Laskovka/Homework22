SELECT player
FROM game JOIN goal ON (id=matchid)
WHERE stadium LIKE 'National Stadium, Warsaw'