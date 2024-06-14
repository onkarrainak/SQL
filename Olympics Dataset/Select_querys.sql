create database OLYMPICS;
use OLYMPICS;
DROP TABLE IF EXISTS athlete_events;
CREATE TABLE IF NOT EXISTS OLYMPICS_HISTORY
(
    id          INT,
    name        VARCHAR(100),
    sex         VARCHAR(20),
    age         VARCHAR(20),
    height      VARCHAR(20),
    weight      VARCHAR(20),
    team        VARCHAR(50),
    noc         VARCHAR(20),
    games       VARCHAR(100),
    year        INT,
    season      VARCHAR(20),
    city        VARCHAR(50),
    sport       VARCHAR(100),
    event       VARCHAR(100),
    medal       VARCHAR(20)
);

desc OLYMPICS_HISTORY;

select * from OLYMPICS_HISTORY;


select name , city from OLYMPICS_HISTORY;
select count(*) sport from OLYMPICS_HISTORY;
select count(event) from OLYMPICS_HISTORY;
select count(*) from OLYMPICS_HISTORY where age ='NA';
select avg(height) from OLYMPICS_HISTORY where sport ='Basketball';
select avg(weight) from OLYMPICS_HISTORY where sport ='Football';
select count(*) from OLYMPICS_HISTORY where sex = 'M';
select count(*) from OLYMPICS_HISTORY where sex = 'F';
select count(*) from OLYMPICS_HISTORY where sex = 'NA';

select team from  OLYMPICS_HISTORY where games between '1992 Summer' and '1998 Summer';

select distinct sport from OLYMPICS_HISTORY;
SELECT * FROM OLYMPICS_HISTORY WHERE medal IS NULL;
update OLYMPICS_HISTORY set medal = NULL where medal = 'NA';
-- select count(*) from OLYMPICS_HISTORY where medal = 'NULL';

update OLYMPICS_HISTORY set weight = NUll where weight = 'NA';

select count(*) from OLYMPICS_HISTORY where weight is NULL;
select count(*) from OLYMPICS_HISTORY where medal is NULL;

