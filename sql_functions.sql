/*
CREATED BY: KELVIN ROMAN
CREATE DATE: 05/24/2025
DESCRIPTION: CREATEE A MAILING LIST OF US CUSTOMERS
*/
-- || is used to concatenate for SQLlte, MySQL, uses concat function, PostgreSQL can use either
SELECT
	FirstName,
	LastName,
	Address,
	FirstName || ' ' || LastName || ' ' || Address || ', ' || City || ' ' || State || " " || PostalCode AS "Mailing Address"
FROM 
	Customer
WHERE
	Country = "USA";
	
SELECT
	FirstName,
	LastName,
	Address,
	FirstName || ' ' || LastName || ' ' || Address || ', ' || City || ' ' || State || " " || PostalCode AS "Mailing Address",
	LENGTH(PostalCode),
	SUBSTR(PostalCode, 1, 5) as "5 Digit Postal Code"
FROM 
	Customer
WHERE
	Country = "USA";
	
	SELECT
	FirstName,
	LastName,
	Address,
	FirstName || ' ' || LastName || ' ' || Address || ', ' || City || ' ' || State || " " || PostalCode AS "Mailing Address",
	LENGTH(PostalCode),
	SUBSTR(PostalCode, 1, 5) as "5 Digit Postal Code",
	UPPER(FirstName) AS "First Name All Caps",
	LOWER(LastName) AS "Last Name All Lower"
FROM 
	Customer
WHERE
	Country = "USA";
	
/*
CREATED BY: KELVIN ROMAN
CREATE DATE: 05/24/2025
DESCRIPTION: CALCULATE THE AGES OF ALL EMPLOYEES
*/

SELECT
	FirstName,
	LastName,
	BirthDate,
	strftime("%Y-%m-%d", BirthDate) AS "Birthdate No Timecode", 
	strftime("%Y-%m-%d", "now") - strftime("%Y-%m-%d", BirthDate) AS Age
FROM 
	Employee;
	
/*
CREATED BY: KELVIN ROMAN
CREATE DATE: 05/24/2025
DESCRIPTION: AGGREGATE FUNCTIONS, WHAT ARE OUR ALL TIME GLOBAL SALES?
*/

SELECT
	SUM(Total) AS "Total Sales",
	AVG(Total) AS "Average Sales",
	MAX(Total) AS "Maximum Sale",
	MIN(Total) AS "Minimum Sale",
	COUNT(*) AS "Sales Count"
FROM 
	Invoice;
	
/*
CREATED BY: KELVIN ROMAN
CREATE DATE: 05/24/2025
DESCRIPTION: NESTING FUNCTIONS
*/

SELECT
	SUM(Total) AS "Total Sales",
	ROUND(AVG(Total), 2) AS "Average Sales",
	MAX(Total) AS "Maximum Sale",
	MIN(Total) AS "Minimum Sale",
	COUNT(*) AS "Sales Count"
FROM 
	Invoice