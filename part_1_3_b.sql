# Ajouter la colonne connected_at_month à la table session
ALTER TABLE session ADD COLUMN connected_at_month INTEGER;

# Mettre à jour la colonne connected_at_month avec les mois de connected_at
UPDATE session SET connected_at_month = EXTRACT(MONTH FROM connected_at);
