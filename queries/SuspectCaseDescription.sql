SELECT c.CaseNumber, s.Firstname, s.Lastname, c.CaseDescription
FROM "Cases" c
INNER JOIN "Suspects" s ON c.CaseID = s.CaseID;