
USE master;



CREATE TABLE Productions (
    id_production INT PRIMARY KEY IDENTITY(1,1),
    production_name VARCHAR(256) NOT NULL,
    production_type VARCHAR(256) NOT NULL
);

CREATE TABLE Movies (
    id_production INT PRIMARY KEY,
    genre VARCHAR(256) NOT NULL,
    production_country VARCHAR(256) NOT NULL,
    release_date DATE NOT NULL,
    duration INT NOT NULL
);

CREATE TABLE Series (
    id_production INT PRIMARY KEY,
    genre VARCHAR(256) NOT NULL,
    start_year INT NOT NULL,
    finish_year INT,
    number_of_seasons INT NOT NULL,
    number_of_episodes INT NOT NULL
);

CREATE TABLE Production_statistics (
    id_production INT PRIMARY KEY,
    profit MONEY NOT NULL,
    budget MONEY NOT NULL,
    viewers INT,
    number_of_cast INT,
    rating FLOAT
)

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
    id_production INT NOT NULL
);

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

CREATE TABLE Staff_description (
    id_staff INT PRIMARY KEY IDENTITY(1,1),
    staff_name VARCHAR(256) NOT NULL
);

CREATE TABLE Staff (
    id_staff INT NOT NULL,
    id_person INT NOT NULL,
    id_production INT NOT NULL
);

CREATE TABLE People (
    id_person INT PRIMARY KEY IDENTITY(1,1),
    person_name VARCHAR(256) NOT NULL,
    person_surname VARCHAR(256) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    age INT NOT NULL,
    origin_country VARCHAR(256) NOT NULL,
    height INT NOT NULL
);

CREATE TABLE Roles (
    id_role INT PRIMARY KEY IDENTITY(1,1),
    character_name VARCHAR(256) NOT NULL,
    character_surname VARCHAR(256) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    id_production INT NOT NULL,
    id_person INT NOT NULL
);

CREATE TABLE Soundtracks (
    id_soundtrack INT PRIMARY KEY IDENTITY(1,1),
    number_of_tracks INT NOT NULL,
    duration INT NOT NULL,
    id_production INT NOT NULL,
    id_author INT NOT NULL
);


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

CREATE TABLE Production_awards (
    id_award INT PRIMARY KEY IDENTITY(1,1),
    year INT NOT NULL,
    id_production INT NOT NULL,
    id_ceremony INT NOT NULL
);
