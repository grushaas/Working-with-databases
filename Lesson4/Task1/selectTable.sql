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
SELECT DISTINCT c.title AS "col_title" FROM collection c
INNER JOIN tracks_collections tc ON tc.collection_id = c.id
INNER JOIN track t ON t.id = tc.track_id
INNER JOIN album_performers ap ON ap.album_id = t.album
INNER JOIN performer p ON p.id = ap.performer_id
WHERE p.musician LIKE '%Blackmore`s Night%';

--запрос 6
select distinct title, COUNT(g.name) from albums a
inner join album_performers ap on ap.album_id = a.id 
inner join song_style ss on ss.id = ap.performer_id 
inner join genre g on g.id = ss.genre_id
group by a.title
having count(g."name") > 1;

--запрос 7
select t.title from track t
inner join tracks_collections tc on t.id = tc.track_id
inner join collection c on c.id = tc.collection_id
where tc.collection_id is null;

--запрос 8
select distinct p.musician, min(t.duration) from performer p
inner join song_style ss on ss.performer_id = p.id
inner join album_performers ap on ap.performer_id = ss.id
inner join albums a on a.id  = ap.album_id 
inner join track t on t.album = a.id
group by p.musician;

--запрос 9
select a.title, count(t.album) from track t
inner join albums a on a.id = t.album
group by a.title
order by count(t.album)
limit 1;

