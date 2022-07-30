SELECT 
    COUNT(c.cancao) AS cancoes,
    COUNT(DISTINCT a.artista_id) AS artistas,
    COUNT(DISTINCT a.album) AS albuns
FROM
    SpotifyClone.cancoes AS c
        INNER JOIN
    SpotifyClone.albuns AS a ON c.album_id = a.album_id;