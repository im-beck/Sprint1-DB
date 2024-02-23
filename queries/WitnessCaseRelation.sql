SELECT w.Firstname, w.Lastname, c.CaseNumber
FROM "Witnesses" w
FULL OUTER JOIN "Cases" c ON w.CaseID = c.CaseID;