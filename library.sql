CREATE TABLE `authors` (
  `authorid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL DEFAULT '',
  PRIMARY KEY (`authorid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

INSERT INTO `authors` (`authorid`, `name`) VALUES
(1, 'J・R・R・トールキン'),
(2, 'アレックス・ヘイリー'),
(3, 'トム・クランシー'),
(4, 'アイザック・アシモフ');

CREATE TABLE `books` (
  `bookid` int(11) NOT NULL AUTO_INCREMENT,
  `authorid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(55) NOT NULL DEFAULT '',
  `ISBN` varchar(25) NOT NULL DEFAULT '',
  `pub_year` smallint(6) NOT NULL DEFAULT '0',
  `available` tinyint(4) NOT NULL,
  PRIMARY KEY (`bookid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

INSERT INTO `books` (`bookid`, `authorid`, `title`, `ISBN`, `pub_year`, `available`) VALUES
(1, 1, '二つの塔', '0-261-10236-2', 1954, 1),
(2, 1, '王の帰還', '0-261-10237-0', 1955, 1),
(3, 2, 'ルーツ', '0-440-17464-3', 1974, 1),
(4, 3, 'レインボーシックス', '0-425-17034-9', 1998, 1),
(5, 3, '国際テロ', '0-399-15079-X', 2003, 1),
(6, 3, '合衆国崩壊', '0-425-15863-2', 1996, 1),
(7, 1, 'ホビットの冒険', '0-261-10221-4', 1937, 1),
(8, 3, '恐怖の総和', '0-425-13354-0', 1991, 1),
(9, 3, '教皇暗殺', '0-399-14870-1', 2000, 0),
(10, 4, 'われはロボット', '0-553-29438-5', 1950, 1),
(11, 4, 'ファウンデーション', '0-553-80371-9', 1951, 1),
(12, 4, 'ファウンデーションの彼方へ', '0-553-29338-9', 1982, 1),
(13, 4, 'ファウンデーション対帝国', '0-553-29337-0', 1952, 1),
(14, 4, 'Exploring the Earth and the Cosmos', '0-517-546671', 1982, 0),
(15, 4, '第二ファウンデーション', '0-553-29336-2', 1953, 1),
(16, 4, 'ファウンデーションの誕生', '0-553-56507-9', 1993, 1),
(17, 4, 'アシモフが語るアイディアの世界', '0-449-20829-X', 1973, 1),
(18, 4, 'ゴールド-黄金', '0-06-055652-8', 1995, 1);
