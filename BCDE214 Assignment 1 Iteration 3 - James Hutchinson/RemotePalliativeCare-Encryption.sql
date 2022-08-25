USE remotepalliativecare;
SET @encrypt_key = 'lOoa5GZck4y8X2rjXdeJJcq4KeVvtBzS';
-- CARER
ALTER TABLE carer 
ADD COLUMN lastName_encrypt BLOB NULL AFTER emailAddress,
ADD COLUMN firstname_encrypt BLOB NULL AFTER lastname_encrypt,
ADD COLUMN homenumber_encrypt BLOB NULL AFTER firstname_encrypt,
ADD COLUMN mobilenumber_encrypt BLOB NULL AFTER homenumber_encrypt,
ADD COLUMN address_encrypt BLOB NULL AFTER mobilenumber_encrypt,
ADD COLUMN emailaddress_encrypt BLOB NULL AFTER address_encrypt;

UPDATE carer SET lastName_encrypt = AES_ENCRYPT(lastName, @encrypt_key),
firstname_encrypt = AES_ENCRYPT(firstname, @encrypt_key),
homenumber_encrypt = AES_ENCRYPT(homenumber, @encrypt_key),
mobilenumber_encrypt = AES_ENCRYPT(mobilenumber, @encrypt_key),
address_encrypt = AES_ENCRYPT(address, @encrypt_key),
emailaddress_encrypt = AES_ENCRYPT(emailaddress, @encrypt_key);

ALTER TABLE carer DROP lastName, 
DROP firstname, 
DROP homenumber, 
DROP mobilenumber, 
DROP address, 
DROP emailaddress;

ALTER TABLE carer 
CHANGE COLUMN lastName_encrypt lastName BLOB,
CHANGE COLUMN firstname_encrypt firstName BLOB,
CHANGE COLUMN homenumber_encrypt homeNumber BLOB,
CHANGE COLUMN mobilenumber_encrypt mobileNumber BLOB,
CHANGE COLUMN address_encrypt address BLOB,
CHANGE COLUMN emailaddress_encrypt emailAddress BLOB;

SELECT lastname, AES_DECRYPT(lastname, @encrypt_key) as lastname_dec,
firstname, AES_DECRYPT(firstname, @encrypt_key) as firstname_dec,
homeNumber, AES_DECRYPT(homeNumber, @encrypt_key) as homeNumber_dec,
mobileNumber, AES_DECRYPT(mobileNumber, @encrypt_key) as mobileNumber_dec,
address, AES_DECRYPT(address, @encrypt_key) as address_dec,
emailAddress, AES_DECRYPT(emailAddress, @encrypt_key) as emailAddress_dec
from carer;

-- PATIENT
ALTER TABLE patient 
ADD COLUMN lastName_encrypt BLOB NULL AFTER emailAddress,
ADD COLUMN firstname_encrypt BLOB NULL AFTER lastname_encrypt,
ADD COLUMN homenumber_encrypt BLOB NULL AFTER firstname_encrypt,
ADD COLUMN mobilenumber_encrypt BLOB NULL AFTER homenumber_encrypt,
ADD COLUMN address_encrypt BLOB NULL AFTER mobilenumber_encrypt,
ADD COLUMN emailaddress_encrypt BLOB NULL AFTER address_encrypt;

UPDATE patient SET lastName_encrypt = AES_ENCRYPT(lastName, @encrypt_key),
firstname_encrypt = AES_ENCRYPT(firstname, @encrypt_key),
homenumber_encrypt = AES_ENCRYPT(homenumber, @encrypt_key),
mobilenumber_encrypt = AES_ENCRYPT(mobilenumber, @encrypt_key),
address_encrypt = AES_ENCRYPT(address, @encrypt_key),
emailaddress_encrypt = AES_ENCRYPT(emailaddress, @encrypt_key);

ALTER TABLE patient DROP lastName, 
DROP firstname, 
DROP homenumber, 
DROP mobilenumber, 
DROP address, 
DROP emailaddress;

ALTER TABLE patient 
CHANGE COLUMN lastName_encrypt lastName BLOB,
CHANGE COLUMN firstname_encrypt firstName BLOB,
CHANGE COLUMN homenumber_encrypt homeNumber BLOB,
CHANGE COLUMN mobilenumber_encrypt mobileNumber BLOB,
CHANGE COLUMN address_encrypt address BLOB,
CHANGE COLUMN emailaddress_encrypt emailAddress BLOB;

SELECT lastname, AES_DECRYPT(lastname, @encrypt_key) as lastname_dec,
firstname, AES_DECRYPT(firstname, @encrypt_key) as firstname_dec,
homeNumber, AES_DECRYPT(homeNumber, @encrypt_key) as homeNumber_dec,
mobileNumber, AES_DECRYPT(mobileNumber, @encrypt_key) as mobileNumber_dec,
address, AES_DECRYPT(address, @encrypt_key) as address_dec,
emailAddress, AES_DECRYPT(emailAddress, @encrypt_key) as emailAddress_dec
from patient;

-- WORKER
ALTER TABLE worker 
ADD COLUMN lastName_encrypt BLOB NULL AFTER emailAddress,
ADD COLUMN firstname_encrypt BLOB NULL AFTER lastname_encrypt,
ADD COLUMN contactnumber_encrypt BLOB NULL AFTER firstname_encrypt,
ADD COLUMN address_encrypt BLOB NULL AFTER contactnumber_encrypt,
ADD COLUMN emailaddress_encrypt BLOB NULL AFTER address_encrypt;

UPDATE worker SET lastName_encrypt = AES_ENCRYPT(lastName, @encrypt_key),
firstname_encrypt = AES_ENCRYPT(firstname, @encrypt_key),
contactnumber_encrypt = AES_ENCRYPT(contactnumber, @encrypt_key),
address_encrypt = AES_ENCRYPT(address, @encrypt_key),
emailaddress_encrypt = AES_ENCRYPT(emailaddress, @encrypt_key);

ALTER TABLE worker DROP lastName, 
DROP firstname, 
DROP contactnumber,  
DROP address, 
DROP emailaddress;

ALTER TABLE worker 
CHANGE COLUMN lastName_encrypt lastName BLOB,
CHANGE COLUMN firstname_encrypt firstName BLOB,
CHANGE COLUMN contactnumber_encrypt contactNumber BLOB,
CHANGE COLUMN address_encrypt address BLOB,
CHANGE COLUMN emailaddress_encrypt emailAddress BLOB;

SELECT lastname, AES_DECRYPT(lastname, @encrypt_key) as lastname_dec,
firstname, AES_DECRYPT(firstname, @encrypt_key) as firstname_dec,
contactnumber, AES_DECRYPT(contactnumber, @encrypt_key) as contactnumber_dec,
address, AES_DECRYPT(address, @encrypt_key) as address_dec,
emailAddress, AES_DECRYPT(emailAddress, @encrypt_key) as emailAddress_dec
from worker;



