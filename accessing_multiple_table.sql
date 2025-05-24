/*
CREATED BY: KELVIN ROMAN
CREATE DATE: 05/23/2025
DESCRIPTION: JOINS
*/
/*
	INNER JOIN only returns matching records, any unmatched data from either table is ignored, most common
	LEFT OUTER JOIN combines all records from the left table with any matching records from the right table
	RIGHT OUTER JOIN combies all records from the right table with any matching records from the left table.
	
	RIGHT OUTER JOINS ARE NOT SUPPORTED IN SQLITE
*/
-- INNER JOIN
SELECT
	C.LastName,
	C.FirstName,
	I.InvoiceId,
	I.CustomerId,
	I.InvoiceDate,
	I.total 
FROM 
	Invoice AS I
INNER JOIN 
	Customer AS C
ON
	I.CustomerId = C.CustomerId
ORDER BY 
	C.CustomerId;

/*
CREATED BY: KELVIN ROMAN
CREATE DATE: 05/23/2025
DESCRIPTION: JOINS on more than two tables. What employee are responsible for the 10 highest individual sales?
*/
SELECT
	e.FirstName,
	e.LastName,
	e.EmployeeId,
	c.FirstName,
	c.LastName,
	c.SupportRepId,
	i.CustomerId,
	i.total
	
FROM
	Invoice AS I
INNER JOIN
	Customer AS C
ON
	I.CustomerId = C.CustomerId
INNER JOIN
	Employee AS E
ON
	C.SupportRepId = E.EmployeeId
ORDER BY
	I.total DESC
LIMIT 10;