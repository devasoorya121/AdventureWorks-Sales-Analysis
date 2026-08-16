SELECT
    p.BusinessEntityID,
    p.FirstName,
    p.MiddleName,
    p.LastName,
    e.EmailAddress,
    pp.PhoneNumber,
    pnt.Name AS PhoneNumberType
FROM Person.Person AS p
LEFT JOIN Person.EmailAddress AS e
    ON p.BusinessEntityID = e.BusinessEntityID
LEFT JOIN Person.PersonPhone AS pp
    ON p.BusinessEntityID = pp.BusinessEntityID
LEFT JOIN Person.PhoneNumberType AS pnt
    ON pp.PhoneNumberTypeID = pnt.PhoneNumberTypeID;
