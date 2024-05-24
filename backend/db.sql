CREATE DATABASE filmnest;

CREATE TABLE genres(
   id INT PRIMARY KEY NOT NULL,
   title TEXT NOT NULL,
   image TEXT NOT NULL
);

INSERT INTO genres(id, title, image)
VALUES(1, 'Action', '/src/assets/images/action.jpg');
INSERT INTO genres(id, title, image)
VALUES(2, 'Romance', '/src/assets/images/romance.jpg');
INSERT INTO genres(id, title, image)
VALUES(3, 'Science Fiction', '/src/assets/images/sci-fi.jpg');



CREATE TABLE films(
  id INT PRIMARY KEY NOT NULL,
  title TEXT NOT NULL,
  year INT NOT NULL,
  image TEXT NOT NULL,
  description TEXT NOT NULL,
  likes INT,
  rate float
);

CREATE TABLE films_genres(
  film_id INT NOT NULL,
  genre_id INT NOT NULL,
  CONSTRAINT fk_film
      FOREIGN KEY(film_id)
        REFERENCES films(id),
  CONSTRAINT fk_genre
      FOREIGN KEY(genre_id)
        REFERENCES genres(id)
);


INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(1, 'Dune', 2021, '/src/assets/images/films/action/dune.png', 'A noble family becomes embroiled in a war for control over the galaxy''s most valuable asset while its heir becomes troubled by visions of a dark future.', 1, 8.0);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(2, 'Dune: Part Two', 2024, '/src/assets/images/films/action/dune2.png', 'Paul Atreides unites with Chani and the Fremen while seeking revenge against the conspirators who destroyed his family.', 1, 8.7);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(3, 'Avatar: The Last Airbender', 2024, '/src/assets/images/films/action/avatar.png', 'A young boy known as the Avatar must master the four elemental powers to save the world, and fight against an enemy bent on stopping him.', 1, 7.2);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(4, 'Bullet Train', 2022, '/src/assets/images/films/action/bullet_train.png', 'Five assassins aboard a swiftly-moving bullet train find out that their missions have something in common.', 1, 7.3);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(5, 'Gladiator', 2000, '/src/assets/images/films/action/gladiator.png', 'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.', 1, 8.5);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(6, 'House of Dragon', 2022, '/src/assets/images/films/action/house_of_dragon.png', 'An internal succession war within House Targaryen at the height of its power, 172 years before the birth of Daenerys Targaryen.', 1, 8.4);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(7, 'The Hunger Games', 2012, '/src/assets/images/films/action/hunger_games.png', 'Katniss Everdeen voluntarily takes her younger sister''s place in the Hunger Games: a televised competition in which two teenagers from each of the twelve Districts of Panem are chosen at random to fight to the death.', 1, 7.2);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(8, 'Inception', 2010, '/src/assets/images/films/action/inception.png', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster.', 1, 8.8);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(9, 'The Matrix', 1999, '/src/assets/images/films/action/matrix.png', 'When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth--the life he knows is the elaborate deception of an evil cyber-intelligence.', 1, 8.7);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(10, 'Top Gun: Maverick', 2022, '/src/assets/images/films/action/topgun.png', 'After thirty years, Maverick is still pushing the envelope as a top naval aviator, but must confront ghosts of his past when he leads TOP GUN''s elite graduates on a mission that demands the ultimate sacrifice from those chosen to fly it.', 1, 8.2);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(11, 'Vikings', 2013, '/src/assets/images/films/action/vikings.png', 'Vikings transports us to the brutal and mysterious world of Ragnar Lothbrok, a Viking warrior and farmer who yearns to explore--and raid--the distant shores across the ocean.', 1, 8.5);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(12, 'Land of Bad', 2024, '/src/assets/images/films/action/land-of-bad.png', 'A US Army special forces unit is ambushed during a mission to retrieve an intelligence asset and their only remaining hope lies with a remote Air Force drone operator assisting them through a brutal 48-hour battle for survival.', 1, 6.5);



INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(13, 'Challengers', 2024, '/src/assets/images/films/romance/challengers.png', 'Tashi, a former tennis prodigy turned coach, turned her husband into a champion. But to overcome a losing streak, he needs to face his ex-best friend and Tashi''s ex-boyfriend.', 1, 7.7);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(14, 'Poor Things', 2023, '/src/assets/images/films/romance/poorthings.png', 'An account of the fantastical evolution of Bella Baxter, a young woman brought back to life by the brilliant and unorthodox scientist Dr. Godwin Baxter.', 1, 7.9);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(15, 'Purple Hearts', 2022, '/src/assets/images/films/romance/purple-hearts.png', 'In spite of their many differences, Cassie, a struggling singer-songwriter, and Luke, a troubled Marine, agree to marry solely for military benefits, but when tragedy strikes, the line between real and pretend begins to blur.', 1, 6.7);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(16, 'You', 2018, '/src/assets/images/films/romance/you.png', 'A dangerously charming, intensely obsessive young man goes to extreme measures to insert himself into the lives of those he is transfixed by.', 1, 7.7);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(17, 'Forest Gump', 1994, '/src/assets/images/films/romance/forest-gump.png', 'The history of the United States from the 1950s to the ''70s unfolds from the perspective of an Alabama man with an IQ of 75, who yearns to be reunited with his childhood sweetheart.', 1, 8.8);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(18, 'Downtown Abbey', 2010, '/src/assets/images/films/romance/downtown-abbey.png', 'A chronicle of the lives of the British aristocratic Crawley family and their servants in the early twentieth century.', 1, 8.7);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(19, 'La La Land', 2016, '/src/assets/images/films/romance/la-la-land.png', 'While navigating their careers in Los Angeles, a pianist and an actress fall in love while attempting to reconcile their aspirations for the future.', 1, 8.0);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(20, 'Twilight', 2008, '/src/assets/images/films/romance/twilight.png', 'When Bella Swan moves to a small town in the Pacific Northwest, she falls in love with Edward Cullen, a mysterious classmate who reveals himself to be a 108-year-old vampire.', 1, 5.3);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(21, 'Pride and  Prejudice', 2005, '/src/assets/images/films/romance/pride-and-prejudice.png', 'Sparks fly when spirited Elizabeth Bennet meets single, rich, and proud Mr. Darcy. But Mr. Darcy reluctantly finds himself falling in love with a woman beneath his class. Can each overcome their own pride and prejudice?', 1, 7.8);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(22, 'Little Woman', 2019, '/src/assets/images/films/romance/little-woman.png', 'Jo March reflects back and forth on her life, telling the beloved story of the March sisters - four young women, each determined to live life on her own terms.', 1, 7.8);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(23, 'Her', 2013, '/src/assets/images/films/romance/her.png', 'In a near future, a lonely writer develops an unlikely relationship with an operating system designed to meet his every need.', 1, 8.0);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(24, 'About Time', 2013, '/src/assets/images/films/romance/about-time.png', 'At the age of 21, Tim discovers he can travel in time and change what happens and has happened in his own life. His decision to make his world a better place by getting a girlfriend turns out not to be as easy as you might think.', 1, 7.8);



INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(25, 'Dark Matter', 2024, '/src/assets/images/films/sci-fi/dark-matter.png', 'A man is abducted into an alternate version of his life. Amid the mind-bending landscape of lives he could''ve lived, he embarks on a harrowing journey to get back to his true family and save them from a most terrifying foe: himself.', 1, 7.4);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(26, 'American Horror Story', 2011, '/src/assets/images/films/sci-fi/american-horror-story.png', 'An anthology series centering on different characters and locations, showcasing different aspects of horror.', 1, 8.0);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(27, 'Stranger Things', 2016, '/src/assets/images/films/sci-fi/stranger-things.png', 'When a young boy vanishes, a small town uncovers a mystery involving secret experiments, terrifying supernatural forces and one strange little girl.', 1, 8.7);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(28, 'Interstellar', 2014, '/src/assets/images/films/sci-fi/interstellar.png', 'When Earth becomes uninhabitable in the future, a farmer and ex-NASA pilot, Joseph Cooper, is tasked to pilot a spacecraft, along with a team of researchers, to find a new planet for humans.', 1, 8.7);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(29, 'Ahsoka', 2023, '/src/assets/images/films/sci-fi/ahsoka.png', 'After the fall of the Galactic Empire, former Jedi Ahsoka Tano investigates an emerging threat to a vulnerable galaxy.', 1, 7.5);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(30, 'Arrival', 2016, '/src/assets/images/films/sci-fi/arrival.png', 'A linguist works with the military to communicate with alien lifeforms after twelve mysterious spacecraft appear around the world.', 1, 7.9);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(31, 'Alien', 1979, '/src/assets/images/films/sci-fi/alien.png', 'The crew of a commercial spacecraft encounters a deadly lifeform after investigating a mysterious transmission of unknown origin.', 1, 8.5);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(32, 'Avengers: Endgame', 2019, '/src/assets/images/films/sci-fi/avengers.png', 'After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos'' actions and restore balance to the universe.', 1, 8.4);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(33, 'Spaceman', 2024, '/src/assets/images/films/sci-fi/spaceman.png', 'Half a year into his solo mission on the edge of the solar system, an astronaut concerned with the state of his life back on Earth is helped by an ancient creature he discovers in the bowels of his ship.', 1, 5.7);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(34, 'The Maze Runner', 2014, '/src/assets/images/films/sci-fi/the-maze-runner.png', 'Thomas is deposited in a community of boys after his memory is erased, soon learning they''re all trapped in a maze that will require him to join forces with fellow runners for a shot at escape.', 1, 6.8);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(35, 'Ex Machina', 2014, '/src/assets/images/films/sci-fi/ex-machina.png', 'A young programmer is selected to participate in a ground-breaking experiment in synthetic intelligence by evaluating the human qualities of a highly advanced humanoid A.I.', 1, 7.7);
INSERT INTO films(id, title, year, image, description, likes, rate)
VALUES(36, 'Severance', 2022, '/src/assets/images/films/sci-fi/severance.png', 'Mark leads a team of office workers whose memories have been surgically divided between their work and personal lives. When a mysterious colleague appears outside of work, it begins a journey to discover the truth about their jobs.', 1, 8.7);



INSERT INTO films_genres(film_id, genre_id)
VALUES(1, 1);
INSERT INTO films_genres(film_id, genre_id)
VALUES(2, 1);
INSERT INTO films_genres(film_id, genre_id)
VALUES(3, 1);
INSERT INTO films_genres(film_id, genre_id)
VALUES(4, 1);
INSERT INTO films_genres(film_id, genre_id)
VALUES(5, 1);
INSERT INTO films_genres(film_id, genre_id)
VALUES(6, 1);
INSERT INTO films_genres(film_id, genre_id)
VALUES(7, 1);
INSERT INTO films_genres(film_id, genre_id)
VALUES(8, 1);
INSERT INTO films_genres(film_id, genre_id)
VALUES(9, 1);
INSERT INTO films_genres(film_id, genre_id)
VALUES(10, 1);
INSERT INTO films_genres(film_id, genre_id)
VALUES(11, 1);
INSERT INTO films_genres(film_id, genre_id)
VALUES(12, 1);



INSERT INTO films_genres(film_id, genre_id)
VALUES(13, 2);
INSERT INTO films_genres(film_id, genre_id)
VALUES(14, 2);
INSERT INTO films_genres(film_id, genre_id)
VALUES(15, 2);
INSERT INTO films_genres(film_id, genre_id)
VALUES(16, 2);
INSERT INTO films_genres(film_id, genre_id)
VALUES(17, 2);
INSERT INTO films_genres(film_id, genre_id)
VALUES(18, 2);
INSERT INTO films_genres(film_id, genre_id)
VALUES(19, 2);
INSERT INTO films_genres(film_id, genre_id)
VALUES(20, 2);
INSERT INTO films_genres(film_id, genre_id)
VALUES(21, 2);
INSERT INTO films_genres(film_id, genre_id)
VALUES(22, 2);
INSERT INTO films_genres(film_id, genre_id)
VALUES(23, 2);
INSERT INTO films_genres(film_id, genre_id)
VALUES(24, 2);


INSERT INTO films_genres(film_id, genre_id)
VALUES(25, 3);
INSERT INTO films_genres(film_id, genre_id)
VALUES(26, 3);
INSERT INTO films_genres(film_id, genre_id)
VALUES(27, 3);
INSERT INTO films_genres(film_id, genre_id)
VALUES(28, 3);
INSERT INTO films_genres(film_id, genre_id)
VALUES(29, 3);
INSERT INTO films_genres(film_id, genre_id)
VALUES(30, 3);
INSERT INTO films_genres(film_id, genre_id)
VALUES(31, 3);
INSERT INTO films_genres(film_id, genre_id)
VALUES(32, 3);
INSERT INTO films_genres(film_id, genre_id)
VALUES(33, 3);
INSERT INTO films_genres(film_id, genre_id)
VALUES(34, 3);
INSERT INTO films_genres(film_id, genre_id)
VALUES(35, 3);
INSERT INTO films_genres(film_id, genre_id)
VALUES(36, 3);




CREATE TABLE contact(
  id INT PRIMARY KEY NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 ),
  name TEXT NOT NULL,
  email TEXT NOT NULL,
  message TEXT NOT NULL
);



CREATE TABLE subscribe(
   id INT PRIMARY KEY NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 ),
  email TEXT NOT NULL
);




CREATE TABLE reviews(
  id INT PRIMARY KEY NOT NULL,
  title TEXT NOT NULL,
  name TEXT NOT NULL,
  review TEXT NOT NULL,
  rate INT NOT NULL,
  film_id INT NOT NULL,
  CONSTRAINT fk_film_reviews
      FOREIGN KEY(film_id)
        REFERENCES films(id)
);


INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(1,'New favorite movie!!', 'Christinadela', 'I just watched it and I am so amazed right now. I loved basically everything about it. Unlike Marvel or the new Star Wars movies there were no silly jokes, which break an epic moment. Dune is an adult and absolutely epic movie. Just incredible.', 10, 1);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(2,'Truly a masterpiece', 'Maxi1', 'After watching the advanced screening, we were blown away by Part 2 of Dune. It continues seamlessly after Part 1, with the same masterful soundtracks, action scenes and acting.', 10, 2);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(3,'Not bad', 'nxkodem1', 'As a big fan of the animated avatar, I can say that it''s not bad. It''s certainly better than the 2010 film but it''s also not as good as last year''s One Piece. The animals and ghosts look beautiful. The fight scenes and the elements look cool too.', 7, 3);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(4,'I had so much fun wacthing this', 'Niki30', 'Rare seeing Brad Pitt in a movie like this but from what I understand the director is a good friend of his. It''s an action movie the reads like Smoking Aces. An ensemble cast with a few different stories in it, of which, interestingly enough Brad Pitt''s story as a man named Ladybug could be considered just as important as the others despite being the star.', 9, 4);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(5,'Are you entertained? Yes sir yes I am', 'Mike K', 'Gladiator is an epic masterpiece with powerful performances and stunning visuals. A timeless classic and seriously the best fantasy film of the modern area with great acting and emotional rollercoastering all the way through.', 9, 5);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(6,'Starts up, ends down', 'Alex22', 'Strong performances and production, but some episodes drag. It has a promising story, a lot of money and an interesting epoch to talk about. It starts really good, but suddenly jumps a lot of years with no notice, and later a lot of years more.', 7, 6);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(7,'The Hunger Games leaves you Hungry for more.', 'Connor185', 'The Hunger Games, live up to every expectation and stays real and on the guidelines of the book series, if you enjoyed the books the film adaptation is a must. The film certainly has the potential to become the new phenomenon in replace of the recently ended Harry Potter series, in many ways it can be compared to the Harry Potter series, but I prefer The Hunger Games, so far.', 9, 7);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(8,'Inception; Christopher Nolan''s masterpiece?', 'Jamie J', 'A mind-bending masterpiece with superb direction and outstanding performances. Visually stunning and thought-provoking. Inception is truly one of a kind. A concept which has long gestated in Christopher Nolan''s mind, his eye for drama mixed with his large scale sensibilities ring true in Blockbuster season making Inception a true original in the sea of reboots, remakes and sequels.', 10, 8);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(9,'Benchmark forever.', 'Rosinercxd', 'Writing a review of The Matrix is a very hard thing for me to do because this film means a lot to me and therefore I want to do the film justice by writing a good review. To tell the truth the first time I saw the film I was enamored by the effects. I remember thinking to myself that this was one of the most visually stunning films I had ever seen in my life.', 10, 9);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(10,'TOM CRUISE YOU LEGEND!', 'r96sk', 'I was expecting it to be good, but it''s actually much more enjoyable than I had anticipated. The callbacks to the original are expertly done, the new characters are strong/well cast, it has plenty of meaning, music is fab and the action is outstanding - the aerial stuff is sensational. The story is superb, with each high stake coming across as intended - parts even gave me slight goosebumps, which is a surprise given I''m not someone who has a connection to the 1986 film. It''s all super neatly put together, I honestly came close to giving it a higher rating.', 10, 10);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(11,'Absolutely Amazing!!', 'Rob1331', 'Vikings is one of the rare shows where it is never dull and full of entertainment. It''s a show with plenty of violence, drama, mystery, etc. The character development is what keeps the show fresh and interesting. It takes you into this world of Vikings and keeps you intrigued throughout the series. ', 9, 11);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(12,'It is actually quite ok', 'noone', 'Not as bad as I feared. There is absolutely no nitty-gritty feel to it. Nothing dark or foreboding. Nothing really suspenseful. No, it floats gently on the surface, fairly nice, controlled and polished. ', 6, 12);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(13, 'Not at all what expected', 'Loui4', 'I think all three leading characters were very well cast and delivered great performances, and the soundtrack is fantastic. But what came out is still a complete mess, feels raw and very cheap. Dialogs are barely audible behind too loud soundtrack. The story is non-existent, and far too patchy, jumping back and forth in time. The characters are not very well developed, and their motivation poorly justified.', 3, 13);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(14, 'Odd, interesting, uncomfortable to some, misunderstood by many', 'Anonymous', '"Poor things" isn''t for everybody. And when I say that I don t mean that if you don t like it, it went over your head and you should go back to watching Transfomers. No. It''s a very very very specific type of weird, that won''t be for everyone. If it happes to be your kind of weird, you will love it. I enjoyed watching it, even though it felt awkward at times. In my opinion, many users who gave it a 1/10, missed the point. ', 8, 14);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(15, 'Not a bad romance film.', 'Annette-8890', 'I quite enjoyed this and I''m not a huge rom com fan. I wish they had made the female lead more likeable by making her less argumentative, it was too overpowering and irritating to watch at times.', 6, 15);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(16, 'Exciting Thriller!', 'Supermanfan-13', 'I love this! It''s dark but yet sexy at the same time. Penn does an amazing job narrating and he makes creepy seem alluring. I can''t think of any other actor who''d do a better job.', 9, 16);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(17, 'Life''s Lessons in one Movie...', 'Lacey', 'When I first saw this movie I didn''t appreciate it like I do now. I think it may have been because I was so young when I first saw it. Just recently I saw the movie again. What an amazing story and moving meaning. That movie teaches you so much about life and the meaning of it. That life isn''t as bad as most people make it seem. That an innocent man can impact so many lives with his innocence. The meaning of the movie to me is that everyone needs to have a better outlook on life. ', 10, 17);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(18, 'Enjoyable', 'Kate', 'What can i say? Since I saw the first season I''ve been an unconditional fan of Downton Abbey. I think it''s one of the most historically accurate and refined series of recent years.', 9, 18);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(19, 'Great production value, but painfully boring and overrated.', 'Theo Robertson', 'This movie is so overrated. It has great production value, but it kind of ends there. The movie is a musical, but half way through it decides to suddenly stop being a music and just turns into a boring drama with a dull plot.', 5, 19);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(20, 'Not excellent, but it is well-spent time', 'Jackie James', 'OK, so from what I know about this movie, people either love it or hate it. The truth, of course, is somewhere in-between. While the movie is not perfect, it is very good fun and delivers as long as you don''t expect a masterpiece. So don''t raise the bar of your expectations too high - this is NOT going to be an Oscar winning masterpiece and it is NOT going to enter the IMDb Top 250.', 6, 20);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(21, 'Jane Austen forever', 'Christina', 'The fantastic romantic world of Jane Austen again makes its way to the silver screen in Joe Wright''s new adaptation of the classic novel Pride and Prejudice. It is the first feature film to be adapted from it in 65 years, and believe me when I say it does not disappoint. This adaptation is, for lack of a better word, a BRILLIANT achievement that keeps you actively involved from the first scene to the very last scene, just about consuming you with aching romance  and it is sprinkled with humour and intelligence.', 8, 21);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(22, 'I am the odd reviewer who did NOT love this film.', 'thisisme', 'One of my favorites stories completely ruined.. There are so many flashbacks that it makes it hard to tell when we are in the present moment. The characters are rather flat and you don''t really care about them as much as you would do in the 94 version.', 5, 22);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(23, 'Unique!', 'BillK', 'Another movie that i say "i should''ve watched before". Intense romantic drama. Fascinating portrait of loneliness in a post-digital world.', 10, 23);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(24, 'Simple yet effective', 'Vini', 'One thing you have to do, if you decide watching this: Do not care about inconsistencies. Or trying to make sense of it. There is more wrong with the internal logic that you will be able to stomach (if you go down that road). Of course the actors are able to distract you most of the time (really nice work done there), but there will be times where you''re just going to go: Really?', 7, 24);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(25, 'Only slow to start', 'Toby', 'It starts slow, which represents typical Apple TV filler or padding in a story that might be better served as a movie. This is frequently the case when a series is based on a single book.', 8, 25);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(26, 'Not everyone''s cup of tea, but I loved it.', 'Sam2090', 'American horror story is a great if you''re into this kind of horror, people that are into slasher movies/shows will probably not like this. Overall AHS has its low seasons and high seasons, every season is very different and that''s why most people aren''t into all the seasons. Overall probably the best thing about this show is the casting and acting.', 9, 26);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(27, 'One of the best supernatural shows ever', 'Robin', 'Stranger Things is absolutely as good as everyone says it is. When a show is as talked about about as much as this one has been it''s hard to live up to expectations. Stranger Things has not only met those expectations but has surpassed them in every way. ', 9, 27);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(28, 'Best movie I have seen in my life', 'Patterson13', 'This movie was the best written, acted, visual effected, etc. movie. This movie was the best movie I have ever seen. I am a huge Christopher Nolan fan and this movie was his finest.', 10, 28);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(29, 'kinda dumb', 'Shery550', 'Ahsoka is, for most of the first episode, fairly decent. Rosario Dawson is a rather muted hero, but there''s a good fight scene early on and I thought the general was an appealing character. But the character of Sabine makes no sense. She starts by doing something rebellious for no other reason than to show that, yeah, she''s a rebel just for the sake of being a rebel.', 7, 29);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(30, 'Excellent, intelligent, just a terrific film.', 'sleepin-dragon', 'This is a very, very well made film, which is thought provoking, measured, engaging, and thoroughly well made. There is nothing brash, or heavy handed about it, the story is superbly told, with well grounded characters. The story is of course sci fi, and hugely creative, but it''s never silly, it is incredibly intelligent.', 9, 30);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(31, 'Ahead of its time', 'dead47586', '"Alien" is one of those special films that have aged very, very well. Even now, after nearly 40 years, everything about it just feels fresh.', 9, 31);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(32, 'Not as good as infinity war.', 'movieLover', 'But its a pretty good film. A bit of a mess in some parts, lacking the cohesive and effortless feel infinity war somehow managed to accomplish. Some silly plot holes and characters that could''ve been cut. The use of Captain marvel in this film was just ridiculous. ', 7, 32);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(33, 'An hour in and I have had to give up', 'Steven', 'Don''t get me wrong, this is a very well made film with decent acting, good CGI, some beautiful cinematography and an interesting premise about loneliness, loss and mental illness. However the script, the plot and the pacing simply kill any momentum that the movie tries to have. It is definitely a cure for insomnia.', 6, 33);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(34, 'Good, but could easilly be better', 'Emma-z', 'The good performance of some actors, special effects and the mystery of the environment in which they found themselves is enough to keep the audience interested. It also has a good direction that didn''t put the typical teenage romance, that can be so tiring.', 7, 34);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(35,'Robots will take over the world', 'simon', 'This is the kind of movie I really enjoy when I think about science fiction. Movies that make you think if we should continue trying to progress even more. Are we not already smart enough with everything we have? With all our daily gadgets that we can''t miss for one second. Do we really need artificial intelligence? For a movie that is filmed at the same spot all the time you certainly don''t get bored for a second. Nice science fiction like there should be more of them.', 8, 35);
INSERT INTO reviews(id, title, name, review, rate, film_id)
VALUES(36,'Either it catches you from the beginning or not', 'K-sct', 'I can understand why people love the series but it''s not my cup of tea. It is slow, it is calm, it needs time to unfold the story and it needs patience. In criminal series I''m okay with slow tempo because there is a will to figure out who is the murderer. But in Severance, I can''t see any aspect which keeps me interested to follow the happenings. Parallel to the tempo, I slowly lost my interest and didn''t want to finish it.', 5, 36);
