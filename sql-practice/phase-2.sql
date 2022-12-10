-- Using subqueries, find the names of the cats whose owners are either George Beatty or Melynda Abshire
-- Your code here


select DISTINCT cats.name from cats
WHERE cats.id IN (
    SELECT cat_id FROM cat_owners
    where owner_id IN (
        SELECT id FROM owners
        where owners.first_name = 'George'
        OR owners.first_name = 'Melynda'
    )
);

