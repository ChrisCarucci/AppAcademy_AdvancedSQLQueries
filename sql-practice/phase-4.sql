-- Give "Red" the cat one of every toy the other cats have
-- Your code here

INSERT INTO toys (name, cat_id)
SELECT toys.name, (SELECT cats.id FROM cats WHERE name = 'Pickles') FROM toys
JOIN cats ON (cats.id = toys.cat_id AND cats.name != 'Pickles');

-- Query spoiled cats reporting the most spoiled first
-- Your code here

select cats.name, COUNT(toys.name) AS num_toys from cats
join toys on cats.id=toys.cat_id
group by cats.name
having num_toys > 1
order by num_toys desc;