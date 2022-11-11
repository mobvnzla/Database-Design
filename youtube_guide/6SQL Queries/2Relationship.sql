CREATE TABLE theNameOfTheTable
(
    item1 int not null primary key,
    item2 varchar(50) not null,
    item3 tinyint not null,
    item4 int not null
)

CREATE TABLE anotherTable
(
    item5 int not null,
    item6 varchar(50) not null,
    item7 int
)

-- We add a relationship by execute the followin code

ALTER TABLE theNameOfTheTable ADD CONSTRAINT nameOfRelationship FOREIGN kEY (item4)
REFERENCES anotherTable (item5)