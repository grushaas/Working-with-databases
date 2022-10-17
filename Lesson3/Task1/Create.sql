create table if not exists Musical_genres (
	id_genres SERIAL primary key,
	Genres varchar(60) unique not null
);

create table if not exists Musicians (
	id_musicians SERIAL primary key,
	Musicians varchar(120) unique not null
);

create table if not exists genres_and_musicians (
	genres int references Musical_genres(id_genres),
	musicians int references Musicians(id_musicians),
	constraint id_genres_musicians primary key (id_genres, id_musicians)
);