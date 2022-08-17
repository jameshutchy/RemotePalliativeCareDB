/* creating database RemotePalliativeCare adding tables */
DROP DATABASE IF EXISTS RemotePalliativeCare;
CREATE DATABASE RemotePalliativeCare;
USE remotepalliativecare;

DROP TABLE IF EXISTS Patient;
CREATE TABLE Patient (
patientNumber INT NOT NULL AUTO_INCREMENT,
lastName VARCHAR(40) NOT NULL,
firstName VARCHAR(40) NOT NULL,
title VARCHAR(15),
DOB date NOT NULL,
gender VARCHAR(10) NOT NULL,
homeNumber VARCHAR(15),
mobileNumber VARCHAR(15),
address VARCHAR(50) NOT NULL,
city VARCHAR(40) NOT NULL,
region VARCHAR(40) NOT NULL,
postalCode INT NOT NULL,
emailAddress VARCHAR(50),
PRIMARY KEY(patientNumber)) 
ENGINE=InnoDB;

DROP TABLE IF EXISTS Diagnosis;
CREATE TABLE Diagnosis (
diagnosisNumber INT NOT NULL AUTO_INCREMENT,
medicalCondition TEXT NOT NULL,
PRIMARY KEY(diagnosisNumber)
)ENGINE= InnoDB;

DROP TABLE IF EXISTS Carer;
CREATE TABLE Carer (
carerNumber INT NOT NULL AUTO_INCREMENT,
lastName VARCHAR(40) NOT NULL,
firstName VARCHAR(40) NOT NULL,
title VARCHAR(15),
DOB date NOT NULL,
gender VARCHAR(10) NOT NULL,
homeNumber VARCHAR(15),
mobileNumber VARCHAR(15),
address VARCHAR(50) NOT NULL,
city VARCHAR(40) NOT NULL,
region VARCHAR(40) NOT NULL,
postalCode INT NOT NULL,
emailAddress VARCHAR(50),
PRIMARY KEY(carerNumber)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS PatientCarer;
CREATE TABLE PatientCarer (
patientCarerNumber INT NOT NULL AUTO_INCREMENT,
carerNumber INT NOT NULL,
patientNumber INT NOT NULL,
relationship VARCHAR(60) NOT NULL,
dateStarted DATE NOT NULL,
primaryCarer BOOL NOT NULL,
PRIMARY KEY(patientCarerNumber),
FOREIGN KEY(carerNumber) REFERENCES Carer(carerNumber),
FOREIGN KEY(patientNumber) REFERENCES Patient(patientNumber)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS Contactor;
CREATE TABLE Contactor (
contactorNumber INT NOT NULL AUTO_INCREMENT,
carerNumber INT,
patientNumber INT,
PRIMARY KEY(contactorNumber),
FOREIGN KEY(carerNumber) REFERENCES Carer(carerNumber),
FOREIGN KEY(patientNumber) REFERENCES Patient(patientNumber)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS ContactCentre;
CREATE TABLE ContactCentre (
contactCentreNum INT NOT NULL AUTO_INCREMENT,
contactNumber VARCHAR(15) NOT NULL,
address VARCHAR(50) NOT NULL,
city VARCHAR(40) NOT NULL,
region VARCHAR(40) NOT NULL,
postalCode INT NOT NULL,
PRIMARY KEY(contactCentreNum)
)ENGINE =InnoDB;


DROP TABLE IF EXISTS Worker;
CREATE TABLE Worker (
workerNumber INT NOT NULL AUTO_INCREMENT,
contactCentreNum INT NOT NULL,
lastName VARCHAR(40) NOT NULL,
firstName VARCHAR(40) NOT NULL,
title VARCHAR(15),
DOB date NOT NULL,
gender VARCHAR(10) NOT NULL,
contactNumber VARCHAR(15),
address VARCHAR(50) NOT NULL,
city VARCHAR(40) NOT NULL,
region VARCHAR(40) NOT NULL,
postalCode INT NOT NULL,
emailAddress VARCHAR(50),
startAvailability TIME NOT NULL,
endAvailability TIME NOT NULL,
PRIMARY KEY(workerNumber)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS Contact;
CREATE TABLE Contact (
contactNumber INT NOT NULL AUTO_INCREMENT,
contactorNumber INT NOT NULL,
patientNumber INT NOT NULL,
workerNumber INT NOT NULL,
dateOfContact DATETIME NOT NULL,
reasonForContact TEXT NOT NULL,
actionsTaken TEXT NOT NULL,
PRIMARY KEY(contactNumber),
FOREIGN KEY(contactorNumber) REFERENCES Contactor(contactorNumber),
FOREIGN KEY(patientNumber) REFERENCES Patient(patientNumber),
FOREIGN KEY(workerNumber) REFERENCES Worker(workerNumber)
) ENGINE=InnoDB;

/* test if tables are there */
USE remotepalliativecare;
show tables;
SELECT * FROM carer;
SELECT * FROM contact;
SELECT * FROM contactor;
SELECT * FROM patient;
SELECT * FROM patientcarer;
SELECT * FROM worker;
