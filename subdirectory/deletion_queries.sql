--Deletion: 

-- --Query1
-- DELETE FROM imdb
-- WHERE vote_count = (
--     SELECT MIN(vote_count) FROM imdb
--);

-- --Query2
-- DELETE FROM imdb
-- WHERE popularity >= 50 AND popularity <= 51;
