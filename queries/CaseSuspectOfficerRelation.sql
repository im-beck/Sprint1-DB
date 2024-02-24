SELECT c.CaseNumber, c.Status AS CaseStatus, s.Firstname AS SuspectFirstName, s.Lastname AS SuspectLastName, o.FirstName AS OfficerFirstName, o.LastName AS OfficerLastName, c.CaseDescription
FROM "Cases" c
LEFT JOIN "Suspects" s ON c.CaseID = s.CaseID
LEFT JOIN "CaseOfficers" co ON c.CaseID = co.CaseID
LEFT JOIN "Officers" o ON co.OfficerID = o.OfficerID
ORDER BY c.CaseNumber, s.Lastname, o.LastName;