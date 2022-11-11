-- All comentaries are preceded by double hyphen (--)

-- Creation of a DB
CREATE DATABASE theNameOfTheDB

-- Delete a DB
DROP theNameOfTheDB

-- Select a DB
USE theNameOfTheDB

-- Continue execution
GO

-- Creation of a table
CREATE TABLE theNameOfTheTable
(
    item1 int not null primary key,
    item2 varchar(50) not null,
    item3 tinyint not null,
    item4 Datetime not null,
    item5 money not null,
    item6 int, --if i want it could be null i just skip not null sentence
)

CREATE TABLE AnotherTable
(
    item1 int not null,
    item2 varchar(50) not null,
    item3 int
    primary key (item1, item2)
)
