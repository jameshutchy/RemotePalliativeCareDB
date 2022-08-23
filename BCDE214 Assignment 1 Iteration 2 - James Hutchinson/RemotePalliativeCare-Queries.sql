/* Queries */

USE remotepalliativecare;
-- check what patients had contact to certain worker and why
SET @worker_number = 12;
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
WHERE c.workerNumber = @worker_number;

-- the percentage of contacts made by patient region and average patient age
SELECT p.region AS 'Region', CONCAT(CONVERT(count(*) * 100.0 / sum(count(*)) Over(), DECIMAL(5,2)), "%") as 'Region Percentage',
FLOOR(AVG(TIMESTAMPDIFF(year, p.DOB, CURDATE()))) AS 'Average Age' 
FROM Contact c
LEFT JOIN Patient p on p.patientNumber = c.patientNumber
GROUP BY p.region;

-- Primary Carer for certain patient
SET @patient_number = 8;
SELECT c.carerNumber AS 'Carer Number',
CONCAT(c.title, " ", c.firstName, " ", c.lastName) AS 'Carer Name',
c.homeNumber AS 'Home Number',
c.mobileNumber AS 'Mobile Number',
c.emailAddress AS 'Email Address',
p.relationship AS 'Relationship to Patient',
p.dateStarted AS 'Date Started Care'
FROM patientcarer p 
LEFT JOIN carer c on c.carerNumber = p.carerNumber
WHERE p.primaryCarer = true AND p.patientNumber = @patient_number;
