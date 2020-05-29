CREATE TABLE test_schedule (
  full_name varchar(100) NOT NULL,
  topic_name varchar(100) NOT NULL,
  session_date varchar(10) NOT NULL,
  id int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (session_date),
  UNIQUE KEY id_UNIQUE (id)
);
