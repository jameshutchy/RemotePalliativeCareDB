USE remotepalliativecare;

-- VIEWS 
-- VIEW FOR CONTACTS MADE IN THE LAST 7 DAYS	
CREATE OR REPLACE VIEW vContactsMadePast7Days AS
SELECT c.patientNumber AS 'Patient Number', 
CONCAT(p.firstname, " ", p.lastName) AS 'Patient Name',
TIMESTAMPDIFF(year, p.DOB, CURDATE()) AS 'Patient Age', 
c.dateOfContact AS 'Time of Contact', 
c.reasonForContact AS 'Reason for Contact',
c.actionsTaken AS 'Actions Taken',
c.workerNumber AS 'Worker Number',
CONCAT(w.firstName, " ", w.lastName) AS 'Worker Name'
FROM Contact c 
LEFT JOIN Patient p ON p.patientNumber=c.patientNumber
LEFT JOIN Worker w ON w.workerNumber=c.workerNumber
WHERE c.dateOfContact > now() - INTERVAL 7 DAY;
-- HAD TO ADD SOME TEST DATA TO CHECK IF VIEW WORKED
INSERT INTO contact (contactorNumber,patientNumber,workerNumber,dateOfContact,reasonForContact,actionsTaken)
VALUES (3,4,5,now(), "testing view", "to have a record in the last 7 days");
SELECT * FROM vContactsMadePast7Days;

-- the percentage of contacts made by patient region and average patient age view
CREATE OR REPLACE VIEW vPercentageOfContactsByRegion AS
SELECT p.region AS 'Region', CONCAT(CONVERT(count(*) * 100.0 / sum(count(*)) Over(), DECIMAL(5,2)), "%") as 'Region Percentage',
FLOOR(AVG(TIMESTAMPDIFF(year, p.DOB, CURDATE()))) AS 'Average Age' 
FROM Contact c
LEFT JOIN Patient p on p.patientNumber = c.patientNumber
GROUP BY p.region;
SELECT * FROM vPercentageOfContactsByRegion;

-- VIEW PERCENTAGE OF PRIMARY CARER RELATIONSHIP TO PATIENTS
CREATE OR REPLACE VIEW vPercentageOfPrimarycarerRelationship AS
SELECT p.relationship AS 'Relationship To Patient',
CONCAT(CONVERT(count(*) * 100.0 / sum(count(*)) Over(), DECIMAL(5,2)), "%") AS "Percentage"
FROM patientcarer p 
LEFT JOIN carer c on c.carerNumber = p.carerNumber
WHERE P.primaryCarer = true
GROUP BY p.relationship;
SELECT * FROM vPercentageOfPrimarycarerRelationship;


