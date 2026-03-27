-------------------------------------------------------------------------------------------------------
--How many items are there with an item_category of 'Snack' and an item_subcategory of 'Warm Option'?
-------------------------------------------------------------------------------------------------------

--1. First I need to understand the structure of the table to get the exact name of the fields needed
SELECT TOP 10 * FROM tasty_bytes_sample_data.raw_pos.menu;

--1. The I can create the query
SELECT
   COUNT(*)
FROM tasty_bytes_sample_data.raw_pos.menu
WHERE item_category = 'Snack'AND item_subcategory = 'Warm Option';
