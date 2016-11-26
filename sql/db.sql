CREATE DATABASE IF NOT EXISTS db_ajax_json;

DROP TABLE IF EXISTS db_ajax_json.user;
CREATE TABLE db_ajax_json.user (
  id       INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  email    VARCHAR(255) NOT NULL
  COMMENT 'email',
  password VARCHAR(255) NOT NULL
  COMMENT 'password'
)
  COMMENT 'user table';

INSERT INTO db_ajax_json.user VALUE (NULL, 'tester@test.com', '123');

SELECT *
FROM db_ajax_json.user;