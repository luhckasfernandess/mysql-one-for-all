SELECT 
    art.artista AS artista,
    alb.album AS album,
    COUNT(DISTINCT seg.usuario_id) AS seguidores
FROM
    SpotifyClone.artistas AS art
        INNER JOIN
    SpotifyClone.albuns AS alb ON art.artista_id = alb.artista_id
        INNER JOIN
    SpotifyClone.seguidores AS seg ON art.artista_id = seg.artista_id
GROUP BY artista , album
ORDER BY seguidores DESC , artista , album;