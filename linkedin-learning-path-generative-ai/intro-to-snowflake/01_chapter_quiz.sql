-------------------------------------------------------------------------------------------------------
-- Question 1: How many items are there with an item_category of 'Snack' and an item_subcategory of 'Warm Option'?
-------------------------------------------------------------------------------------------------------

--a. First I need to understand the structure of the table to get the exact name of the fields needed
SELECT TOP 10 * FROM tasty_bytes_sample_data.raw_pos.menu;

--b. The I can create the query
SELECT
   COUNT(*)
FROM tasty_bytes_sample_data.raw_pos.menu
WHERE item_category = 'Snack'AND item_subcategory = 'Warm Option';

-------------------------------------------------------------------------------------------------------
-- Question 2: What are the max sales prices for each of the three item subcategories (hot option, warm option, cold option)? List from highest price to lowest.
-------------------------------------------------------------------------------------------------------

--a. I want to check how the categories names are spelled so I can query properly, as I will use case sensitive query
SELECT DISTINCT item_subcategory FROM tasty_bytes_sample_data.raw_pos.menu;

--b. I learned that we have only the three subcategories mentioned in the question, so I dont need to filter by then, but I need to make sure to add the GROUP BY as I have an aggregation function and also I need o read the requirements of the answer, like sorting
SELECT
    item_subcategory,
   MAX(sale_price_usd)
FROM tasty_bytes_sample_data.raw_pos.menu
GROUP BY 1
ORDER BY 2

