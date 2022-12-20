IF OBJECT_ID('Film_Production', 'U') IS NOT NULL
    DROP DATABASE Film_Production
CREATE DATABASE Film_Production
GO
USE Film_Production

CREATE TABLE Productions (
    id_production INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(256) NOT NULL,
    production_type VARCHAR(256) NOT NULL
);

CREATE TABLE Movies (
    id_production INT PRIMARY KEY,
    genre VARCHAR(256) NOT NULL,
    production_country VARCHAR(256) NOT NULL,
    release_date DATE NOT NULL,
    duration TIME NOT NULL
);

ALTER TABLE Movies
ADD Constraint [Movie ID] FOREIGN KEY (id_production) REFERENCES Productions(id_production);

CREATE TABLE Series (
    id_production INT PRIMARY KEY,
    genre VARCHAR(256) NOT NULL,
    start_date DATE NOT NULL,
    finish_date DATE,
    number_of_seasons INT NOT NULL,
    number_of_episodes INT NOT NULL
);

ALTER TABLE Series
ADD Constraint [Series ID] FOREIGN KEY (id_production) REFERENCES Productions(id_production);

CREATE TABLE Production_statistics (
    id_production INT PRIMARY KEY,
    profit MONEY NOT NULL,
    budget MONEY NOT NULL,
    viewers INT,
    -- awards INT, CHYBA REDUNDACJA (bo da sie to wyliczyc innymi tabelami)
    number_of_cinemas INT,
    number_of_cast INT,
    rating FLOAT
)

ALTER TABLE Production_statistics
ADD Constraint [Production ID] FOREIGN KEY (id_production) REFERENCES Productions(id_production);

CREATE TABLE Cinemas (
    id_cinema INT PRIMARY KEY IDENTITY(1,1),
    cinema_name VARCHAR(256) NOT NULL,
    city VARCHAR(256) NOT NULL,
    address VARCHAR(256) NOT NULL
);

CREATE TABLE Screenings (
    id_screening INT PRIMARY KEY IDENTITY(1,1),
    id_cinema INT NOT NULL,
    date DATETIME NOT NULL,
    id_production INT NOT NULL
);

ALTER TABLE Screenings
ADD Constraint [Cinema ID] FOREIGN KEY (id_cinema) REFERENCES Cinemas(id_cinema);

ALTER TABLE Screenings
ADD Constraint [Production ID1] FOREIGN KEY (id_production) REFERENCES Productions(id_production);

CREATE TABLE Streaming_platforms (
    id_platform INT PRIMARY KEY IDENTITY(1,1),
    platform_name VARCHAR(256) NOT NULL,
    subscription_cost MONEY NOT NULL,
    origin_country VARCHAR(256) NOT NULL
);

CREATE TABLE Production_availibility (
    id_production INT NOT NULL,
    id_platform INT NOT NULL
);

ALTER TABLE Production_availibility
ADD Constraint [Production ID2] FOREIGN KEY (id_production) REFERENCES Productions(id_production);

ALTER TABLE Production_availibility
ADD Constraint [Platform ID] FOREIGN KEY (id_platform) REFERENCES Streaming_platforms(id_platform);

CREATE TABLE Staff_description (
    id_staff INT PRIMARY KEY IDENTITY(1,1),
    staff_name VARCHAR(256) NOT NULL
);

CREATE TABLE Staff (
    id_staff INT NOT NULL,
    id_person INT NOT NULL,
    id_production INT NOT NULL
);

ALTER TABLE Staff
ADD Constraint [Staff ID] FOREIGN KEY (id_staff) REFERENCES Staff_description(id_staff);

ALTER TABLE Staff
ADD Constraint [Production ID3] FOREIGN KEY (id_production) REFERENCES Productions(id_production);

CREATE TABLE People (
    id_person INT PRIMARY KEY IDENTITY(1,1),
    person_name VARCHAR(256) NOT NULL,
    person_surname VARCHAR(256) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    age INT NOT NULL,
    origin_country VARCHAR(256) NOT NULL,
    height INT NOT NULL
);

ALTER TABLE Staff
ADD Constraint [Person ID] FOREIGN KEY (id_person) REFERENCES People(id_person);

CREATE TABLE Roles (
    id_role INT PRIMARY KEY IDENTITY(1,1),
    character_name VARCHAR(256) NOT NULL,
    character_surname VARCHAR(256) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    id_production INT NOT NULL,
    id_person INT NOT NULL
);

ALTER TABLE Roles
ADD Constraint [Production ID4] FOREIGN KEY (id_production) REFERENCES Productions(id_production);

ALTER TABLE Roles
ADD Constraint [Person ID1] FOREIGN KEY (id_person) REFERENCES People(id_person);

CREATE TABLE Soundtracks (
    id_soundtrack INT PRIMARY KEY IDENTITY(1,1),
    soundtrack_name VARCHAR(256) NOT NULL,
    genre VARCHAR(256) NOT NULL,
    id_production INT NOT NULL,
    id_author INT NOT NULL
);

ALTER TABLE Soundtracks
ADD Constraint [Production ID5] FOREIGN KEY (id_production) REFERENCES Productions(id_production);

ALTER TABLE Soundtracks
ADD Constraint [Author ID] FOREIGN KEY (id_author) REFERENCES People(id_person);

CREATE TABLE Award_ceremonies (
    id_ceremony INT PRIMARY KEY IDENTITY(1,1),
    award_ame VARCHAR(256) NOT NULL,
    start_date DATE NOT NULL,
    country VARCHAR(256) NOT NULL
);


CREATE TABLE Person_awards (
    id_award INT PRIMARY KEY IDENTITY(1,1),
    year DATE NOT NULL,
    id_person INT NOT NULL,
    id_ceremony INT NOT NULL
);

ALTER TABLE Person_awards
ADD Constraint [Ceremony ID] FOREIGN KEY (id_ceremony) REFERENCES Award_ceremonies(id_ceremony);

ALTER TABLE Person_awards
ADD Constraint [Person ID2] FOREIGN KEY (id_person) REFERENCES People(id_person);

CREATE TABLE Production_awards (
    id_award INT PRIMARY KEY IDENTITY(1,1),
    year DATE NOT NULL,
    id_production INT NOT NULL,
    id_ceremony INT NOT NULL
);

ALTER TABLE Production_awards
ADD Constraint [Ceremony ID1] FOREIGN KEY (id_ceremony) REFERENCES Award_ceremonies(id_ceremony);

ALTER TABLE Production_awards
ADD Constraint [Production ID6] FOREIGN KEY (id_production) REFERENCES Productions(id_production);

