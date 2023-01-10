SELECT users.*,  sum(sales.amount) as sum
FROM  users
left join  sales  on users.userId=sales.userId and saledate > now()- interval '6 months'
group by users.userId
ORDER BY sum desc
