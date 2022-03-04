/*will pull everything in the movies database*/

SELECT * FROM movies 

/*will only pul;l the named columns*/
SELECT name, genre, year
FROM movies

/*can rename a column pull using titles*/
SELECT name AS 'Titles'
FROM movies;

/*DISTINCT is used to return unique values in the output. It filters out all duplicate values in the specified column*/

SELECT DISTINCT genre 
FROM movies;

/*We can restrict our query results using the WHERE clause in order to obtain only the information we want.*/

SELECT * 
FROM movies 
WHERE imdb_rating < 5;

SELECT * 
FROM movies 
WHERE year > 2014;

/*LIKE can be a useful operator when you want to compare similar values - the underscore is like a wildcard*/

SELECT * 
FROM movies
WHERE name LIKE 'Se_en';

/*The percentage sign % is another wildcard character that can be used with LIKE*/

SELECT * 
FROM movies
WHERE name LIKE '%man%';

SELECT * 
FROM movies
WHERE name LIKE 'The %';

/*It is not possible to test for NULL values with comparison operators, such as = and !=. */

SELECT name
FROM movies 
WHERE imdb_rating IS NULL;

/*The BETWEEN operator is used in a WHERE clause to filter the result set within a certain range. It accepts two values that are either numbers, text or dates. Text is
UP TO & numbers are INCLUDING of the upper limit*/

SELECT *
FROM movies
WHERE name BETWEEN 'D' AND 'G';

SELECT *
FROM movies
WHERE year BETWEEN 1970 AND 1979;

/* AND and OR operators are pretty self explanitory*/

SELECT *
FROM movies
WHERE year < 1985
  AND genre = 'horror';

SELECT *
FROM movies
WHERE genre = 'comedy'
   OR genre = 'romance';

/*ORDER BY is a clause that indicates you want to sort the result set by a particular column.*/

SELECT name, year, imdb_rating
FROM movies
ORDER BY imdb_rating DESC;

/*write a query that returns the top 3 highest rated movies.*/

Select *
FROM movies
ORDER BY imdb_rating DESC
LIMIT 3;

/*A CASE statement allows us to create different outputs (usually in the SELECT statement). It is SQL’s way of handling if-then logic*/

SELECT name,
 CASE
  WHEN genre = 'romance' OR genre = 'comedy' 
   THEN 'Chill'
  ELSE 'Intense'
 END AS 'Mood'
FROM movies;