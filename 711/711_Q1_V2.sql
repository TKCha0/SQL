select plan_name, 
count(n_id) as people,
(select round(avg(datediff(now(),
 (select birthday from member where n_id = subscription.n_id))/365),1) 
 group by plan_name ) as avg_age 
from subscription
group by plan_name


