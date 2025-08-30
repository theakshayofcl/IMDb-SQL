USE project_movie_database;

-- Task 1
SELECT * FROM movies;

-- Task 2
SELECT * FROM directors; 

-- Task 3
SELECT COUNT(*) FROM movies;

-- Task 4
SELECT * FROM directors WHERE name IN ('James Cameron', 'Luc Besson', 'John Woo')

-- Task 5
SELECT * FROM directors WHERE name LIKE 'S%';

-- Task 6
SELECT COUNT(*) AS Female_Directors FROM directors WHERE gender = 1;

-- Task 7
SELECT name FROM directors WHERE gender = 1 ORDER BY id LIMIT 1 OFFSET 9;

-- Task 8
SELECT title, popularity FROM movies ORDER BY popularity DESC LIMIT 3;

-- Task 9
SELECT title, revenue FROM movies ORDER BY revenue DESC LIMIT 3;

-- Task 10
SELECT title, vote_average, release_date FROM movies WHERE release_date >= '2000-01-01'ORDER BY vote_average DESC LIMIT 1;

-- Task 11
SELECT * FROM directors WHERE name = 'Brenda Chapman';
-- It shows the Brenda Chapman row

SELECT title, name
FROM movies
JOIN directors ON movies.director_id = directors.id
WHERE directors.name = 'Brenda Chapman';

-- There are no movies in the database directed by Brenda Chapman

-- Task 12
SELECT d.name, COUNT(m.id) AS movie_count
FROM directors d
JOIN movies m ON d.id = m.director_id
GROUP BY d.id, d.name
ORDER BY movie_count DESC
LIMIT 1;

-- Task 13
SELECT directors.name, SUM(movies.revenue) AS total_revenue
FROM directors
JOIN movies ON directors.id = movies.director_id
GROUP BY directors.id, directors.name
ORDER BY total_revenue DESC
LIMIT 1;

