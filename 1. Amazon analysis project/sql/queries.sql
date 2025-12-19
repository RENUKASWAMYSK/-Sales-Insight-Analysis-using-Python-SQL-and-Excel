create database amazon_analysis;
use amazon_analysis;

create table products(product_id varchar(50), 
product_name text, category varchar(255), discount_price float, actual_price float, discount_percentage float, rating float, 
rating_count int);

select product_name, rating_count from products
order by rating_count desc
limit 10;

select category, round(avg(rating),2) as average_rating from products
 group by category 
 order by average_rating desc;

select category,round(avg(discount_percentage),2) as avg_disc from products
group by category
order by avg_disc desc;
