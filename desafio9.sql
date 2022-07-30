SELECT 
    usuario_id AS quantidade_musicas_no_historico
FROM
    SpotifyClone.historico
WHERE
    usuario_id = 3
GROUP BY usuario_id;