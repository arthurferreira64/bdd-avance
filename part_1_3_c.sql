CREATE VIEW very_active_users_may AS
SELECT u.username
FROM "user" u
JOIN session s ON u.user_id = s.user_id
WHERE EXTRACT(MONTH FROM s.connected_at) = 5  -- Sélectionner les sessions en mai
GROUP BY u.username
HAVING COUNT(s.session_id) > 0.6 * (SELECT AVG(session_count) FROM (SELECT COUNT(session_id) AS session_count FROM session WHERE EXTRACT(MONTH FROM connected_at) = 5 GROUP BY user_id) AS user_sessions);

select * FROM very_active_users_may;