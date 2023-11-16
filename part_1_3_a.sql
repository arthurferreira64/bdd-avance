CREATE VIEW session_and_user AS
SELECT s.connected_at, u.firstname, u.lastname, u.email, u.username, u.created_at 
FROM session s
INNER JOIN "user" u ON s.user_id = u.user_id;



SELECT * FROM session_and_user;