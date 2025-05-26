/*
CREATED BY: KELVIN ROMAN
CREATE DATE: 05/25/2025
DESCRIPTION: VIEWS
*/

CREATE VIEW IF NOT EXISTS V_AvgTotal AS
SELECT 
	ROUND(AVG(total), 2) AS "Average total"
FROM
	Invoice;
	
 -- SQLITE views are not modified with syntax, they are deleted and then recreated\

DROP VIEW V_AvgTotal;
CREATE VIEW IF NOT EXISTS V_AvgTotal AS
SELECT 
	AVG(total) AS "Average total"
FROM
	Invoice;
	
/*
CREATED BY: KELVIN ROMAN
CREATE DATE: 05/25/2025
DESCRIPTION: VIEWS AND JOINS
*/

CREATE VIEW IF NOT EXISTS V_Tracks_InvoiceLine AS
SELECT
	il.InvoiceId,
	il.UnitPrice,
	il.Quantity,
	t.Name,
	t.Composer,
	t.Milliseconds
FROM
	InvoiceLine AS il
INNER JOIN
	Track AS T
ON
	il.TrackId = t.TrackId;
	
/*
CREATED BY: KELVIN ROMAN
CREATE DATE: 05/25/2025
DESCRIPTION: DELETING A VIEW
*/

DROP VIEW IF EXISTS V_AvgTotal;