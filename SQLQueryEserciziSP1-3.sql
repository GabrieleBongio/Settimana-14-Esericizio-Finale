--------- Esercizio 1

CREATE PROCEDURE VerbaliAnno (
@Anno NCHAR(4)
)
AS
BEGIN
	DECLARE @StartDate DATETIME = '01/01/' + @Anno
	DECLARE @EndDate DATETIME = '31/12/' + @Anno
	SELECT * FROM Verbale WHERE DataViolazione BETWEEN @StartDate AND @EndDate
END
GO

--------- Esercizio 2

CREATE PROCEDURE TotalePuntiDecurtatiData (
@Data DATETIME
)
AS
BEGIN
	SELECT @Data AS DataViolazione, SUM(DecurtamentoPunti) AS TotalePuntiDecurtati FROM Verbale WHERE DataViolazione = @Data
END
GO

--------- Esercizio 3

CREATE PROCEDURE DeleteVerbaleById (
@IdVerbale INT
)
AS
BEGIN
	DELETE FROM Verbale WHERE IdVerbale = @IdVerbale
END
GO