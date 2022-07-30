SELECT 
    art.artista AS artista, alb.album AS album
FROM
    SpotifyClone.artistas AS art
        INNER JOIN
    SpotifyClone.albuns AS alb ON art.artista_id = alb.artista_id
WHERE art.artista = 'Walter Phoenix'
GROUP BY artista, album
ORDER BY album;