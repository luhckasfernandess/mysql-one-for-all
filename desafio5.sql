SELECT 
    c.cancao AS cancao, COUNT(c.cancao_id) AS reproducoes
FROM
    SpotifyClone.cancoes AS c
        INNER JOIN
    SpotifyClone.historico AS h ON c.cancao_id = h.cancao_id
GROUP BY c.cancao
ORDER BY reproducoes DESC , cancao ASC
LIMIT 2;