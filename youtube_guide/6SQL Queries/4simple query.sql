-- Simple queries


--SELECT
SELECT * FROM nameOfTheTable --this brings all the columns and rows that nameOfTheTable has
SELECT columnX, column2 FROM nameOfTheTable -- this brings just the columns specified


-- Comparison Test ( =, <>, <, >, <=, >= )
SELECT * from nameOfTheTable
WHERE columnX <> 3  --in this line we are filtering the selection from nameOfTheTable by making a comparison


-- Range Test (BETWEEN)
SELECT * FROM nameOfTheTable
WHERE columnX BETWEEN 1 AND 3


--NOT BETWEEN
SELECT * FROM nameOfTheTable
WHERE columnX NOT BETWEEN 1 AND 3


-- Pattern Matching Test (LIKE: % replace 0 or more chars, _ replace only 1 char)
SELECT * FROM nameOfTheTable
WHERE columnX LIKE('S%') --Everything that starts with 'S'
WHERE columnX LIKE('_S%') --Everything that starts with a 'S' in the second char


-- Test of belonging to a set (IN)
SELECT * FROM nameOfTheTable
WHERE columnX IN (value1, value2, value3)


-- Null value test (IS NULL)
SELECT * FROM nameOfTheTable
WHERE columnX IS NULL

-- IS NOT NULL also works
SELECT * FROM nameOfTheTable
WHERE columnX IS NOT NULL


-- Ordering of search results (ORDER BY)
SELECT * FROM nameOfTheTable
ORDER BY columnX -- this sentence sort the query ascending by default

SELECT * FROM nameOfTheTable
ORDER BY columnX DESC --this turn the order around


-- Skip duplicate rows (DISTINCT)
SELECT DISTINCT(columnX) FROM nameOfTheTable
