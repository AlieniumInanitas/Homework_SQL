create table if not exists Genre (
	id serial primary key,
	name varchar (100) not null
);

create table if not exists Artist (
	id serial primary key,
	name varchar (200) not null
);

create table if not exists Album (
	id serial primary key,
	name varchar (100) not null,
	year_of_release date not null
);

create table if not exists Track (
	id serial primary key,
	name smallint not null,
	duration smallint not null,
	album integer not null references Album(id)
);

create table if not exists Collection (
	id serial primary key,
	name varchar (100) not null,
	year_of_release date not null
);

create table if not exists Genre_Artist (
	id serial primary key,
	artist_id integer not null references Artist(id),
	genre_id integer not null references Genre(id)
);

create table if not exists  Album_Artist (
	id serial primary key,
	artist_id integer not null references Artist(id),
	album_id integer not null references Album(id)
);

create table if not exists  Track_Collection (
	id serial primary key,
	track_id integer not null references Track(id),
	collection_id integer not null references Collection(id)
);