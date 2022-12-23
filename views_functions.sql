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
    SELECT ac.award_name, m.genre, COALESCE(COUNT(pa.id_production)) AS awards_count
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


