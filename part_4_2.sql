CREATE TABLE username_history (
    username_history_id SERIAL PRIMARY KEY,
    user_id INT,
    username_new VARCHAR(255),
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE OR REPLACE FUNCTION update_username_history()
RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'INSERT' OR TG_OP = 'UPDATE' THEN
        INSERT INTO username_history (user_id, username_new)
        VALUES (NEW.user_id, NEW.username);
    END IF;

    RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_update_username
AFTER INSERT OR UPDATE ON "user"
FOR EACH ROW
EXECUTE FUNCTION update_username_history();



-- Exemple d'INSERT
INSERT INTO "user" (user_id, firstname, lastname, email, username, password, created_at) VALUES   (3569, 'test', 'tes', 'tes@example.com', 'kitestestemanthony', 'H%pW62bE4M', '2023-05-13 16:31:00');

-- Exemple d'UPDATE
UPDATE "user" SET username = 'test798789789' WHERE user_id = 3569;

-- Vérifier la table username_history
SELECT * FROM username_history;