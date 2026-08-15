INSERT INTO partido (nome, sigla) VALUES
('Partido dos Trabalhadores', 'PT'),
('Partido Liberal', 'PL'),
('Movimento Democrático Brasileiro', 'MDB'),
('Partido Social Democrático', 'PSD'),
('União Brasil', 'UNIÃO');

INSERT INTO eleitor (nome_eleitor, cpf, titulo_eleitor) VALUES
('João Silva', '123.456.789-01', '100000000001'),
('Maria Oliveira', '234.567.890-12', '100000000002'),
('Carlos Souza', '345.678.901-23', '100000000003'),
('Ana Santos', '456.789.012-34', '100000000004'),
('Pedro Almeida', '567.890.123-45', '100000000005'),
('Juliana Costa', '678.901.234-56', '100000000006'),
('Lucas Ferreira', '789.012.345-67', '100000000007'),
('Fernanda Lima', '890.123.456-78', '100000000008'),
('Rafael Martins', '901.234.567-89', '100000000009'),
('Beatriz Rocha', '012.345.678-90', '100000000010');

INSERT INTO candidato (nome_candidato, numero, cargo, id_partido) VALUES
('Carlos Mendes', 13, 'Presidente', 1),
('Roberto Almeida', 22, 'Presidente', 2),
('Mariana Souza', 15, 'Presidente', 3),
('Fernando Costa', 55, 'Presidente', 4),
('Patricia Oliveira', 44, 'Presidente', 5);

INSERT INTO voto (id_eleitor, id_candidato) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 1),
(5, 3),
(6, 2),
(7, 1),
(8, 4),
(9, 2),
(10, 5);
