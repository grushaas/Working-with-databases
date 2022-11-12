SELECT albums, year_of_release FROM albums
WHERE year_of_release = 2018;

SELECT track, duration FROM tracks
ORDER BY duration DESC
LIMIT 1;

SELECT track FROM tracks
WHERE duration >= 3.5;

SELECT title FROM collections
WHERE year_of_release BETWEEN 2018 AND 2020
GROUP BY title
ORDER BY title;

SELECT musicians FROM musicians
WHERE musicians NOT LIKE '%% %';

SELECT track FROM tracks
WHERE track LIKE '%my%' OR track LIKE '%мой%';