INSERT INTO `user` (`user_id`, `name`) VALUES
(5, 'Aman'),
(4, 'Falak'),
(13, 'isha'),
(9, 'Arsh'),
(3, 'Karleen'),
(10, 'Rudra'),
(8, 'alex'),
(1, 'Mansi'),
(15, 'alkali'),
(6, 'Parth'),
(7, 'Sneh'),
(2, 'chelsa'),
(11, 'Tanya'),
(14, 'shivani'),
(12, 'heer');

INSERT INTO `course` (`course_id`, `title`) VALUES
(1, 'si106'),
(2, 'si110'),
(3, 'si206');


INSERT INTO `member` (`user_id`, `course_id`, `role`) VALUES
(1, 1, 1),
(2, 1, 0),
(3, 1, 0),
(4, 1, 0),
(5, 1, 0),
(6, 2, 1),
(7, 2, 0),
(8, 2, 0),
(9, 2, 0),
(10, 2, 0),
(11, 3, 1),
(12, 3, 0),
(13, 3, 0),
(14, 3, 0),
(15, 3, 0);

SELECT User.name, Course.title, Member.role
FROM User JOIN Member JOIN Course
ON User.user_id = Member.user_id AND Member.course_id = Course.course_id
ORDER BY Course.title, Member.role DESC, User.na