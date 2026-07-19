with orders as (

    select * from {{ ref('orders') }}

),

monthly as (

    select
        date_trunc('month', order_date) as order_month,
        count(distinct order_id) as number_of_orders,
        count(distinct customer_id) as number_of_customers,
        sum(amount) as total_revenue

    from orders

    group by 1

)

select
    order_month,
    number_of_orders,
    number_of_customers,
    total_revenue,
    round(total_revenue / nullif(number_of_orders, 0), 2) as average_order_value

from monthly

order by order_month
