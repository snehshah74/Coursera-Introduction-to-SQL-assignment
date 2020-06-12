CREATE TABLE `album` (
  `album_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `artist_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `album` (`album_id`, `title`, `artist_id`) VALUES
(1, 'Love', 1),
(2, 'Love for you', 2),
(3, 'Sad', 2),
(4, 'once', 3),
(5, 'Laber', 3);

CREATE TABLE `artist` (
  `artist_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `artist` (`artist_id`, `name`) VALUES
(1, 'Arijit singh '),
(2, 'Armann '),
(3, 'Mithoon');


CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `genre` (`genre_id`, `name`) VALUES
(2, 'Rock'),
(1, 'Westerns'),
(3, 'Thriller');


CREATE TABLE `track` (
  `track_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `track` (`track_id`, `title`, `len`, `rating`, `count`, `album_id`, `genre_id`) VALUES
(1, 'Meri ashique', 392, 4, 0, 1, 1),
(2, 'Baby', 403, 5, 0, 1, 1),
(3, 'I dont wanna live forever', 321, 5, 0, 1, 1),
(4, 'For You', 256, 4, 0, 1, 1),
(5, 'Rockstar', 306, 4, 0, 2, 2),
(6, 'Roses', 326, 3, 0, 2, 2),
(7, 'Rain on me', 287, 5, 0, 2, 2),
(8, 'You get me', 237, 5, 0, 2, 2),
(9, 'Stay', 244, 5, 0, 3, 2),
(10, 'Dont star now', 212, 5, 0, 3, 2),
(11, 'Blamer it on me', 242, 5, 0, 3, 2),
(12, 'Break my heart', 247, 5, 0, 3, 2),
(13, 'Some one you loved', 251, 5, 0, 4, 3),
(14, 'Falljng', 243, 5, 0, 4, 3),
(15, 'cierclers', 309, 5, 0, 4, 3),
(16, 'It int me', 264, 5, 0, 4, 3),
(17, 'In your eyess', 366, 5, 0, 5, 3),
(18, 'Put it on me', 232, 5, 0, 5, 3),
(19, 'Hold Up', 212, 5, 0, 5, 3),
(20, 'Lean on me', 339, 5, 0, 5, 3);

ALTER TABLE `album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `title` (`title`) USING BTREE,
  ADD KEY `artist_id` (`artist_id`);


ALTER TABLE `artist`
  ADD PRIMARY KEY (`artist_id`);

ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`),
  ADD KEY `name` (`name`) USING BTREE;

ALTER TABLE `track`
  ADD PRIMARY KEY (`track_id`),
  ADD KEY `title` (`title`) USING BTREE,
  ADD KEY `album_id` (`album_id`),
  ADD KEY `genre_id` (`genre_id`);

ALTER TABLE `album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `artist`
  MODIFY `artist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `track`
--
ALTER TABLE `track`
  MODIFY `track_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;