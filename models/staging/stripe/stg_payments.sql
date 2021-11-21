with payment as (
    
    select
        id as customer_id,
        orderid as order_id,
        paymentmethod,
        status,
        amount / 100 as amount,
        created as created_at

    from stripe.payment
)

select * from payment