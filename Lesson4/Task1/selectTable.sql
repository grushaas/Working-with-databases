--Запрос 1
SELECT COUNT(performer_id), genre_id FROM song_style ss
GROUP BY genre_id;

--Запрос 2
SELECT COUNT(album), year FROM track t
LEFT JOIN albums a ON a.id = t.album
WHERE year = 1999
GROUP BY year;

SELECT COUNT(album), year FROM track t
LEFT JOIN albums a ON a.id = t.album
WHERE year = 2000
GROUP BY year;

--Запрос 3
SELECT AVG(t.duration), a.title FROM track t
LEFT JOIN albums a ON a.id = t.album
GROUP BY a.title;

--Запрос 4
SELECT musician FROM performer p
LEFT JOIN album_performers ap ON ap.performer_id = p.id
LEFT JOIN albums a ON ap.album_id = a.id
WHERE year != 1854;

--запрос 5
--Помогите вот тут, не могу додумать)
SELECT musician FROM performer p
LEFT JOIN 





