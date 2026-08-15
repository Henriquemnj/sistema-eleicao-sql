-- Consulta completa relacionando eleitor, candidato e partido
SELECT
    e.nome_eleitor AS eleitor,
    c.nome_candidato AS candidato,
    c.numero,
    c.cargo,
    p.sigla AS partido,
    v.data_voto
FROM voto v
INNER JOIN eleitor e
    ON v.id_eleitor = e.id_eleitor
INNER JOIN candidato c
    ON v.id_candidato = c.id_candidato
INNER JOIN partido p
    ON c.id_partido = p.id_partido
ORDER BY v.id_voto;

-- Total de votos por candidato
SELECT
    c.nome_candidato AS candidato,
    c.numero,
    p.sigla AS partido,
    COUNT(v.id_voto) AS total_votos
FROM candidato c
LEFT JOIN voto v
    ON c.id_candidato = v.id_candidato
INNER JOIN partido p
    ON c.id_partido = p.id_partido
GROUP BY
    c.id_candidato,
    c.nome_candidato,
    c.numero,
    p.sigla
ORDER BY total_votos DESC;
