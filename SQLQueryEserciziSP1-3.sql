--------- Esercizio 1

CREATE PROCEDURE VerbaliAnno (
@Anno NCHAR(4)
)
AS
BEGIN
	SELECT * FROM Verbale WHERE YEAR(DataViolazione) = @Anno
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