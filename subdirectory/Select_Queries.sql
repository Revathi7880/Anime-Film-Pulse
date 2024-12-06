-- --Query 1
-- -- Retrieving the production companies along with the count of movies they have produced, but only including companies that have produced more than 5 movies.
-- SELECT pc.Production_company_name, COUNT(m.ID) AS Movie_Count
-- FROM Production_company_name pc
-- LEFT JOIN Production_company p ON pc.Production_company_id = p.Production_company_id
-- LEFT JOIN Movie m ON p.ID = m.ID
-- GROUP BY pc.Production_company_name
-- HAVING COUNT(m.ID) > 5;

-- --Query 2
-- -- Retrieving the average runtime of movies for each genre and presenting the results in descending order of average runtime.
-- SELECT Genre_name.Genre_name, AVG(Movie.Runtime) AS Average_Runtime
-- FROM Movie
-- INNER JOIN Genre ON Movie.ID = Genre.ID
-- INNER JOIN Genre_name ON Genre.Genre_id = Genre_name.Genre_id
-- GROUP BY Genre_name.Genre_name
-- ORDER BY Average_Runtime DESC;

-- --Query 3
-- -- Retrieving information about movies, including their ID, runtime, release date, genre name, and production company name.
-- SELECT Movie.ID, Movie.Runtime, Movie.Release_date, Genre_name.Genre_name, Production_company_name.Production_company_name
-- FROM Movie
-- INNER JOIN Genre ON Movie.ID = Genre.ID
-- INNER JOIN Genre_name ON Genre.Genre_id = Genre_name.Genre_id
-- INNER JOIN Production_company ON Movie.ID = Production_company.ID
-- INNER JOIN Production_company_name ON Production_company.Production_company_id = Production_company_name.Production_company_id
-- WHERE Movie.Release_date >= '2023-01-01'
-- AND Movie.Runtime >= 120
-- ORDER BY Movie.Release_date DESC;

-- --Query 4
-- -- Retrieving information about movies with a release date among the top 100 distinct release dates of movies with a runtime of 120 minutes or more.
-- SELECT Imdb_id, Release_date, Tagline
-- FROM Movie
-- WHERE Release_date IN (
--     SELECT Release_date
--     FROM (
--         SELECT DISTINCT Release_date
--         FROM Movie
--         WHERE Runtime >= 120
--     ) AS Subquery
--     ORDER BY Release_date DESC
--     LIMIT 100
-- );






