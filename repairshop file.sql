drop database if exists repairshop; 
create database repairshop;
use repairshop;
create table repairorder (
    id int NOT NULL AUTO_INCREMENT,
    customer varchar(50),
    instrument_id int,
    status int, 
    price decimal(5,2), 
    notes varchar(250),
	bookmark bool,
    PRIMARY KEY (id)
);

create table instrument (
    id int NOT NULL auto_increment,
    name varchar(30),
    description varchar(100),
    PRIMARY KEY (id)
);

insert into instrument ( name, description) values ('Saxophone', 'Woodwind made of brass for a unique sound'); 

insert into instrument ( name, description) values ('Tenor Saxophone', 'Woodwind made of brass for a unique sound'); 

insert into instrument ( name, description) values ('Clarinet', 'A squawky woodwind that sounds horrible'); 

insert into instrument ( name, description) values ('Korg Kross II', 'Music workstation by Kork'); 

insert into instrument ( name, description) values ('Flute', 'Woodwind instrument made of metal'); 

insert into instrument ( name, description) values ('Violin', 'Small string instrument'); 


insert into repairorder (customer, instrument_id, status, price, notes, bookmark) values ('Sally Smith', 3, 1, 25.00, 'Broken Key', false); 
insert into repairorder (customer, instrument_id, status, price, notes, bookmark) values ('Ben Franklin', 6, 1, 25.00, 'Tuner key will not turn', false); 
insert into repairorder (customer, instrument_id, status, price, notes, bookmark) values ('Jeremy Johnson', 1, 1, 25.00, 'Needs new bell', false); 



create view shortrepairlist as select ro.id, ro.customer, ins.name as instrument from repairorder ro
join instrument ins on ro.instrument_id = ins.id; 


