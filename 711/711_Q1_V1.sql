CREATE OR REPLACE VIEW Q1 AS
SELECT subscription.plan_name, subscription.n_id, member.birthday
FROM subscription
JOIN member
ON subscription.n_id = member.n_id;

SELECT plan_name, COUNT(n_id) AS people, ROUND(AVG(DATEDIFF(NOW(), birthday)/365),1) AS avg_age
FROM Q1
GROUP BY plan_name