-- Création de la table user
CREATE TABLE "user" (
    user_id INT PRIMARY KEY,
    firstname VARCHAR(255),
    lastname VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    username VARCHAR(255) UNIQUE CHECK(LENGTH(username) > 8),
    password VARCHAR(255) CHECK(LENGTH(password) > 8),
    created_at TIMESTAMP
);

-- Création de la table user_email_verification
CREATE TABLE user_email_verification (
    uev_id INT PRIMARY KEY,
    user_id INT,
    verified_at TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES "user"(user_id)
);

-- Création de la table session
CREATE TABLE session (
    session_id INT PRIMARY KEY,
    user_id INT,
    connected_at TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES "user"(user_id)
);