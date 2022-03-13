DROP TABLE IF EXISTS files;
CREATE TABLE files (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название файла',
  type_id INT UNSIGNED COMMENT 'Тип файла',
  path VARCHAR(255) COMMENT 'Путь к файлу',
  description VARCHAR(255) COMMENT 'Описание',
  keywords TEXT COMMENT 'Ключевые слова',
  user_id INT UNSIGNED COMMENT 'Принадлежность пользователю',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_user_id(user_id)
) COMMENT = 'Хранилище файлов';


DROP TABLE IF EXISTS file_types;
CREATE TABLE file_types (
  id SERIAL PRIMARY KEY,
  description VARCHAR(255)
) COMMENT = 'Типы файлов';

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
) COMMENT = 'Пользователи';

INSERT INTO file_types VALUES
	(DEFAULT, 'Video'),
	(DEFAULT, 'Photo'),
	(DEFAULT, 'Text')

INSERT INTO users VALUES
	(DEFAULT, 'Admin'),
	(DEFAULT, 'User1'),
	(DEFAULT, 'User2')

INSERT INTO files VALUES
	(DEFAULT, 'Film1', 1, 'D:\\Films\\', 'Best film!', 'triller, Harrison Ford', 2, DEFAULT, DEFAULT),
	(DEFAULT, 'Photo1', 1, 'D:\\Photo\\', 'Tom birthday', 'tom, birthday', 3, DEFAULT, DEFAULT)