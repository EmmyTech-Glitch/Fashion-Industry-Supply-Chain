--   Write a query to select all columns for products where the Product type is 'skincare'.
select *  from [supply_chain_data work]
where Product_type = 'skincare'
-- Retrieve a list of unique Product type categories available in the dataset.
select distinct product_type from [supply_chain_data work]
-- Find all products (SKU) with a Price greater than 50.
select product_type, sku, price from [supply_chain_data work]
where price > 50
--List the SKU and Revenue generated for items that have a Stock levels count of less than 10.
select sku, revenue_generated,count(stock_levels) as total_stock_level from [supply_chain_data work]
group by sku,revenue_generated
having  count (Stock_levels) < 10

-- Find all records where the Location is 'Mumbai' or 'Delhi'.
 select * from [supply_chain_data work]
  where [location] in ('mumbai', 'delhi')

  --Retrieve all rows where the Inspection results are 'Fail'.
   select * from [supply_chain_data work]
   where Inspection_results = 'fail'

   --List all columns for products where the Customer demographics is 'Female' and order by Price from highest to lowest.
   select * from [supply_chain_data work]
    where customer_demographics ='female'
    order by price desc

    --Find all products where the Supplier name contains 'Supplier 1'.
    select product_type,supplier_name  from [supply_chain_data work]
     where supplier_name = 'supplier 1'

     --Write a query to find products where Availability is between 20 and 50.
     select product_type, [availability] from [supply_chain_data work]
      where  [availability] between 20 and 50

      --Show the SKU, Shipping carriers, and Shipping costs for items shipped via 'Carrier B'.
       select SKU, shipping_carriers,shipping_costs   from [supply_chain_data work]
       where shipping_carriers = 'Carrier B'

       --Calculate the total revenue generated across all products in the dataset.
         select product_type,sum(revenue_generated) as total_revenue 
         from [supply_chain_data work]
         group by product_type

         --Find the average price of a product grouped by its Product type.
         select product_type, avg(price) as avg_price from  [supply_chain_data work]
         group by product_type

         --What is the total Number of products sold for each Transportation modes? Order the result by total sales descending.
          select transportation_modes, count(Number_of_products_sold) as Total_sales 
          from  [supply_chain_data work]
           group by transportation_modes
            order by Total_sales desc

            --Find the maximum and minimum Manufacturing costs in the entire dataset

            select  product_type, max(manufacturing_costs) as Max_cost, min(manufacturing_costs)  as Min_cost
             from [supply_chain_data work]
             group by product_type

          

       