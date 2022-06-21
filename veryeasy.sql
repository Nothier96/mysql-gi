--Create of the table
create table car(
    make varchar(20),
    model varchar(20),
    year int
);

--Values insertion

insert into car VALUES('Hyundai','Santa Fe',2014);
insert into car VALUES('Mercedes','Brabus',2021);
insert into car VALUES('Porsche','Cayenne',2019);
insert into car VALUES('Mercedes','S500',2022);
insert into car VALUES('BMW','X6',2022);


select *from car ;