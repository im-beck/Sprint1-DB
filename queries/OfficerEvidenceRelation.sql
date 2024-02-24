SELECT o.FirstName, o.LastName, e.Description AS EvidenceDescription, et.DateHandled AS CollectionDate
FROM "Officers" o
INNER JOIN "EvidenceTracking" et ON o.OfficerID = et.OfficerID
INNER JOIN "Evidence" e ON et.EvidenceID = e.EvidenceID
ORDER BY o.LastName, et.DateHandled;