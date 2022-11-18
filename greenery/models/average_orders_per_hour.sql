select avg(order_cnt) from
(select date_trunc('hour',created_at) as hr, count(distinct order_id) as order_cnt
from {{ ref('stg_orders') }}
group by hr) q