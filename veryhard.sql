
create table car(
    make varchar(20),
    model varchar(20),
    year int
);

insert into car VALUES('Hyundai','Santa Fe',2014);
insert into car VALUES('Mercedes','Brabus',2021);
insert into car VALUES('Porsche','Cayenne',2019);
insert into car VALUES('Mercedes','S500',2022);
insert into car VALUES('BMW','X6',2022);

-- adding three car at once 
insert into car values
 ('Honda','Accord',2020),
 ('Nissan','Altima',2017),
 ('Hyundai','Sonata',2015);

 select *from car;

--adding price and color
alter table car add price varchar(20) not null default '$30000' ;
alter table car add color varchar(20) not null default 'white' ;
-- addind a new column with model and make
alter table car add make_model varchar(50) not null default 'Hyundai Santafe';
update car set make_model = REPLACE(make_model ,make_model, concat(make,' ',model));

-- displaying cars that have the same mak
select count(make) as SameMake, make 
from car 
group by make,make;