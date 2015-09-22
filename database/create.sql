CREATE DATABASE FEELINGS_GAME;
USE FEELINGS_GAME;
CREATE TABLE USER
	(`uid` nvarchar(25) NOT NULL PRIMARY KEY, `name` nvarchar(50))
;
CREATE TABLE COORDINATES
    (`id` int NOT NULL PRIMARY KEY AUTO_INCREMENT, `latitude` DOUBLE NOT NULL, `longitude` float NOT NULL)
;
CREATE TABLE FEELING
    (`id` int NOT NULL PRIMARY KEY AUTO_INCREMENT,`uid` nvarchar(25) NOT NULL,
     `time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, `value` int NOT NULL , `coordinatesId` int NOT NULL,
     FOREIGN KEY (`uid`) REFERENCES USER(`uid`),
     FOREIGN KEY (`coordinatesId`) REFERENCES COORDINATES(`id`))
;

/* insert defalut data */
INSERT INTO USER
	(`uid`, `name`)
VALUES
	('admin', 'admin'),
	('root', 'root')
;
INSERT INTO COORDINATES
	(`latitude`, `longitude`)
VALUES
	(25.066869, 121.522281)
;
INSERT INTO FEELING
	(`uid`, `value`, `coordinatesId`)
VALUES
	('admin', 5, 1)
;
