--1 Procedura składowana: wypisuje wszytskie dane aktora, którego nazwisko zaczyna się na @character
GO
CREATE PROC actors_starts_with
(@character CHAR)
AS
	SELECT *
    FROM All_actors
    WHERE person_surname LIKE @character + '%'
    ORDER BY person_name
GO

--2 Procedura składowana: dodaj aktora (dodaj osobe a potem rekord w staff)
GO
CREATE PROC add_actor
(
    @name VARCHAR(256),
    @surname VARCHAR(256),
    @sex VARCHAR(1),
    @age INT,
    @country VARCHAR(256),
    @height INT,
    @production_name VARCHAR(256) = NULL
)
AS
    DECLARE @id_production INT = (
        SELECT id_production
        FROM Productions
        WHERE name = @production_name
    );

    IF @id_production IS NOT NULL
    BEGIN
        INSERT INTO People VALUES
        (@name, @surname, @sex, @age, @country, @height);

        DECLARE @actor_in_staff INT = (
            SELECT id_staff
            FROM Staff_description
            WHERE staff_name = 'actor'
        );

        DECLARE @id_person INT = (SELECT IDENT_CURRENT('People'));

        INSERT INTO Staff VALUES
        (@actor_in_staff, @id_person, @id_production);
    END
    ELSE
    BEGIN
        THROW 80004001, 'Production name can''t be null', 1
    END
GO

--3 Procedura składowana: dodaj film
GO
CREATE PROC add_film
(
    @name VARCHAR(256) = NULL,
    @genre VARCHAR(256),
    @country VARCHAR(256),
    @date DATE,
    @duration INT
)
AS
    IF @name IS NOT NULL
    BEGIN
        IF @name NOT IN (SELECT name FROM Productions WHERE production_type = 'Movie')
        BEGIN
            INSERT INTO Productions VALUES
            (@name, 'Movie');

            DECLARE @id_production INT = (
                    SELECT IDENT_CURRENT('Productions')
            );
            INSERT INTO Movies VALUES
            (@id_production, @genre, @country, @date, @duration);
        END
        ELSE
        BEGIN
            THROW 80060103, 'Given movie already exists', 1
        END
    END
    ELSE
    BEGIN
        THROW 80004001, 'Name of added movie can''t be null', 1
    END
GO

--4 Procedura składowana: podwyższa/obniża rating o @value dla wszystkich produkcji, w której grał dany aktor
GO
CREATE PROC increase_rating_through_person
(
    @name VARCHAR(256),
    @surname VARCHAR(256),
    @value FLOAT
)
AS
    DECLARE @searched_id INT =
    (
        SELECT id_person
        FROM People
        WHERE person_name = @name AND person_surname = @surname
    );

    IF @searched_id IS NOT NULL
    BEGIN
        UPDATE Production_statistics
		SET rating = rating + @value
		WHERE id_production IN (
		    SELECT id_production
		    FROM Staff
		    WHERE id_person = @searched_id
		);
    END
    ELSE
    BEGIN
        THROW 80060103, 'Given actor doesnt exist', 1
    END
GO

--5 Procedura składowana: dla każdego serialu pokaż długość emitowania, liczbę odcinków na sezon, rating oraz liczbę nagród
GO
CREATE PROC show_series_statistics
AS
    SELECT finish_year - start_year + 1 AS emission_years, number_of_episodes / number_of_seasons AS episodes_per_season,
           rating, counted_awards
    FROM Series s
    JOIN Production_statistics ps ON (s.id_production = ps.id_production)
    JOIN (
        SELECT id_production, COUNT(id_production) AS counted_awards
        FROM Production_awards
        GROUP BY id_production
    ) c ON (c.id_production = s.id_production)
GO
--Procedury używane w aplikacji klienckiej:
GO
CREATE PROC addperson
(
    @name VARCHAR(256),
    @surname VARCHAR(256),
    @sex VARCHAR(1),
    @age INT,
    @country VARCHAR(256),
    @height INT
)
AS
    INSERT INTO People VALUES
    (@name, @surname, @sex, @age, @country, @height);
GO
USE Film_Production
GO
CREATE PROC deleteperson
(
    @name VARCHAR(256),
    @surname VARCHAR(256)
)
AS
    DELETE FROM People
	WHERE person_name = @name AND person_surname = @surname;
GO

GO
CREATE PROC addproduction
(
    @name VARCHAR(256),
    @type VARCHAR(256)
)
AS
    INSERT INTO Productions VALUES
    (@name, @type);
GO
GO
CREATE PROC deleteproduction
(
    @name VARCHAR(256)
)
AS
    DELETE FROM Productions
	WHERE name = @name;
GO



