create database League;
use League;

drop table teams; 
CREATE TABLE `league`.`teams` (
  `tms_id` INT NOT NULL AUTO_INCREMENT,
  `tms_city` VARCHAR(45) NOT NULL,
  `tms_name` VARCHAR(45) NOT NULL,
  `tms_coach` VARCHAR(100) NULL,
  `tms_logo` BLOB NULL,
  PRIMARY KEY (`tms_id`),
  UNIQUE INDEX `tms_name_UNIQUE` (`tms_name` ASC) VISIBLE);
  
drop table players; 
create table league.players (
	pla_id int not null auto_increment,
    pla_tms_id int not null,
    pla_dob datetime,
    pla_position varchar(45) not null,
    pla_first_name varchar(100) not null,
    pla_last_name varchar(100) not null,
    pla_number int not null,
    PRIMARY KEY (pla_id),
    index pla_tms_id_index (pla_tms_id asc) visible,
    UNIQUE INDEX pla_number_UNIQUE (pla_number ASC) VISIBLE);

insert into teams(tms_city, tms_name) value('Hanover', 'Hawks');
insert into teams(tms_city, tms_name) value('Scituate', 'Sailors');
insert into teams(tms_city, tms_name) value('Hingham', 'Harbormen');
insert into teams(tms_city, tms_name) value('Duxbury', 'Dragons');
insert into teams(tms_id, tms_city, tms_name) value(11, 'Weymouth', 'Wildcats');
insert into teams(tms_city, tms_name) value('Abington', 'Green Wave');
select * from teams;

select * from teams where substring(tms_city, 1, 1)= substring(tms_name, 1, 1);

insert into players(pla_tms_id, pla_dob, pla_position, pla_first_name, pla_last_name, pla_number) value(1, '2005-05-08', 'Goalkeeper', 'Leyton', 'Siew', 60);
insert into players(pla_tms_id, pla_dob, pla_position, pla_first_name, pla_last_name, pla_number) value(1, '2006-06-18', 'Defense Person', 'Matt', 'Collins', 2);
insert into players(pla_tms_id, pla_dob, pla_position, pla_first_name, pla_last_name, pla_number) value(1, '2005-02-12', 'Sriker', 'Dan', 'Nguyen', 33);
insert into players(pla_tms_id, pla_dob, pla_position, pla_first_name, pla_last_name, pla_number) value(1, '2004-12-16', 'Midfield', 'Hayden', 'Daley', 24);
insert into players(pla_tms_id, pla_dob, pla_position, pla_first_name, pla_last_name, pla_number) value(3, '2012-01-01', 'Defense Person', 'TJ', 'Caf', 55);
insert into players(pla_tms_id, pla_dob, pla_position, pla_first_name, pla_last_name, pla_number) value(3, '2023-01-01', 'Goalkeeper', 'Leyton', 'Siew 3.0', 9);

select * from players;

select *
from teams
left outer join players on pla_tms_id=tms_id
where pla_id is null;