CREATE VIEW session_per_month AS
SELECT count(*), connected_at_month
FROM session
GROUP BY connected_at_month
ORDER BY connected_at_month;

SELECT * FROM session_per_month;