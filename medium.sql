create table movies(
    title varchar(100),
    release_date date,
    rating decimal(4.3)
);


insert into movies values ('Gladiator','2000-05-05',4.9);
insert into movies values ('equalizer 2','2018-07-20',4.8);
insert into movies values ('The book of Eli','2000-05-05',4.7);
insert into movies values ('Kingsman golden circle','2017-10-22',4.9);
insert into movies values ('Aquaman','2018-12-21',4.5);
insert into movies values ('Wonder Woman','2017-06-02',4.6);
insert into movies values ('pirates of caribbean the curse of the black pearl','2003-06-28',4.9);
insert into movies values ('Get out','2017-02-24',4.9);
insert into movies values ('Logan','2017-03-03',4.8);
insert into movies values ('Avengers Endgame','2018-04-26',4.9);


-- ordering by release date movies with s in their title
select * from movies
where title like '%s%'
order by release_date ;
