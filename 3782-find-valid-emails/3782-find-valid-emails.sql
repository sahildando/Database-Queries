# Write your MySQL query statement below
select user_id,email from Users
where length(email)-length(replace(email,'@', ''))=1
and email regexp '^[a-z0-9_]+@+[a-z]+[.]+com$'
