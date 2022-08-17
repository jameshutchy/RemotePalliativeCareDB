/* insert data into tables */
USE remotepalliativecare;
SHOW VARIABLES LIKE "secure_file_priv";
-- import carer data
LOAD DATA INFILE 'C:/temp/mysql/Table Data/carer.csv'
INTO TABLE carer
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
select * from carer;

-- import patient data
LOAD DATA INFILE 'C:/temp/mysql/Table Data/patient.csv'
INTO TABLE patient
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
select * from patient;

-- import worker data
LOAD DATA INFILE 'C:/temp/mysql/Table Data/worker.csv'
INTO TABLE worker
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
select * from worker;

-- import patientCarer data
LOAD DATA INFILE 'C:/temp/mysql/Table Data/patientCarer.csv'
INTO TABLE patientCarer
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
select * from patientCarer;

-- import contactor data
LOAD DATA INFILE 'C:/temp/mysql/Table Data/contactor.csv'
INTO TABLE contactor
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
select * from contactor;

-- import contact data
LOAD DATA INFILE 'C:/temp/mysql/Table Data/contact.csv'
INTO TABLE contact
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
select * from contact;