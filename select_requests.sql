--Название и продолжительность самого длительного трека

select name, duration from track t
where duration = (select max(duration) from track);

select name, duration from track t 
order by duration desc limit 1;

--Название треков, продолжительность которых не менее 3,5 минут.

select name from track t 
where duration >= 210;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.

select name from collection c 
where extract(year from year_of_release) between 2018 and 2020;

--Исполнители, чьё имя состоит из одного слова.

select name from artist
where strpos(name,' ') = 0;

--Название треков, которые содержат слово «мой» или «my»

select name from track
where lower(name) like '%my%';

select name from track
where strpos(lower(name),'my') != 0;

--Количество исполнителей в каждом жанре.

select name, count(artist_id) from genre g
join genre_artist ga on ga.genre_id = g.id
group by name;

--Количество треков, вошедших в альбомы 2019–2020 годов.

select a.name, count(t.id) from album a
join track t on t.album = a.id
where extract(year from year_of_release) between 2019 and 2020
group by a.name;

--Средняя продолжительность треков по каждому альбому.

select a.name, avg(duration) from album a
join track t on t.album = a.id
group by a.name;

--Все исполнители, которые не выпустили альбомы в 2020 году.

select a.name from artist a
join album_artist aa on aa.artist_id = a.id
join album al on aa.album_id = al.id
where extract(year from year_of_release) != 2020;

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).

select c.name from collection c
join track_collection tc on tc.collection_id = c.id 
join track t on tc.track_id = t.id 
join album al on t.album = al.id 
join album_artist aa on aa.album_id = al.id 
join artist a on aa.artist_id = a.id 
where lower(a.name) = 'starset'
group by c.name;