CREATE TABLE partido (
    id_partido SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    sigla VARCHAR(10)
);

CREATE TABLE eleitor (
    id_eleitor SERIAL PRIMARY KEY,
    nome_eleitor VARCHAR(100),
    cpf VARCHAR(14) UNIQUE,
    titulo_eleitor VARCHAR(20) UNIQUE
);

CREATE TABLE candidato (
    id_candidato SERIAL PRIMARY KEY,
    nome_candidato VARCHAR(100),
    numero INT,
    cargo VARCHAR(50),
    id_partido INT,
    CONSTRAINT fk_candidato_partido
        FOREIGN KEY (id_partido)
        REFERENCES partido(id_partido)
);

CREATE TABLE voto (
    id_voto SERIAL PRIMARY KEY,
    id_eleitor INT UNIQUE,
    id_candidato INT,
    data_voto TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_voto_eleitor
        FOREIGN KEY (id_eleitor)
        REFERENCES eleitor(id_eleitor),
    CONSTRAINT fk_voto_candidato
        FOREIGN KEY (id_candidato)
        REFERENCES candidato(id_candidato)
);
