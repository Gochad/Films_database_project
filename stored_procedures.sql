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
