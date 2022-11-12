-- performers
INSERT INTO performer(musician) VALUES ('Blackmore`s Night');
INSERT INTO performer(musician) VALUES ('Johnny Cash');
INSERT INTO performer(musician) VALUES ('Howlin` Wolf');
INSERT INTO performer(musician) VALUES ('Frank Sinatra');
INSERT INTO performer(musician) VALUES ('Moby');
INSERT INTO performer(musician) VALUES ('Paul McCartney');
INSERT INTO performer(musician) VALUES ('Elton John');
INSERT INTO performer(musician) VALUES ('Pink Floyd');

--genres
INSERT INTO genre(name) VALUES ('Folk music');
INSERT INTO genre(name) VALUES ('Country');
INSERT INTO genre(name) VALUES ('Blues');
INSERT INTO genre(name) VALUES ('Jazz');	
INSERT INTO genre(name) VALUES ('Electronic music');

--song_styles
INSERT INTO song_style(genre_id, performer_id) VALUES (1, 1);
INSERT INTO song_style(genre_id, performer_id) VALUES (3, 1);
INSERT INTO song_style(genre_id, performer_id) VALUES (4, 2);
INSERT INTO song_style(genre_id, performer_id) VALUES (5, 2);
INSERT INTO song_style(genre_id, performer_id) VALUES (2, 2);
INSERT INTO song_style(genre_id, performer_id) VALUES (1, 3);
INSERT INTO song_style(genre_id, performer_id) VALUES (3, 3);
INSERT INTO song_style(genre_id, performer_id) VALUES (5, 4);
INSERT INTO song_style(genre_id, performer_id) VALUES (2, 4);
INSERT INTO song_style(genre_id, performer_id) VALUES (3, 5);
INSERT INTO song_style(genre_id, performer_id) VALUES (1, 5);
INSERT INTO song_style(genre_id, performer_id) VALUES (4, 5);
INSERT INTO song_style(genre_id, performer_id) VALUES (1, 7);
INSERT INTO song_style(genre_id, performer_id) VALUES (4, 8);
INSERT INTO song_style(genre_id, performer_id) VALUES (2, 6);

--albums
INSERT INTO albums(title, year) VALUES ('Under A Violet Moon', 1999);
INSERT INTO albums(title, year) VALUES ('Underworld', 1854);
INSERT INTO albums(title, year) VALUES ('I love electronic', 2000);
INSERT INTO albums(title, year) VALUES ('Why understand the world', 1923-01-17);
INSERT INTO albums(title, year) VALUES ('Bionicle', 1965);
INSERT INTO albums(title, year) VALUES ('Alert', 1941);
INSERT INTO albums(title, year) VALUES ('I`m going to fall in love with a girl', 1946);

--album_performers
INSERT INTO album_performers(performer_id, album_id) VALUES (1, 1);
INSERT INTO album_performers(performer_id, album_id) VALUES (2, 2);
INSERT INTO album_performers(performer_id, album_id) VALUES (4, 3);
INSERT INTO album_performers(performer_id, album_id) VALUES (4, 2);
INSERT INTO album_performers(performer_id, album_id) VALUES (7, 4);
INSERT INTO album_performers(performer_id, album_id) VALUES (7, 3);
INSERT INTO album_performers(performer_id, album_id) VALUES (2, 3);
INSERT INTO album_performers(performer_id, album_id) VALUES (8, 5);
INSERT INTO album_performers(performer_id, album_id) VALUES (11, 6);
INSERT INTO album_performers(performer_id, album_id) VALUES (12, 7);
INSERT INTO album_performers(performer_id, album_id) VALUES (12, 5);
INSERT INTO album_performers(performer_id, album_id) VALUES (13, 4);
INSERT INTO album_performers(performer_id, album_id) VALUES (13, 1);
INSERT INTO album_performers(performer_id, album_id) VALUES (14, 6);
INSERT INTO album_performers(performer_id, album_id) VALUES (14, 7);
INSERT INTO album_performers(performer_id, album_id) VALUES (14, 5);
INSERT INTO album_performers(performer_id, album_id) VALUES (15, 1);
INSERT INTO album_performers(performer_id, album_id) VALUES (15, 7);

--track
INSERT INTO track(album, title, duration) VALUES (1, 'At night', '00:02:00');
INSERT INTO track(album, title, duration) VALUES (1, 'Black eyes', '00:01:00');
INSERT INTO track(album, title, duration) VALUES (1, 'The city is more beautiful at night', '00:02:31');
INSERT INTO track(album, title, duration) VALUES (2, 'Cave', '00:02:56');
INSERT INTO track(album, title, duration) VALUES (2, 'We are small', '00:04:15');
INSERT INTO track(album, title, duration) VALUES (2, 'Hell', '00:03:03');
INSERT INTO track(album, title, duration) VALUES (2, 'Electronic', '00:01:48');
INSERT INTO track(album, title, duration) VALUES (3, 'Love', '00:01:29');
INSERT INTO track(album, title, duration) VALUES (3, 'The world', '00:02:01');
INSERT INTO track(album, title, duration) VALUES (3, 'Excellent', '00:03:14');
INSERT INTO track(album, title, duration) VALUES (5, 'Words can do everything', '00:03:50');
INSERT INTO track(album, title, duration) VALUES (5, 'I`m changing everything', '00:03:14');
INSERT INTO track(album, title, duration) VALUES (6, 'To be or not to be', '00:02:00');
INSERT INTO track(album, title, duration) VALUES (6, 'This is Moscow speaking', '00:02:05');
INSERT INTO track(album, title, duration) VALUES (6, 'Hey la la lay', '00:01:56');
INSERT INTO track(album, title, duration) VALUES (7, 'Tut tut tut', '00:02:59');
INSERT INTO track(album, title, duration) VALUES (7, 'We love to break', '00:02:17');
INSERT INTO track(album, title, duration) VALUES (7, 'Red eyes', '00:03:11');

--Collections
INSERT INTO collection(title, year) VALUES ('Collection 1', 2000);
INSERT INTO collection(title, year) VALUES ('Collection 2', 2001);
INSERT INTO collection(title, year) VALUES ('Collection 3', 2002);
INSERT INTO collection(title, year) VALUES ('Collection 4', 2003);
INSERT INTO collection(title, year) VALUES ('Collection 5', 2004);
INSERT INTO collection(title, year) VALUES ('Collection 6', 2005);

-- tracks_collections
INSERT INTO tracks_collections(track_id, collection_id) VALUES (3, 1);
INSERT INTO tracks_collections(track_id, collection_id) VALUES (6, 1);
INSERT INTO tracks_collections(track_id, collection_id) VALUES (15, 1);
INSERT INTO tracks_collections(track_id, collection_id) VALUES (2, 1);
INSERT INTO tracks_collections(track_id, collection_id) VALUES (15, 2);
INSERT INTO tracks_collections(track_id, collection_id) VALUES (6, 2);
INSERT INTO tracks_collections(track_id, collection_id) VALUES (5, 2);
INSERT INTO tracks_collections(track_id, collection_id) VALUES (1, 2);
INSERT INTO tracks_collections(track_id, collection_id) VALUES (9, 2);
INSERT INTO tracks_collections(track_id, collection_id) VALUES (1, 3);
INSERT INTO tracks_collections(track_id, collection_id) VALUES (2, 3);
INSERT INTO tracks_collections(track_id, collection_id) VALUES (9, 3);
INSERT INTO tracks_collections(track_id, collection_id) VALUES (8, 3);
INSERT INTO tracks_collections(track_id, collection_id) VALUES (7, 3);
INSERT INTO tracks_collections(track_id, collection_id) VALUES (14, 3);
INSERT INTO tracks_collections(track_id, collection_id) VALUES (17, 4);
INSERT INTO tracks_collections(track_id, collection_id) VALUES (16, 4);
INSERT INTO tracks_collections(track_id, collection_id) VALUES (13, 5);
INSERT INTO tracks_collections(track_id, collection_id) VALUES (12, 5);
INSERT INTO tracks_collections(track_id, collection_id) VALUES (4, 5);
INSERT INTO tracks_collections(track_id, collection_id) VALUES (9, 5);
INSERT INTO tracks_collections(track_id, collection_id) VALUES (10, 5);
INSERT INTO tracks_collections(track_id, collection_id) VALUES (11, 6);
INSERT INTO tracks_collections(track_id, collection_id) VALUES (4, 6);
INSERT INTO tracks_collections(track_id, collection_id) VALUES (12, 6);
INSERT INTO tracks_collections(track_id, collection_id) VALUES (5, 6);

























