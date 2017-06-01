USE codeup_test_db;

SELECT 'The name of all albums by Pink Floyd.' AS '';
SELECT name
FROM albums
WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS '';
SELECT release_date
FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'The genre for Nevermind' AS '';
SELECT genre
FROM albums
WHERE name = 'Nevermind';

SELECT 'Which albums were released in the 1990s' AS '';
SELECT name
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Which albums had less than 20 million certified sales' AS '';
SELECT name
FROM albums
WHERE sales < 20;

SELECT 'All the albums in the rock genre. Is this all the rock albums in the table?' AS '';
SELECT
  name,
  genre
FROM albums
WHERE genre LIKE '%Rock%';


