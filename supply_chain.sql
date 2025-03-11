# Find the top 5 products with the highest sales:
SELECT Distinct(Product_type) as Product,Revenue_generated
FROM supply_chain_data
GROUP BY Product ,Revenue_generated
ORDER BY Revenue_generated DESC
LIMIT 5;
# Identify suppliers with the highest defect rates
Select Distinct(supplier_name),Defect_rates from supply_chain_data
Group by Distinct(supplier_name),Defect_rates
Order By Defect_rates Desc;
# Find the supplier with the shortest average lead time:
Select supplier_name, AVG(Lead_time) from supply_chain_data
Group by supplier_name
Order by AVG(Lead_time)
limit 1;
# Compare average shipping costs by transportation mode:
Select Transportation_modes,Avg(Shipping_costs) as Average_shipping_costs
from supply_chain_data
Group by Transportation_modes
order by Average_shipping_costs;
# Find the most commonly used shipping route:
Select Routes, Count(*) as Route_usage
FROM supply_chain_data
GROUP BY Routes
ORDER BY Route_Usage DESC;
# Identify the most profitable products:
Select Product_type,Sum(Revenue_generated) from supply_chain_data
Group by Product_type
Order by Sum(Revenue_generated) Desc;
# Determine if higher-priced products generate higher revenue:
SELECT SKU, Product_type, Price, Revenue_generated
FROM supply_chain_data
ORDER BY Price DESC;
# Calculate the average sales per product type:
Select Product_type,Avg(Number_of_products_sold) as  Avg_Sales 
from supply_chain_data
Group by  Product_type
Order by Avg_Sales Desc;



