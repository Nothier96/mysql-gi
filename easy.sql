create table book(
    title varchar(20),
    publish_date date,
    author_first varchar(20),
    author_last varchar(20)
);
insert into book VALUES('Davinci Code','2003-03-18','Dan','Brown');
insert into book VALUES('Epopee Mandingue','2007-08-20','Djibril','Tamsir');
insert into book VALUES("Sous l'orage",'2000-09-10','Seydou','Kouyate');
insert into book VALUES('Une si longue lettre','1979-05-01','Mariama','Ba');
insert into book VALUES('inferno','2005-05-10','Dan','Brown');
insert into book VALUES('a promise land','2020-11-17','Barrack','Obama');
insert into book VALUES('Becoming','2018-11-13','Michelle','Obama');
--counting the amount of book in our table
select count(title)
from book;


select * from book;

-- deleting the oldest book
delete from book
where book.publish_date =(
    select oldest from (select Min(publish_date) as oldest from book )
    as deleteoldest 
    limit 1);