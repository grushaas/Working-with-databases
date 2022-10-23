create table if not exists Musical_genres (
	id_genres SERIAL primary key,
	Genres varchar(60) unique not null
);

create table if not exists Musicians (
	id_musicians SERIAL primary key,
	Musicians varchar(120) unique not null
);

create table if not exists genres_and_musicians (
	id SERIAL PRIMARY KEY,
	genres int references Musical_genres(id_genres),
	musicians int references Musicians(id_musicians)
);

create table if not exists albums (
	id SERIAL PRIMARY KEY,
	genres_musicians int not null references genres_and_musicians(id),
	albums varchar(60) UNIQUE not null,
	year_of_release INT not null
);

CREATE TABLE IF NOT EXISTS tracks (
	id SERIAL PRIMARY KEY,
	album INT NOT NULL REFERENCES albums(id),
	track VARCHAR(60) NOT NULL,
	duration FLOAT NOT NULL
);

CREATE TABLE IF NOT EXISTS Collections (
	id SERIAL PRIMARY KEY,
	title VARCHAR(60) NOT NULL,
	track INT NOT NULL REFERENCES tracks(id),
	year_of_release INT
);