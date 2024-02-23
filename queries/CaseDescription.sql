SELECT c.CaseNumber, c.CaseDescription, e.Description
FROM "Cases" c
LEFT JOIN "Evidence" e ON c.CaseID = e.CaseID;