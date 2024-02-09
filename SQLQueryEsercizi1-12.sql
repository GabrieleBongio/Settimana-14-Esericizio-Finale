--------- Esercizio 1
SELECT COUNT(*) AS NumeroDiViolazioni FROM Verbale
--------- Esercizio 2
SELECT IdAnagrafica, COUNT(*) AS NumeroDiViolazioni FROM Verbale GROUP BY IdAnagrafica
--------- Esercizio 3
SELECT IdViolazione, COUNT(*) AS NumeroDiViolazioni FROM Verbale GROUP BY IdViolazione
--------- Esercizio 4
SELECT IdAnagrafica, SUM(DecurtamentoPunti) AS TotaleDecurtamentoPunti FROM Verbale GROUP BY IdAnagrafica
--------- Esercizio 5
SELECT Cognome, Nome, DataViolazione, IndirizzoViolazione, Importo, DecurtamentoPunti FROM Verbale INNER JOIN Anagrafica 
ON Verbale.IdAnagrafica = Anagrafica.IdAnagrafica
WHERE Città = 'Palermo'
--------- Esercizio 6
SELECT Cognome, Nome, Indirizzo, DataViolazione, Importo, DecurtamentoPunti FROM Verbale INNER JOIN Anagrafica 
ON Verbale.IdAnagrafica = Anagrafica.IdAnagrafica
WHERE DataViolazione BETWEEN '31/01/2009' AND '01/08/2009'
--------- Esercizio 7
SELECT IdAnagrafica, SUM(Importo) AS TotaleImporto FROM Verbale GROUP BY IdAnagrafica ORDER BY TotaleImporto DESC
--------- Esercizio 8
SELECT * FROM Anagrafica WHERE Città = 'Palermo'
--------- Esercizio 9
DECLARE @DataViolazione DATETIME = '12/12/2012'
SELECT DataViolazione, Importo, DecurtamentoPunti FROM Verbale WHERE DataViolazione = @DataViolazione
--------- Esercizio 10
SELECT NominativoAgente, COUNT(*) AS TotaleVerbali FROM Verbale GROUP BY NominativoAgente ORDER BY TotaleVerbali DESC
--------- Esercizio 11
SELECT Cognome, Nome, Indirizzo, DataViolazione, Importo, DecurtamentoPunti FROM Verbale INNER JOIN Anagrafica
ON Verbale.IdAnagrafica = Anagrafica.IdAnagrafica
WHERE DecurtamentoPunti > 5
--------- Esercizio 12
SELECT Cognome, Nome, Indirizzo, DataViolazione, Importo, DecurtamentoPunti FROM Verbale INNER JOIN Anagrafica
ON Verbale.IdAnagrafica = Anagrafica.IdAnagrafica
WHERE Importo > 400
