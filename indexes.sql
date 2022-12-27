CREATE INDEX person1 ON People(person_name, person_surname);
CREATE INDEX role1 ON Roles(character_name, character_surname);
CREATE INDEX production1 ON Productions(name);
CREATE INDEX production2 ON Production_statistics(id_production);
CREATE INDEX movies1 ON Movies(id_production);
CREATE INDEX series1 ON Series(id_production);
