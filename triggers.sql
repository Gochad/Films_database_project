--1 Wyzwalacz: zwiekszenie liczności obsady przy dodaniu osoby pełniącej dowolne stanowisko przy produkcji
GO
CREATE TRIGGER add_cast
ON Staff
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @productionID INT
    SELECT @productionID = INSERTED.id_production FROM INSERTED

    UPDATE Production_statistics
    SET number_of_cast = number_of_cast + 1
    WHERE id_production = @productionID
END

--2 Wyzwalacz: zmniejszenie liczności obsady przy usunięciu osoby pełniącej dowolne stanowisko przy produkcji
GO
CREATE TRIGGER delete_cast
ON Staff
AFTER DELETE, UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @productionID INT
    SELECT @productionID = DELETED.id_production FROM DELETED

    UPDATE Production_statistics
    SET number_of_cast = number_of_cast - 1
    WHERE id_production = @productionID
END

--3 Wyzwalacz: dodanie ilości widzów przy dodaniu seansu danej produkcji
GO
CREATE TRIGGER add_viewers
ON Screenings
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @productionID INT,
    @roomID INT
    SELECT @productionID = INSERTED.id_production FROM INSERTED
    SELECT @roomID = INSERTED.id_room FROM INSERTED;

    UPDATE Production_statistics
    SET viewers = viewers + (SELECT capacity FROM Screening_rooms WHERE id_room = @roomID)
    WHERE id_production = @productionID
END

--4 Wyzwalacz: odjęcie ilości widzów przy usunięciu seansu danej produkcji
GO
CREATE TRIGGER remove_viewers
ON Screenings
AFTER DELETE, UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @productionID INT,
    @roomID INT
    SELECT @productionID = DELETED.id_production FROM DELETED
    SELECT @roomID = DELETED.id_room FROM DELETED;

    UPDATE Production_statistics
    SET viewers = viewers - (SELECT capacity FROM Screening_rooms WHERE id_room = @roomID)
    WHERE id_production = @productionID
END

--5 Wyzwalacz: zwiększenie (zmniejszenie przy jednej nagrodzie) ratingu produkcji dodając nagrodę, którą ta produkcja otrzymała
GO
CREATE TRIGGER change_rating_award1
ON Production_awards
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @productionID INT,
    @ceremonyID INT,
    @currentRating INT

    SELECT @productionID = INSERTED.id_production FROM INSERTED
    SELECT @ceremonyID = INSERTED.id_ceremony FROM INSERTED
    SELECT @currentRating = rating FROM Production_statistics WHERE id_production = @productionID;

    IF(@currentRating < 10.0 AND @currentRating > 0.0)
        UPDATE Production_statistics
        SET rating = (CASE
                    WHEN @ceremonyID IN (SELECT id_ceremony FROM Award_ceremonies WHERE award_name = 'Golden Raspberry Award')
                    THEN ROUND(rating - 0.1, 1)
                    ELSE
                    ROUND(rating + 0.1, 1)
                END)
        WHERE id_production = @productionID
END

--6 Wyzwalacz: zmniejszenie (zwiększenie przy jednej nagrodzie) ratingu produkcji, dla której usunięto nagrodę
GO
CREATE TRIGGER change_rating_award2
ON Production_awards
AFTER DELETE, UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @productionID INT,
    @ceremonyID INT,
    @currentRating INT

    SELECT @productionID = DELETED.id_production FROM DELETED
    SELECT @ceremonyID = DELETED.id_ceremony FROM DELETED
    SELECT @currentRating = rating FROM Production_statistics WHERE id_production = @productionID;

    IF(@currentRating < 10.0 AND @currentRating > 0.0)
        UPDATE Production_statistics
        SET rating = (CASE
                    WHEN @ceremonyID IN (SELECT id_ceremony FROM Award_ceremonies WHERE award_name = 'Golden Raspberry Award')
                    THEN ROUND(rating + 0.1, 1)
                    ELSE
                    ROUND(rating - 0.1, 1)
                END)
        WHERE id_production = @productionID
END