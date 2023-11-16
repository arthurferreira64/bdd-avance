-- Création de la table tp
CREATE TABLE tp (
    tp_id SERIAL PRIMARY KEY,
    tp_name VARCHAR(255) NOT NULL
);

-- Insertion des données pour les 2 premiers tps
INSERT INTO tp (tp_name) VALUES ('tp1'), ('tp2');

-- Création de la table notebooks
CREATE TABLE notebooks (
    notebook_id SERIAL PRIMARY KEY,
    tp_id INT REFERENCES tp(tp_id),
    notebook_name VARCHAR(255) NOT NULL
);

-- Insertion des données pour les notebooks
INSERT INTO notebooks (tp_id, notebook_name) VALUES
    (1, '0_sql_intro_northwind.ipynb'),
    (2, '1_sql_advanced_queries.ipynb');

