-- Création de la vue tp_and_notebook
CREATE VIEW tp_and_notebook AS
SELECT notebooks.notebook_id, notebooks.notebook_name, tp.tp_name
FROM notebooks
JOIN tp ON notebooks.tp_id = tp.tp_id;

-- Affichage du contenu de la vue
SELECT * FROM tp_and_notebook;