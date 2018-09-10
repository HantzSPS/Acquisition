create table movie_goers
(ID  int primary key,
first_name varchar(20),
last_name varchar(20),
address varchar(50),
revenue decimal(12));

drop table movies;

create table movies
(movie_ID int primary key,
title varchar(100),
genre varchar(250)
);

drop table ratings;

create table ratings
(user_id int not null references movie_goers(ID),
movie_ID int not null references movies(movie_ID),
constraint rating_id primary key(user_id, movie_ID),
ratings int,
comments varchar(250)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/movie_goers.csv' 
INTO TABLE movie_goers
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

select * from movie_goers;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/movie.csv' 
INTO TABLE movies
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/ratings.csv' 
INTO TABLE ratings
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n';


