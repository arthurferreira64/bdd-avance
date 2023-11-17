CREATE TABLE IF NOT EXISTS session_count(
    session_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES "user"(user_id) UNIQUE,
    session_count_value INTEGER
);

CREATE OR REPLACE FUNCTION session_count_func()
RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        INSERT INTO session_count (user_id, session_count_value)
        VALUES (NEW.user_id, 1)
        ON CONFLICT (user_id)
        DO UPDATE SET session_count_value = session_count.session_count_value + 1;

    ELSIF TG_OP = 'DELETE' THEN
        UPDATE session_count
        SET session_count_value = session_count.session_count_value - 1
        WHERE user_id = OLD.user_id AND session_count.session_count_value > 0;
    END IF;

    RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_update_session_count
AFTER INSERT OR DELETE ON session
FOR EACH ROW
EXECUTE FUNCTION session_count_func();