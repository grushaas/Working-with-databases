CREATE TABLE performer (
	id SERIAL PRIMARY KEY,
	musician VARCHAR(60) NOT NULL
);

CREATE TABLE genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE song_style (
	id SERIAL PRIMARY KEY,
	performer_id INTEGER REFERENCES performer(id),
	genre_id INTEGER REFERENCES genre(id)
);

CREATE TABLE albums (
	id SERIAL PRIMARY KEY,
	title VARCHAR(120) NOT NULL,
	year INTEGER
);

CREATE TABLE album_performers (
	id SERIAL PRIMARY KEY,
	performer_id INTEGER REFERENCES song_style(id),
	album_id INTEGER REFERENCES albums(id)
);

CREATE TABLE track (
	id INTEGER REFERENCES albums(id),
	title TEXT NOT NULL,
	duration TIME NOT NULL
);

ALTER TABLE track
RENAME COLUMN id TO album;

ALTER TABLE track
ADD id SERIAL PRIMARY KEY;

CREATE TABLE collection (
	id SERIAL PRIMARY KEY,
	title TEXT NOT NULL,
	year INTEGER
);

CREATE TABLE tracks_collections (
	id SERIAL PRIMARY KEY,
	track_id INTEGER REFERENCES track(id),
	collection_id INTEGER REFERENCES collection(id)
);



