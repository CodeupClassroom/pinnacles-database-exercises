USE codeup_test_db;

SELECT 'Albums released after 1991' as '';
DELETE FROM albums WHERE release_date > 1991;

SELECT 'Albums with the genre ''disco''' as '';
DELETE FROM albums WHERE genre = 'disco';

SELECT 'Albums by ''Whitney Houston''' as '';
DELETE FROM albums WHERE artist LIKE '%Whitney Houston%';