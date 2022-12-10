--Insert new cat named "Red" born this year
-- Your code here

insert into cats (name, birth_year)
values('Pickles', 1902);

--Assign ownership of new cat to George Beatty using subqueries
-- Your code here

insert into cat_owners (owner_id, cat_id)
VALUES (
    (select id from owners
    WHERE first_name = 'George' AND last_name = 'Beatty'),
    (select id from cats
    WHERE name = "Pickles")
);


--Query to verify INSERTs worked properly
-- Your code here
select owners.first_name, owners.last_name, cats.name from cat_owners
join owners ON owners.id=cat_owners.owner_id
join cats  ON cats.id=cat_owners.cat_id
where owners.first_name = "George" AND owners.last_name = "Beatty";