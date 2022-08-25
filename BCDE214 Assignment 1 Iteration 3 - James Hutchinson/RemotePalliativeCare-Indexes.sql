-- INDEXES FOR TABLES
USE remotepalliativecare;
select * from carer;
-- CARER 
-- CARER NAME
CREATE INDEX ix_carerName on carer(firstname, lastname);
select firstname, lastname from carer where firstname like 'm%';
-- CARER CITY
CREATE INDEX ix_carercity on carer(city);
select city from carer where city = 'nelson';

-- PATIENT
-- PATIENT NAME
CREATE INDEX ix_patientname on patient(firstname, lastname);
select firstname, lastname  from patient where firstname like 'm%';
-- PATIENT CITY
CREATE INDEX ix_patientcity on patient(city);
select city, firstname from patient where city = 'nelson';
-- PATIENT DOB
CREATE INDEX ix_patientdob on patient(DOB);
select dob from patient where dob < '1940-01-01';

-- PATIENTCARER
-- PATIENTCARER RELATIONSHIP
CREATE INDEX ix_relationship_PatientCarer on PatientCarer(relationship);
select patientnumber, carernumber from patientcarer where relationship = 'daughter';
-- PATIENTCARER PRIMARY CARER
CREATE INDEX ix_primarycarer_PatientCarer on PatientCarer(primarycarer);
select patientnumber, carernumber from patientcarer where primarycarer = true;

-- WORKER
-- WORKER NAME
CREATE INDEX ix_workername on worker(firstname, lastname);
select firstname, lastname  from worker where firstname like 'm%';
-- WORKER CITY
CREATE INDEX ix_workercity on worker(city);
select city, firstname from worker where city = 'nelson';

-- CONTACT CENTRE
-- CONTACT CENTRE COMPANY NAME
CREATE INDEX ix_companyname_contactcentre on contactcentre(companyname);
select contactnumber, companyname from contactcentre where companyname = 'Mollis Duis LLC';
-- CONTACT CENTRE CITY 
CREATE INDEX ix_city_contactcentre on contactcentre(city);
select contactnumber, companyname from contactcentre where city = 'christchurch';

-- DIAGNOSIS
-- DIAGNOSIS MEDICAL CONDITION
CREATE INDEX ix_medicalcondition_diagnosis on diagnosis(medicalcondition);
select diagnosisNumber, medicalcondition from diagnosis where medicalcondition like 'A%';

-- CONTACT
-- CONTACT DATE OF CONTACT
CREATE INDEX ix_dateofcontact_contact on contact(dateofcontact);
select contactnumber, patientNumber, workerNumber 
from contact where dateofcontact > now() - INTERVAL 7 DAY; 



drop index ix_patientdob on patient;