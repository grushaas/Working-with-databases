-- 1 запрос
SELECT genres, COUNT(*) FROM genres_and_musicians gam
GROUP BY genres
ORDER BY COUNT(*) DESC;

-- 2 запрос
SELECT COUNT(track) FROM albums a
LEFT JOIN tracks t ON a.id = t.album
WHERE year_of_release = 2000 OR year_of_release = 2018; -- Года поменял, потому что у меня таких нет

-- 3 запрос
SELECT AVG(duration), albums FROM albums a
LEFT JOIN tracks t ON a.id = t.album
GROUP BY a.albums;

-- 4 запрос
SELECT musicians FROM genres_and_musicians gam 
LEFT JOIN albums a ON a.genres_musicians = gam.id
WHERE year_of_release != 2018;

-- 5 запрос
SELECT title FROM collections c 
LEFT JOIN tracks t ON c.track = t.id
LEFT JOIN albums a ON a.id = t.album
LEFT JOIN genres_and_musicians gam ON a.genres_musicians = gam.id
LEFT JOIN musicians m ON gam.musicians = m.id_musicians
WHERE musicians = "Moby";


