--1 Widok: pokaż wszytskich aktorów w tabeli People
CREATE VIEW All_actors AS
    SELECT DISTINCT p.*
    FROM People p
    JOIN Staff s ON (p.id_person = s.id_person)
    JOIN Staff_description sd ON (sd.id_staff = s.id_staff)
    WHERE sd.staff_name = 'actor';

--2 Widok: pokaż dla każdego aktora ilość jego nagród (korzysta z widoku All_actors)
CREATE VIEW Number_of_awards AS
    SELECT aa.id_person, person_name, person_surname, COUNT(id_award) AS awards_count
    FROM All_actors aa
    JOIN Person_awards pa ON (aa.id_person = pa.id_person)
    GROUP BY aa.id_person, person_name, person_surname;

--3 Widok: pokaż dla każdego aktora ilość jego ról w tabeli Roles (korzysta z widoku All_actors)
CREATE VIEW Number_of_roles AS
    SELECT aa.id_person, person_name, person_surname, COUNT(id_role) AS role_count
    FROM Roles r
    JOIN All_actors aa ON(r.id_person = aa.id_person)
    GROUP BY aa.id_person, person_name, person_surname;

--4 Widok: pokaż dla każdego kina średni budżet filmów, które były w nim wyświetlane
CREATE VIEW Average_budget_through_cinema AS
    SELECT c.id_cinema, c.cinema_name, c.city, c.address, CAST(ROUND(AVG(ps.budget), 2) AS DECIMAL(20, 0)) AS average_budget
    FROM Cinemas c
    JOIN Screenings s ON(c.id_cinema = s.id_cinema)
    JOIN Production_statistics ps ON(s.id_production = ps.id_production)
    GROUP BY c.id_cinema, c.cinema_name, c.city, c.address;

--5 Widok: pokaż ile każdy gatunek filmowy dostał nagród i jakich konkretnie (typowo dla produkcji)
CREATE VIEW Genre_awards AS
    SELECT ac.award_name, m.genre, COALESCE(COUNT(pa.id_production), 0) AS awards_count
    FROM Award_ceremonies ac
    JOIN Production_awards pa ON (ac.id_ceremony = pa.id_ceremony)
    JOIN Movies m ON (pa.id_production = m.id_production)
    GROUP BY ac.award_name, m.genre
    ORDER BY ac.award_name OFFSET 0 ROWS;

--6 Widok: pokaż ile każda produkcja zarobiła na 1 oglądającym i wyświetl jej nazwę i id
CREATE VIEW Money_from_one_person AS
    SELECT ps.id_production, p.name, CAST(ROUND(profit / viewers, 2) AS DECIMAL(20, 2)) AS profit_per_person
    FROM Production_statistics ps
    JOIN Productions p ON (p.id_production = ps.id_production)

--7 Widok: pokaz ile produkcji znajduje sie na kazdej platformie streamingowej
CREATE VIEW Number_of_productions_available AS
    SELECT sp.id_platform, sp.platform_name, COALESCE(COUNT(pa.id_production), 0) as [number_of_productions]
    FROM Streaming_platforms sp
    LEFT JOIN Production_availability pa ON (pa.id_platform = sp.id_platform)
    GROUP BY sp.platform_name, sp.id_platform;

--8 Funkcja: pokaz wszystkie filmy grane w danym mieście w danym dniu
CREATE FUNCTION cinema_schedule_city (@date DATE, @city VARCHAR(256))
RETURNS @schedule TABLE
(
    [Time] TIME,
    [Cinema chain] VARCHAR(256),
    [Address] VARCHAR(256),
    [Production name] VARCHAR(256)
)
AS
BEGIN
    IF @city NOT IN (SELECT city FROM Cinemas)
    BEGIN
        INSERT INTO @schedule VALUES (NULL, 'No cinemas', 'in', 'such city')
    END
    ELSE
    BEGIN
    INSERT INTO @schedule
        SELECT CAST(s.date AS time(0)), c.cinema_name, c.address, p.name
        FROM Cinemas c
        JOIN Screenings s ON (c.id_cinema = s.id_cinema)
        JOIN Productions p ON (p.id_production = s.id_production)
        WHERE CAST(s.date AS date) = @date
        AND c.city = @city
    END
    RETURN
END

--9 Funkcja: pokaz wszystkie filmy, w których dana osoba pełniła jakąś rolę, oraz wypisz tę rolę
CREATE FUNCTION all_productions_to_person(@name VARCHAR(256), @surname VARCHAR(256))
RETURNS @productions TABLE
(
    [Name] VARCHAR(256),
    [Staff type] VARCHAR(256)
)
AS
BEGIN
    IF @name NOT IN (SELECT person_name FROM People) OR @surname NOT IN (SELECT person_surname FROM People)
    BEGIN
        INSERT INTO @productions VALUES ('Given person doesn''t exist', NULL)
    END
    ELSE
    BEGIN
        INSERT INTO @productions
        SELECT p.name, sd.staff_name
        FROM Productions p
        JOIN Staff s ON (s.id_production = p.id_production)
        JOIN People pe ON (pe.id_person = s.id_person)
        JOIN Staff_description sd ON (sd.id_staff = s.id_staff)
        WHERE pe.person_name = @name AND pe.person_surname = @surname
    END
    RETURN
END

--10 Funkcja: pokaz wszystkich zwyciezcow danej nagrody wraz z produkcją, za którą otrzymali tę nagrodę oraz rok przyznania nagrody
CREATE FUNCTION award_winners (@name VARCHAR(256))
RETURNS @winners TABLE
(
    [Name] VARCHAR(256),
    [Surname] VARCHAR(256),
    [Production name] VARCHAR(256),
    [Year] INT
)
AS
BEGIN
    IF @name NOT IN (SELECT award_name FROM Award_ceremonies)
    BEGIN
        INSERT INTO @winners VALUES ('No', 'such', 'award', NULL)
    END
    ELSE
    BEGIN
    INSERT INTO @winners
        SELECT pe.person_name, pe.person_surname, p.name, pa.year
        FROM Person_awards pa
        JOIN Award_ceremonies ac ON (ac.id_ceremony = pa.id_ceremony)
        JOIN People pe ON (pe.id_person = pa.id_person)
        JOIN Staff s ON (s.id_person = pe.id_person)
        JOIN Productions p ON (p.id_production = s.id_production)
        WHERE ac.award_name = @name
    END
    RETURN
END


