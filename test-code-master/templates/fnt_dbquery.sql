INSERT INTO `fnt_schema`.`fnt_schedule` (`full_name`, `id`, `topic_name`, `session_date`) VALUES ('Ganesh Narayanan', '1', 'Black Holes', '08-11-2019');
INSERT INTO `fnt_schema`.`fnt_schedule` (`full_name`, `id`, `topic_name`, `session_date`) VALUES ('Ranjith Deivanayagam', '2', 'The Advertisements World', '15-11-2019');
INSERT INTO `fnt_schema`.`fnt_schedule` (`full_name`, `id`, `topic_name`, `session_date`) VALUES ('Gomathy Subramaniyan', '3', 'What is Devops?', '22-11-2019');
INSERT INTO `fnt_schema`.`fnt_schedule` (`full_name`, `id`, `topic_name`, `session_date`) VALUES ('Mohsin Khan', '4', 'The Basics of Computer Networks & Communication', '29-11-2019');
INSERT INTO `fnt_schema`.`fnt_schedule` (`full_name`, `id`, `topic_name`, `session_date`) VALUES ('Deepak Kumar Gundada Raju\nDeepak Kumar Gundada Raju', '5', 'Grafting', '06-12-2019');
INSERT INTO `fnt_schema`.`fnt_schedule` (`full_name`, `id`, `topic_name`, `session_date`) VALUES ('Jiby Joje', '6', 'Science behind DSLR and Photography', '13-12-2019');
INSERT INTO `fnt_schema`.`fnt_schedule` (`full_name`, `id`, `topic_name`, `session_date`) VALUES ('Sarveshwar Geetha', '7', 'Serverless Architecture', '20-12-2019');
INSERT INTO `fnt_schema`.`fnt_schedule` (`full_name`,  `topic_name`, `session_date`) VALUES ('Sathiya Moorthy','Dark & Deep Web : Invisible World of Internet', '03-01-2020');

SELECT * FROM fnt_schema.fnt_schedule ORDER BY id;

CREATE TABLE `fnt_schedule` (
  `full_name` varchar(100) NOT NULL,
  `topic_name` varchar(100) NOT NULL,
  `session_date` varchar(10) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`session_date`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost';