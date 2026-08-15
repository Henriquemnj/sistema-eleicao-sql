# 🗳️ Sistema de Eleição SQL

Sistema de banco de dados desenvolvido para simular o gerenciamento de uma eleição, desde o cadastro de partidos, eleitores e candidatos até o registro e a contabilização dos votos.

O projeto foi desenvolvido inicialmente utilizando **MariaDB** e posteriormente implementado também em **PostgreSQL através do Supabase**, permitindo demonstrar o funcionamento do mesmo sistema em diferentes ambientes de banco de dados.

## 🛠️ Tecnologias utilizadas

- SQL
- MariaDB
- PostgreSQL
- Supabase
- GitHub

## 📂 Estrutura do banco de dados

O sistema é composto pelas tabelas:

- `partido`
- `eleitor`
- `candidato`
- `voto`

Foram utilizadas **chaves primárias, chaves estrangeiras, restrições UNIQUE e relacionamentos entre tabelas** para garantir a integridade dos dados.

---

# 🖥️ Implementação no MariaDB

## 1. Estrutura inicial do banco

![Estrutura inicial](eleição/01-estrutura-inicial.png)

## 2. Partidos cadastrados

![Partidos cadastrados](eleição/02-partidos-cadastrados.png)

## 3. Eleitores cadastrados

![Eleitores cadastrados](eleição/03-eleitores-cadastrados.png)

## 4. Candidatos cadastrados

![Candidatos cadastrados](eleição/04-candidatos-cadastrados.png)

## 5. Eleição cadastrada

![Eleição cadastrada](eleição/05-eleicao-cadastrada.png)

## 6. Registro dos votos

![Votos registrados](eleição/06-votos-registrados.png)

## 7. Regra de voto único

Foi aplicada uma restrição para impedir que um mesmo eleitor registre mais de um voto.

![Regra de voto único](eleição/07-regra-voto-unico.png)

## 8. Consulta com JOIN

Consulta relacionando informações presentes em diferentes tabelas do sistema.

![JOIN votação](eleição/08-join-votacao.png)

## 9. Ranking da votação

Contabilização dos votos utilizando `COUNT`, `GROUP BY` e `ORDER BY`.

![Ranking votação](eleição/09-ranking-votacao.png)

## 10. Estrutura final da tabela de votos

![Estrutura final](eleição/10-estrutura-final-voto.png)

---

# ☁️ Implementação no PostgreSQL — Supabase

Após a implementação no MariaDB, o banco foi recriado no **PostgreSQL utilizando o Supabase**.

## 11. Estrutura do projeto no Supabase

![Supabase Dashboard](eleição/11_supabase_dashboard.png)

## 12. Cadastro dos partidos

![Partidos Supabase](eleição/12_supabase_partidos.png)

## 13. Inserção dos eleitores

![Inserção de eleitores](eleição/13_supabase_insert_eleitores.png)

## 14. Registro dos votos

![Votos Supabase](eleição/14_supabase_votos.png)

## 15. Consulta relacionando eleitor, candidato e partido

A consulta utiliza `INNER JOIN` para relacionar as tabelas `voto`, `eleitor`, `candidato` e `partido`.

![JOIN Supabase](eleição/15_supabase_join.png)

## 16. Total de votos por candidato

Consulta utilizando `LEFT JOIN`, `COUNT`, `GROUP BY` e `ORDER BY` para gerar o ranking dos candidatos.

![Total de votos](eleição/16_supabase_total_votos.png)

## 17. Visualização gráfica dos resultados

Os resultados da votação também foram visualizados através dos recursos gráficos disponíveis no Supabase.

![Gráfico de votos](eleição/17_supabase_grafico_votos.png)

---

# 📁 Arquivos SQL

Os scripts utilizados no projeto estão disponíveis na pasta [`sql`](sql/):

- `01_criacao_tabelas.sql` — criação das tabelas e relacionamentos.
- `02_insercao_dados.sql` — inserção dos partidos, eleitores, candidatos e votos.
- `03_consultas.sql` — consultas utilizando JOIN, agregação e contabilização dos votos.

## 🎯 Conceitos aplicados

Durante o desenvolvimento foram aplicados conceitos de:

- Modelagem de banco de dados
- DDL e DML
- Primary Keys e Foreign Keys
- Constraints
- `UNIQUE`
- `INSERT`
- `SELECT`
- `INNER JOIN`
- `LEFT JOIN`
- `COUNT`
- `GROUP BY`
- `ORDER BY`
- Integridade referencial
- Migração entre MariaDB e PostgreSQL

---

## 👨‍💻 Autor

**Henrique Santos**

Estudante de Análise e Desenvolvimento de Sistemas.
