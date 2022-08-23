USE remotepalliativecare;
-- ROLES AND USERS TO ACCESS THE WHOLE DATABASE 
-- CREATING ROLES FOR DEVELOPER, READ ONLY, READ AND WRITE FOR DATABSE
CREATE ROLE 'pallitiavecare_dev', 'pallitiavecare_readonly', 'pallitiavecare_readwrite';

-- GRANTING PRIVILAGES FOR ROLES, DEVELOPER, READ ONLY, READ AND WRITE FOR DATABASE
GRANT ALL ON remotepalliativecare.* TO 'pallitiavecare_dev';
GRANT SELECT ON remotepalliativecare.* TO 'pallitiavecare_readonly';
GRANT INSERT, UPDATE, DELETE ON remotepalliativecare.* TO 'pallitiavecare_readwrite';

-- CREATING USERS FOR DEVELOPER, READ ONLY, READ AND WRITE FOR DATABASE
CREATE USER 'dev_user1'@'localhost' IDENTIFIED BY 'dev1pass';
CREATE USER 'readonly_user1'@'localhost' IDENTIFIED BY 'readonly_user1pass';
CREATE USER 'readwrite_user1'@'localhost' IDENTIFIED BY 'readwrite_user1pass';

-- ASSIGNING DEVELOPER, READ ONLY, READ AND WRITE FOR DATABASE ROLE TO USER
GRANT 'pallitiavecare_dev' TO 'dev_user1'@'localhost';
GRANT 'pallitiavecare_readonly' TO 'readonly_user1'@'localhost';
GRANT 'pallitiavecare_readonly', 'pallitiavecare_readwrite' TO 'readwrite_user1'@'localhost';

-- SHOW GRANTS FOR DEVELOPER, READ ONLY, READ WRITE FOR DATABASE USERS
SHOW GRANTS FOR 'dev_user1'@'localhost';
SHOW GRANTS FOR 'readonly_user1'@'localhost';
SHOW GRANTS FOR 'readwrite_user1'@'localhost';

-- CREATE VIEW USER AND GRANT ACCESS FOR THE VIEWS ONLY 
CREATE USER 'view_user1'@'localhost' IDENTIFIED BY 'viewuserpass';
GRANT SELECT ON remotepalliativecare.vcontactsmadepast7days TO  'view_user1'@'localhost';
GRANT SELECT ON remotepalliativecare.vpercentageofcontactsbyregion TO  'view_user1'@'localhost';
GRANT SELECT ON remotepalliativecare.vpercentageofprimarycarerrelationship TO  'view_user1'@'localhost';
SHOW GRANTS FOR 'view_user1'@'localhost';



