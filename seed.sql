DROP DATABASE IF EXISTS movies;
CREATE DATABASE movies;

\c movies;

CREATE TABLE Movies (
  id SERIAL PRIMARY KEY,
  title VARCHAR(250) NOT NULL,
  genre_id INT NULL,
  genre_id2 INT NULL, 
  img_url JSON NULL
); 

CREATE TABLE Genres(
  id SERIAL PRIMARY KEY,
  name VARCHAR(250) NULL
);


CREATE TABLE Ratings(
    id SERIAL PRIMARY KEY, 
    stars INT NOT NULL,
    movie_id INT REFERENCES Movies(id) NULL
);

CREATE TABLE Comments(
   id SERIAL PRIMARY KEY,
   text VARCHAR(250) NOT NULL,
   movie_id INT REFERENCES Movies(id) NULL
);


INSERT INTO Movies (title, genre_id, genre_id2, img_url) VALUES
('Pulp Fiction', 1, 2, '{"pic":"https://www.google.com/imgres?imgurl=https%3A%2F%2Fm.media-amazon.com%2Fimages%2FM%2FMV5BMjI5MzgxMTQ4M15BMl5BanBnXkFtZTgwNjczMTk0NzE%40._V1_UX477_CR0%2C0%2C477%2C268_AL_.jpg&imgrefurl=https%3A%2F%2Fwww.imdb.com%2Ftitle%2Ftt0110912%2F&docid=4e1-1YpMkMeEsM&tbnid=IU2E4gk9KfKEYM%3A&vet=10ahUKEwi3peK1583hAhVln-AKHQSvDlUQMwhnKAAwAA..i&w=477&h=268&bih=705&biw=723&q=pulpfiction&ved=0ahUKEwi3peK1583hAhVln-AKHQSvDlUQMwhnKAAwAA&iact=mrc&uact=8"}'),
('BeetleJuice', 2, 6, '{"pic":"https://www.imdb.com/title/tt0094721/mediaviewer/rm2212181760?ref_=tt_ov_i"}'), 
('Fault in our stars', 3, 7, '{"pic":"https://www.imdb.com/title/tt2582846/mediaviewer/rm3702838272?ref_=tt_ov_i"}'),
('Greenbook', 4, 4, '{"pic":"https://www.imdb.com/title/tt6966692/mediaviewer/rm2461296640?ref_=tt_ov_i"}'),
('Avengers',5, 6,'{"pic":"https://www.imdb.com/title/tt0848228/mediaviewer/rm3955117056?ref_=tt_ov_i"}'),
('Harry Potter', 5, 6, '{"pic":"https://www.imdb.com/title/tt0241527/mediaviewer/rm683213568?ref_=tt_ov_i"}'), 
('3 idiots', 2, 3, '{"pic":"https://www.imdb.com/title/tt1187043/mediaviewer/rm2029391104?ref_=tt_ov_i"}'),
('Glass 2019', 5, 2, '{"pic":"https://www.imdb.com/title/tt6823368/mediaviewer/rm2746709504?ref_=tt_ov_i"}'),
('Inception', 9, 3, '{"pic":"https://www.imdb.com/title/tt1375666/mediaviewer/rm3426651392?ref_=tt_ov_i"}'),
('Coco', 3, 8,'{"pic":"https://www.imdb.com/title/tt2380307/mediaviewer/rm585455872?ref_=tt_ov_i"}');



INSERT INTO Genres (name) VALUES 
('Crime'), 
('Comedy'), 
('Drama'), 
('Biography'), 
('Action'), 
('Adventure'), 
('Romance'), 
('Animation'); 


INSERT INTO Ratings (stars, movie_id) VALUES 
(3, 1),
(2,1),
(4,1),
(2,2),
(5,2),
(4,2),
(5,3),
(2.6,3),
(1,3),
(4,4),
(3,4),
(3.1,4),
(3.5,5),
(2.5,6),
(4,7),
(1,8),
(5,8),
(4,9),
(2,9),
(4,10),
(3,10); 

INSERT INTO Comments (text, movie_id) VALUES
('This movie is awesome', 1), 
('Incredibly my childhood memories', 2), 
('This is remarkable', 3), 
('Perfect! 10/10 for me', 4), 
('You have to admire the nerve of Shyamalan for attempting something like this-and indeed, for choosing Glass as the title for a film so unashamedly non-transparent', 5), 
('You got to watch this', 5),
('Want to repeat it again', 6),
('This sucks!', 7),
('Popcorn please', 8), 
('Cool movie', 9),
('I cried :(', 10);
