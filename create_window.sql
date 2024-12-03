CREATE TABLE regions_world (
   id serial  primary key,
   name VARCHAR(100),
   regions INT,
   cities INT
   );

INSERT INTO regions_world (name, regions, cities) VALUES
   	('Абхазия', 1,  10),
	('Австралия', 9, 208),
	('Абхазия', 9, 186 ),
	('Австралия', 3,76),
	('Андорра', 12, 41),
	('Абхазия', 1 , 10 ),
	('Австралия', 1 , 7 ),
	('Андорра', 8, 19 ),
	('Австралия', 1, 2 ),
	('Андорра', 24,184 );

SELECT * FROM regions_world