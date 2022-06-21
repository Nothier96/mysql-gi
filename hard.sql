create table movies(
    title varchar(100),
    release_date date,
    rating decimal(2,1)
);
-- drop table movies;
-- inserting movies
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


-- 
select * from movies
where title like '%s%'
order by release_date ;


select* from movies;

-- adding last name and first name for directors
alter table movies add director_FName varchar(20) not null default 'Thierno' ;
alter table movies add director_LName varchar(20) not null default 'Sissoko';




-- adding the directors names 
update movies 
set director_FName = 'Tyson' , director_LName = 'Unce'
where title = 'equalizer 2' ; 
update movies 
set director_FName = 'Diego' , director_LName = 'Duran'
where title = 'The book of Eli' ; 
update movies 
set director_FName = 'Kesu' , director_LName = 'Tsinate'
where title = 'Kingsman golden circle' ; 
update movies 
set director_FName = 'Issa' , director_LName = 'Bamia'
where title = 'Aquaman' ; 
update movies 
set director_FName = 'Kandja' , director_LName = 'Dabo'
where title = 'Wonder Woman' ; 
update movies 
set director_FName = 'Badji' , director_LName = 'Konate'
where title = 'pirates of caribbean the curse of the black pearl' ; 
update movies 
set director_FName = 'Justin' , director_LName = 'McNeil'
where title = 'Get out' ; 
update movies 
set director_FName = 'Jodi' , director_LName = 'Pierre'
where title = 'Logan' ; 
update movies 
set director_FName = 'Jordon' , director_LName = 'Douglas'
where title = 'Avengers Endgame' ; 

-- adding a new column with full name
alter table movies add director_FullName varchar(50) not null default 'Thierno Sissoko';

-- putting firstname and lastname in fullname column
update movies set director_FullName = REPLACE(director_FullName ,director_FullName , concat(director_FName,' ',director_LName));


select *from movies
order by director_LName ;

-- selecting 3 movies
select *from movies
limit 3;


select director_LName from movies where director_LName like '%as' ; 

-- delete where last name ends with r-z
delete from movies
 where director_LName like '%r';
delete from movies
 where director_LName like '%s';
delete from movies
 where director_LName like '%t';
delete from movies
 where director_LName like '%u';
delete from movies
 where director_LName like '%v';
delete from movies
 where director_LName like '%w';
delete from movies
 where director_LName like '%x';
delete from movies
 where director_LName like '%y';
delete from movies
 where director_LName like '%z';