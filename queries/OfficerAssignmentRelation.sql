SELECT o.FirstName, o.LastName, co.AssignmentDate
FROM "Officers" o
RIGHT JOIN "CaseOfficers" co ON o.OfficerID = co.OfficerID;