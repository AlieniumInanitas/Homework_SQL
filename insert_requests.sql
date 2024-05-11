insert into Artist (name)
values ('ATEEZ');

insert into Artist (name)
values ('Starset');

insert into Artist (name)
values ('Hoizer');

insert into Artist (name)
values ('MISSIO');

insert into Artist (name)
values ('Linkin Park');

insert into Genre (name)
values ('K-Pop');

insert into Genre (name)
values ('Rock');

insert into Genre (name)
values ('Folk');

insert into Album (name, year_of_release)
values ('Transmissions','2014-01-01');

insert into Album (name, year_of_release)
values ('The world ep.fin:will','2023-01-01');

insert into Album (name, year_of_release)
values ('Unreal Uneaeth: Unheard','2024-01-01');

insert into Album (name, year_of_release)
values ('Без альбома','2020-01-01');

insert into Track (name, duration, album)
values ('ARRIBA',217,6);

insert into Track (name, duration, album)
values ('Crazy Form',198,6);

insert into Track (name, duration, album)
values ('It Has Begun',316,5);

insert into Track (name, duration, album)
values ('My Demons',288,5);

insert into Track (name, duration, album)
values ('Too Sweet',251,7);

insert into Track (name, duration, album)
values ('Dizzy',185,8);

insert into Track (name, duration, album)
values ('Numb',285,8);

insert into Collection (name, year_of_release)
values ('like', '2024/01/01');

insert into Collection (name, year_of_release)
values ('Old music', '2019/01/01');

insert into Collection (name, year_of_release)
values ('good rock', '2020/01/01');

insert into Collection (name, year_of_release)
values ('Recently listened', '2024/01/01');

insert into Genre_Artist (artist_id, genre_id)
values (1, 4);

insert into Genre_Artist (artist_id, genre_id)
values (2, 5);

insert into Genre_Artist (artist_id, genre_id)
values (3, 6);

insert into Genre_Artist (artist_id, genre_id)
values (4, 5);

insert into Genre_Artist (artist_id, genre_id)
values (5, 5);

insert into Album_Artist (artist_id, album_id)
values (2, 5);

insert into Album_Artist (artist_id, album_id)
values (1, 6);

insert into Album_Artist (artist_id, album_id)
values (3, 7);

insert into Album_Artist (artist_id, album_id)
values (4, 8);

insert into Album_Artist (artist_id, album_id)
values (5, 8);

insert into Track_Collection (track_id, collection_id)
values (4, 1);

insert into Track_Collection (track_id, collection_id)
values (4, 2);

insert into Track_Collection (track_id, collection_id)
values (8, 3);

insert into Track_Collection (track_id, collection_id)
values (6, 4);

insert into Track_Collection (track_id, collection_id)
values (5, 2);

insert into Track_Collection (track_id, collection_id)
values (2, 4);

insert into Track_Collection (track_id, collection_id)
values (3, 4);