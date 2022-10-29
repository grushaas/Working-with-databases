--Genres
insert into Musical_genres(Genres) values ('Folk music');
insert into Musical_genres(Genres) values ('Country');
insert into Musical_genres(Genres) values ('Blues');
insert into Musical_genres(Genres) values ('Jazz');
insert into Musical_genres(Genres) values ('Electronic music');

--Musicians
insert into Musicians(Musicians) values ('Blackmore`s Night');
insert into Musicians(Musicians) values ('Johnny Cash');
insert into Musicians(Musicians) values ('Howlin` Wolf');
insert into Musicians(Musicians) values ('Frank Sinatra');
insert into Musicians(Musicians) values ('Moby');
insert into Musicians(Musicians) values ('Paul McCartney');
insert into Musicians(Musicians) values ('Elton John');
insert into Musicians(Musicians) values ('Pink Floyd');

--Genres and Musicians
insert into genres_and_musicians(genres, musicians) values (1, 1);
insert into genres_and_musicians(genres, musicians) values (3, 1);
insert into genres_and_musicians(genres, musicians) values (4, 2);
insert into genres_and_musicians(genres, musicians) values (5, 2);
insert into genres_and_musicians(genres, musicians) values (2, 2);
insert into genres_and_musicians(genres, musicians) values (1, 3);
insert into genres_and_musicians(genres, musicians) values (3, 3);
insert into genres_and_musicians(genres, musicians) values (5, 4);
insert into genres_and_musicians(genres, musicians) values (2, 4);
insert into genres_and_musicians(genres, musicians) values (3, 5);
insert into genres_and_musicians(genres, musicians) values (1, 5);
insert into genres_and_musicians(genres, musicians) values (4, 5);
insert into genres_and_musicians(genres, musicians) values (1, 7);
insert into genres_and_musicians(genres, musicians) values (4, 8);
insert into genres_and_musicians(genres, musicians) values (2, 6);

--Albums
insert into albums(genres_musicians, albums, year_of_release) values (1, 'Under A Violet Moon', 1999);
insert into albums(genres_musicians, albums, year_of_release) values (2, 'Underworld', 1854);
insert into albums(genres_musicians, albums, year_of_release) values (4, 'I love electronic', 2000);
insert into albums(genres_musicians, albums, year_of_release) values (4, 'Underworld', 1854);
insert into albums(genres_musicians, albums, year_of_release) values (7, 'Why understand the world', 1923);
insert into albums(genres_musicians, albums, year_of_release) values (7, 'I love electronic', 2000);
insert into albums(genres_musicians, albums, year_of_release) values (2, 'I love electronic', 2000);
insert into albums(genres_musicians, albums, year_of_release) values (8, 'Bionicle', 1965);
insert into albums(genres_musicians, albums, year_of_release) values (11, 'Alert', 1941);
insert into albums(genres_musicians, albums, year_of_release) values (12, 'I`m going to fall in love with a girl', 1946);
insert into albums(genres_musicians, albums, year_of_release) values (12, 'Bionicle', 1965);
insert into albums(genres_musicians, albums, year_of_release) values (13, 'Why understand the world', 1923);
insert into albums(genres_musicians, albums, year_of_release) values (13, 'Under A Violet Moon', 1999);
insert into albums(genres_musicians, albums, year_of_release) values (14, 'Alert', 1941);
insert into albums(genres_musicians, albums, year_of_release) values (14, 'I`m going to fall in love with a girl', 1946);
insert into albums(genres_musicians, albums, year_of_release) values (14, 'Bionicle', 1965);
insert into albums(genres_musicians, albums, year_of_release) values (15, 'Under A Violet Moon', 1999);
insert into albums(genres_musicians, albums, year_of_release) values (15, 'I`m going to fall in love with a girl', 1946);

--Tracks
insert into tracks(album, track, duration) values (1, 'At night', 2.00);
insert into tracks(album, track, duration) values (1, 'The city is more beautiful at night', 2.31);
insert into tracks(album, track, duration) values (2, 'Cave', 2.56);
insert into tracks(album, track, duration) values (2, 'We are small', 4.15);
insert into tracks(album, track, duration) values (2, 'Hell', 3.03);
insert into tracks(album, track, duration) values (3, 'Electronic', 1.48);
insert into tracks(album, track, duration) values (3, 'Love', 1.29);
insert into tracks(album, track, duration) values (5, 'The world', 2.01);
insert into tracks(album, track, duration) values (5, 'Excellent', 3.14);
insert into tracks(album, track, duration) values (8, 'Words can do everything', 3.50);
insert into tracks(album, track, duration) values (8, 'I`m changing everything', 3.14);
insert into tracks(album, track, duration) values (8, 'To be or not to be', 2.00);
insert into tracks(album, track, duration) values (9, 'This is Moscow speaking', 2.05);
insert into tracks(album, track, duration) values (9, 'Hey la la lay', 1.56);
insert into tracks(album, track, duration) values (9, 'Tut tut tut', 2.59);
insert into tracks(album, track, duration) values (9, 'We love to break', 2.17);
insert into tracks(album, track, duration) values (10, 'Red eyes', 3.11);
insert into tracks(album, track, duration) values (10, 'Black eyes', 1.00);

--Collections
insert into collections(title, track, year_of_release) values ('Collection 1', 3, 2000);
insert into collections(title, track, year_of_release) values ('Collection 1', 6, 2000);
insert into collections(title, track, year_of_release) values ('Collection 1', 15, 2000);
insert into collections(title, track, year_of_release) values ('Collection 1', 2, 2000);
insert into collections(title, track, year_of_release) values ('Collection 2', 15, 2001);
insert into collections(title, track, year_of_release) values ('Collection 2', 6, 2001);
insert into collections(title, track, year_of_release) values ('Collection 2', 5, 2001);
insert into collections(title, track, year_of_release) values ('Collection 2', 1, 2001);
insert into collections(title, track, year_of_release) values ('Collection 2', 9, 2001);
insert into collections(title, track, year_of_release) values ('Collection 3', 1, 2002);
insert into collections(title, track, year_of_release) values ('Collection 3', 2, 2002);
insert into collections(title, track, year_of_release) values ('Collection 3', 9, 2002);
insert into collections(title, track, year_of_release) values ('Collection 3', 8, 2002);
insert into collections(title, track, year_of_release) values ('Collection 3', 7, 2002);
insert into collections(title, track, year_of_release) values ('Collection 3', 14, 2002);
insert into collections(title, track, year_of_release) values ('Collection 4', 18, 2003);
insert into collections(title, track, year_of_release) values ('Collection 4', 17, 2003);
insert into collections(title, track, year_of_release) values ('Collection 4', 16, 2003);
insert into collections(title, track, year_of_release) values ('Collection 5', 13, 2004);
insert into collections(title, track, year_of_release) values ('Collection 5', 12, 2004);
insert into collections(title, track, year_of_release) values ('Collection 5', 4, 2004);
insert into collections(title, track, year_of_release) values ('Collection 5', 9, 2004);
insert into collections(title, track, year_of_release) values ('Collection 5', 10, 2004);
insert into collections(title, track, year_of_release) values ('Collection 6', 11, 2005);
insert into collections(title, track, year_of_release) values ('Collection 6', 4, 2005);
insert into collections(title, track, year_of_release) values ('Collection 6', 12, 2005);
insert into collections(title, track, year_of_release) values ('Collection 6', 5, 2005);
