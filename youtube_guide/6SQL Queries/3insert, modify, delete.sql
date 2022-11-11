CREATE TABLE nameOfTheTable
(
    item1 int not null primary key,
    item2 varchar(50) not null,
    item3 tinyint not null,
    item4 int not null
)

-- there are 2 ways of insert data:

INSERT INTO nameOfTheTable (item1,item2,item3,item4)
VALUES (1,'something',1,1)

-- another way is

INSERT INTO nameOfTheTable
VALUES (2,'something2',2,2)

--in this case sql assumes the entries are sorted

-- Modify data

UPDATE nameOfTheTable SET item2='anything'
WHERE item1=1

--if I not stablish the WHERE condition all the rows in the table will suffer the modification

UPDATE nameOfTheTable SET item3=22, item4=55
WHERE item1=2
-- I can modify several cell by adding commas


-- Delete data
DELETE nameOfTheTable --this command with no condition will delete everything on nameOfTheTable
WHERE item1=1 -- now this delete the row with item1 = 1