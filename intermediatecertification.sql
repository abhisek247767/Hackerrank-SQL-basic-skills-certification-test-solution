 p1.
 select a.country_name, count(*), avg(d.total_price)
from country a, city b, customer c, invoice d 
where a.id = b.country_id and b.id = c.city_id and c.id = d.customer_id
group by a.country_name
having avg(d.total_price) > (select avg(total_price) from invoice);

p2.
select a.city_name, e.product_name, ROUND(SUM(d.line_total_price), 2) as amount
from city a, customer b, invoice c, invoice_item d, product e
where a.id = b.city_id and b.id = c.customer_id and c.id = d.invoice_id and d.product_id = e.id
group by a.city_name, e.product_name
order by amount desc, a.city_name, e.product_name
