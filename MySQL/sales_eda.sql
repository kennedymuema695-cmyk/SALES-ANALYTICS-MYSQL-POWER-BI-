-- Explanatory Data Analysis(EDA)
select * from sales;
 select count(*)  as totalrows from  sales;
 select sum(Order_Quantity) as totalunitsold from sales;
 
 select Country,
     sum(Revenue) as revenue,
     sum(Cost) as cost,
	sum(Profit) as profit
 from sales
 group by Country
 order by sum(Revenue) desc;
 
 select Product_Category,
    sum(Revenue) as totalrevenue,
    sum(Profit) as totalprofit
from sales
group by Product_Category
order by sum(Profit) desc;

 select Age_Group,
    sum(Revenue) as totalrevenue,
    sum(Profit) as totalprofit
from sales
group by Age_Group
order by sum(Profit) desc;

select product,
	sum(Order_Quantity) as total_unit_sold,
    sum(Revenue) as totalrevenue,
    sum(Profit) as totalprofit
from sales
group by product
order by totalprofit desc
limit 10;
