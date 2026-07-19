with customers as (

    select * from {{ ref('customers') }}

),

segmented as (

    select
        customer_id,
        first_name,
        last_name,
        number_of_orders,
        customer_lifetime_value,

        case
            when number_of_orders is null then 'no_order'
            when number_of_orders = 1 then 'new'
            when number_of_orders between 2 and 4 then 'returning'
            else 'loyal'
        end as customer_segment

    from customers

)

select * from segmented
