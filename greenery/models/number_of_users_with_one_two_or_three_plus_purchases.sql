select case when cnt_order = 1 then '1'
            when cnt_order = 2 then '2'
            else '3+' end as total_purchase, count(distinct user_id) as cnt_user
from
(select user_id, count(distinct order_id) as cnt_order
from {{ ref('stg_orders') }}
group by user_id) q

group by total_purchase