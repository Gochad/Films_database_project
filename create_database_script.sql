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
    duration INT NOT NULL
);

ALTER TABLE Movies
ADD Constraint [Movie ID] FOREIGN KEY (id_production) REFERENCES Productions(id_production) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE Series (
    id_production INT PRIMARY KEY,
    genre VARCHAR(256) NOT NULL,
    start_year INT NOT NULL,
    finish_year INT,
    number_of_seasons INT NOT NULL,
    number_of_episodes INT NOT NULL
);

ALTER TABLE Series
ADD Constraint [Series ID] FOREIGN KEY (id_production) REFERENCES Productions(id_production) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE Production_statistics (
    id_production INT PRIMARY KEY,
    profit MONEY NOT NULL,
    budget MONEY NOT NULL,
    viewers INT,
    number_of_cast INT,
    rating FLOAT
)

ALTER TABLE Production_statistics
ADD Constraint [Production ID] FOREIGN KEY (id_production) REFERENCES Productions(id_production) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE Cinemas (
    id_cinema INT PRIMARY KEY IDENTITY(1,1),
    cinema_name VARCHAR(256) NOT NULL,
    city VARCHAR(256) NOT NULL,
    address VARCHAR(256) NOT NULL
);

CREATE TABLE Screenings (
    id_screening INT PRIMARY KEY IDENTITY(1,1),
    id_cinema INT NOT NULL,
    date SMALLDATETIME NOT NULL,
    id_production INT NOT NULL,
    id_room INT NOT NULL
);

ALTER TABLE Screenings
ADD Constraint [Cinema ID] FOREIGN KEY (id_cinema) REFERENCES Cinemas(id_cinema) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Screenings
ADD Constraint [Production ID1] FOREIGN KEY (id_production) REFERENCES Productions(id_production) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE Streaming_platforms (
    id_platform INT PRIMARY KEY IDENTITY(1,1),
    platform_name VARCHAR(256) NOT NULL,
    subscription_cost MONEY NOT NULL,
    origin_country VARCHAR(256) NOT NULL
);

CREATE TABLE Production_availability (
    id_production INT NOT NULL,
    id_platform INT NOT NULL
);

ALTER TABLE Production_availability
ADD Constraint [Production ID2] FOREIGN KEY (id_production) REFERENCES Productions(id_production) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Production_availability
ADD Constraint [Platform ID] FOREIGN KEY (id_platform) REFERENCES Streaming_platforms(id_platform) ON DELETE CASCADE ON UPDATE CASCADE;

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
ADD Constraint [Staff ID] FOREIGN KEY (id_staff) REFERENCES Staff_description(id_staff) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Staff
ADD Constraint [Production ID3] FOREIGN KEY (id_production) REFERENCES Productions(id_production) ON DELETE CASCADE ON UPDATE CASCADE;

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
ADD Constraint [Person ID] FOREIGN KEY (id_person) REFERENCES People(id_person) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE Roles (
    id_role INT PRIMARY KEY IDENTITY(1,1),
    character_name VARCHAR(256) NOT NULL,
    character_surname VARCHAR(256) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    id_production INT NOT NULL,
    id_person INT NOT NULL
);

ALTER TABLE Roles
ADD Constraint [Production ID4] FOREIGN KEY (id_production) REFERENCES Productions(id_production) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Roles
ADD Constraint [Person ID1] FOREIGN KEY (id_person) REFERENCES People(id_person) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE Soundtracks (
    id_soundtrack INT PRIMARY KEY IDENTITY(1,1),
    number_of_tracks INT NOT NULL,
    duration INT NOT NULL,
    id_production INT NOT NULL,
    id_author INT NOT NULL
);

ALTER TABLE Soundtracks
ADD Constraint [Production ID5] FOREIGN KEY (id_production) REFERENCES Productions(id_production) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Soundtracks
ADD Constraint [Author ID] FOREIGN KEY (id_author) REFERENCES People(id_person) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE Award_ceremonies (
    id_ceremony INT PRIMARY KEY IDENTITY(1,1),
    award_name VARCHAR(256) NOT NULL,
    start_date DATE NOT NULL,
    country VARCHAR(256) NOT NULL
);


CREATE TABLE Person_awards (
    id_award INT PRIMARY KEY IDENTITY(1,1),
    year INT NOT NULL,
    id_person INT NOT NULL,
    id_production INT NOT NULL,
    id_ceremony INT NOT NULL
);

ALTER TABLE Person_awards
ADD Constraint [Ceremony ID] FOREIGN KEY (id_ceremony) REFERENCES Award_ceremonies(id_ceremony) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Person_awards
ADD Constraint [Person ID2] FOREIGN KEY (id_person) REFERENCES People(id_person) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Person_awards
ADD Constraint [Production ID6] FOREIGN KEY (id_production) REFERENCES Productions(id_production) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE Production_awards (
    id_award INT PRIMARY KEY IDENTITY(1,1),
    year INT NOT NULL,
    id_production INT NOT NULL,
    id_ceremony INT NOT NULL
);

ALTER TABLE Production_awards
ADD Constraint [Ceremony ID1] FOREIGN KEY (id_ceremony) REFERENCES Award_ceremonies(id_ceremony) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Production_awards
ADD Constraint [Production ID7] FOREIGN KEY (id_production) REFERENCES Productions(id_production) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE User_table (
    id_user INT PRIMARY KEY IDENTITY(1,1),
    username VARCHAR(255),
    userpassword VARCHAR(255),
    user_type VARCHAR(255)
);
CREATE TABLE Screening_rooms (
    id_room INT PRIMARY KEY IDENTITY(1,1),
    id_cinema INT NOT NULL,
    capacity INT NOT NULL
);

ALTER TABLE Screening_rooms
ADD Constraint [Cinema ID1] FOREIGN KEY (id_cinema) REFERENCES Cinemas(id_cinema) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Screenings
ADD Constraint [Screening room ID] FOREIGN KEY (id_room) REFERENCES Screening_rooms(id_room) ON DELETE CASCADE ON UPDATE CASCADE;