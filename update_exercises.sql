use codeup_test_db;

SELECT 'All albums in your table.' as '';
select name, sales from albums;

UPDATE albums set sales = sales * 10;

SELECT 'All albums sales * 10' as '';
select name, sales from albums;

select 'All albums released before 1980' as '';
select name, release_date from albums where release_date < 1980;

UPDATE albums set release_date = release_date - 100 where release_date < 1980;

select 'All albums released before 1880' as '';
select name, release_date from albums where release_date < 1880;

select 'All albums by Michael Jackson' as '';
select name, artist from albums where artist = 'Michael Jackson';

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

select 'All albums by Peter Jackson' as '';
select name, artist from albums where artist = 'Peter Jackson';
