CREATE TABLE public."Suspects"
(
	SuspectID SERIAL PRIMARY KEY,
	CaseID INT REFERENCES Cases(CaseID),
	Firstname VARCHAR(50),
	Lastname VARCHAR(50),
	DateOfBirth DATE,
	Gender CHAR(1),
	Address TEXT,
	Photo BYTEA
	
)

CREATE TABLE public."Witnesses"
(	WitnessID SERIAL PRIMARY KEY,
	CaseID INT REFERENCES Cases(CaseID),
	Firstname VARCHAR(50),
	Lastname VARCHAR(50).
	Statement TEXT,
	ContactInfo TEXT
)
;

CREATE TABLE public."Cases"
(
	CaseID SERIAL PRIMARY KEY,
	CaseNumber INT,
	CaseDescription TEXT,
	DateOpened DATE,
	DateClosed DATE,
	Status CHAR(1)
);

CREATE TABLE public."Evidence"
(
	EvidenceID SERIAL PRIMARY KEY,
	CaseID INT REFERENCES Cases(CaseID),
	Description TEXT,
	Location POINT,
	DateCollected DATE,
	CollectedBy VARCHAR(55),
	ChainOfCustody TEXT[],
	Status CHAR(1)
);
CREATE TABLE public."CaseOfficers"
(
	CaseOfficerID SERIAL PRIMARY KEY,
	CaseID INT REFERENCES Cases(CaseID),
	OfficerID INT REFERENCES Officers(OfficerID),
	AssignmentDate DATE,
	AssignmentStatus VARCHAR(1)
);

CREATE TABLE public."Officers"
(
	OfficerID SERIAL PRIMARY KEY,
	BadgeNumber INT,
	FirstName VARCHAR(55),
	LastName VARCHAR(55),
	RANK VARCHAR(50),
	ContactInfo TEXT
	
);

CREATE TABLE public."EvidenceTracking"
(
	TrackingID SERIAL PRIMARY KEY,
	EvidenceID INT REFERENCES Evidence(EvidenceID),
	OfficerID INT REFERENCES Officers(OfficerID),
	DateHandled DATE,
	HandlingDetails TEXT
);

ALTER TABLE IF EXISTS public."Suspects"
    OWNER to postgres;