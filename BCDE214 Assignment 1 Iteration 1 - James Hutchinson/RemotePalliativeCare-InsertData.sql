/* insert data into tables */
USE remotepalliativecare;
INSERT INTO Patient (firstName,lastName,title,DOB,gender,homeNumber,mobileNumber,address,city,region,postalCode,emailAddress)
VALUES
    ("Mariam","Faulkner","Mrs","1953-08-11","female","(01) 5223 6258","(157) 275-5052","224-3478 Dui. St.","Morrinsville","South Island","1653","m_faulkner5204@protonmail.com"),
  ("Kiayada","Armstrong","Mrs","1923-02-19","female","(06) 8835 7525","(765) 224-3819","6979 Eu Rd.","Nelson","South Island","5168","armstrong_kiayada4544@outlook.conz"),
  ("Rhiannon","Lyons","Mrs","1937-02-26","female","(06) 6589 6637","(549) 963-6778","319-8156 Adipiscing Rd.","Dannevirke","North Island","2172","l_rhiannon758@google.com"),
  ("Tatum","Raymond","Mrs","1925-06-22","female","(04) 1643 6816","(546) 436-4211","Ap #385-4925 Molestie Ave","Thames","South Island","9998","t.raymond4204@hotmail.com"),
  ("Orli","Holloway","Mrs","1927-08-17","female","(06) 6316 9187","(727) 540-1881","8404 Risus Ave","North Shore","South Island","6042","o.holloway3982@outlook.com"),
  ("Adam","Faulkner","Mr","1953-08-11","male","(01) 5223 6258","(157) 275-5052","224-3478 Dui. St.","Morrinsville","South Island","1653","m_faulkner5204@protonmail.com"),
  ("Mohammad","Armstrong","Mr","1923-02-19","male","(06) 8835 7525","(765) 224-3819","6979 Eu Rd.","Nelson","South Island","5168","armstrong_kiayada4544@outlook.conz"),
  ("Hashim","Lyons","Mr","1937-02-26","male","(06) 6589 6637","(549) 963-6778","319-8156 Adipiscing Rd.","Dannevirke","North Island","2172","l_rhiannon758@google.com"),
  ("Keaton","Raymond","Mr","1925-06-22","male","(04) 1643 6816","(546) 436-4211","Ap #385-4925 Molestie Ave","Thames","South Island","9998","t.raymond4204@hotmail.com"),
  ("Hayes","Holloway","Mr","1927-08-17","male","(06) 6316 9187","(727) 540-1881","8404 Risus Ave","North Shore","South Island","6042","o.holloway3982@outlook.com"),
  ("Adam","Faulkner","Dr","1953-08-11","male","(01) 5223 6258","(157) 275-5052","224-3478 Dui. St.","Morrinsville","South Island","1653","m_faulkner5204@protonmail.com"),
  ("Mohammad","Armstrong","Dr","1923-02-19","male","(06) 8835 7525","(765) 224-3819","6979 Eu Rd.","Nelson","South Island","5168","armstrong_kiayada4544@outlook.conz"),
  ("Hashim","Lyons","Dr","1937-02-26","male","(06) 6589 6637","(549) 963-6778","319-8156 Adipiscing Rd.","Dannevirke","North Island","2172","l_rhiannon758@google.com"),
  ("Keaton","Raymond","Dr","1925-06-22","male","(04) 1643 6816","(546) 436-4211","Ap #385-4925 Molestie Ave","Thames","South Island","9998","t.raymond4204@hotmail.com"),
  ("Hayes","Holloway","Dr","1927-08-17","male","(06) 6316 9187","(727) 540-1881","8404 Risus Ave","North Shore","South Island","6042","o.holloway3982@outlook.com"),
  ("Wynter","Faulkner","Dr","1953-08-11","female","(01) 5223 6258","(157) 275-5052","224-3478 Dui. St.","Morrinsville","South Island","1653","m_faulkner5204@protonmail.com"),
  ("Idola","Armstrong","Dr","1923-02-19","female","(06) 8835 7525","(765) 224-3819","6979 Eu Rd.","Nelson","South Island","5168","armstrong_kiayada4544@outlook.conz"),
  ("Chastity","Lyons","Dr","1937-02-26","female","(06) 6589 6637","(549) 963-6778","319-8156 Adipiscing Rd.","Dannevirke","North Island","2172","l_rhiannon758@google.com"),
  ("Kerry","Raymond","Dr","1925-06-22","female","(04) 1643 6816","(546) 436-4211","Ap #385-4925 Molestie Ave","Thames","South Island","9998","t.raymond4204@hotmail.com"),
  ("Megan","Holloway","Dr","1927-08-17","female","(06) 6316 9187","(727) 540-1881","8404 Risus Ave","North Shore","South Island","6042","o.holloway3982@outlook.com");
  SELECT * FROM Patient;
  
INSERT INTO Carer (firstName,lastName,title,DOB,gender,homeNumber,mobileNumber,address,city,region,postalCode,emailAddress)
VALUES
  ("Wynter","Faulkner","Mrs","1953-08-11","female","(01) 5223 6258","(157) 275-5052","224-3478 Dui. St.","Morrinsville","South Island","1653","m_faulkner5204@protonmail.com"),
  ("Idola","Armstrong","Mrs","1923-02-19","female","(06) 8835 7525","(765) 224-3819","6979 Eu Rd.","Nelson","South Island","5168","armstrong_kiayada4544@outlook.conz"),
  ("Chastity","Lyons","Mrs","1937-02-26","female","(06) 6589 6637","(549) 963-6778","319-8156 Adipiscing Rd.","Dannevirke","North Island","2172","l_rhiannon758@google.com"),
  ("Kerry","Raymond","Mrs","1925-06-22","female","(04) 1643 6816","(546) 436-4211","Ap #385-4925 Molestie Ave","Thames","South Island","9998","t.raymond4204@hotmail.com"),
  ("Megan","Holloway","Mrs","1927-08-17","female","(06) 6316 9187","(727) 540-1881","8404 Risus Ave","North Shore","South Island","6042","o.holloway3982@outlook.com"),
  ("Audra","Davidson","Ms","1946-05-21","female","(06) 6233 4902","(478) 448-5830","797-1584 Ornare. Ave","Waitara","North Island","3689","d-audra7319@protonmail.ca"),
  ("Karen","Baldwin","Ms","1939-10-19","female","(06) 1467 5515","(431) 823-1296","P.O. Box 590, 4016 Quis St.","Timaru","North Island","2281","baldwin-karen@google.ca"),
  ("Yvette","Mayer","Ms","1949-02-01","female","(08) 5358 6728","(673) 758-9819","Ap #307-1798 Natoque Street","Taupo","South Island","9159","mayeryvette@google.conz"),
  ("Lillian","Reese","Ms","1932-06-20","female","(08) 6252 5272","(205) 532-7346","Ap #998-7562 Elit. Ave","Rotorua","South Island","7583","l.reese7779@yahoo.conz"),
  ("Mallory","Johnson","Ms","1931-03-12","female","(06) 3374 3514","(483) 771-9411","952-8761 Risus. St.","New Plymouth","North Island","9251","johnsonmallory@icloud.com"),
  ("Lee","Mann","Mr","1936-05-14","male","(03) 9502 5085","(533) 717-8745","P.O. Box 369, 2033 Quis St.","Invercargill","South Island","4416","lmann3697@google.conz"),
  ("Lawrence","Sherman","Mr","1947-09-17","male","(02) 7245 2462","(761) 861-7549","Ap #646-8826 Feugiat Rd.","Masterton","North Island","8151","s_lawrence@hotmail.org"),
  ("Giacomo","Fuller","Mr","1944-09-10","male","(06) 0769 2573","(437) 225-1841","Ap #403-2559 Facilisis Road","Porirua","South Island","7715","g.fuller@yahoo.ca"),
  ("Duncan","Gonzales","Mr","1949-02-02","male","(09) 4394 2598","(681) 769-3386","4315 Aenean Av.","Morrinsville","North Island","3851","dgonzales@protonmail.conz"),
  ("Tarik","Boyd","Mr","1923-12-12","male","(03) 1772 1256","(263) 757-2835","9828 At Street","Picton","North Island","8633","t-boyd5890@icloud.ca");
  
  SELECT * FROM Carer;
  
  INSERT INTO Worker (firstName,lastName,title,DOB,gender,contactNumber,address,city,region,postalCode,emailAddress,startAvailability,endAvailability)
VALUES
  ("Jameson","Ayala","Mr","1934-06-07","male","(981) 868-2303","857-4926 Non Rd.","Whakatane","South Island","3180","j.ayala1199@aol.ca","6:04:35","21:40:41"),
  ("Colin","Kane","Mr","1925-10-26","male","(823) 274-1543","P.O. Box 674, 5735 Placerat, Av.","Queenstown","North Island","9742","colinkane8612@aol.conz","6:06:40","23:38:33"),
  ("Arsenio","Gould","Mr","1937-11-26","male","(454) 391-4655","479 Fusce Road","Whakatane","South Island","6724","agould@outlook.com","6:03:55","21:26:20"),
  ("Kyle","Stanton","Mr","1949-10-16","male","(441) 655-8876","Ap #724-976 Orci, Ave","Napier","South Island","3606","k_stanton5496@outlook.ca","6:11:20","21:22:42"),
  ("Quinlan","Thornton","Mr","1939-03-01","male","(295) 653-4713","4519 Dolor. Rd.","Masterton","South Island","3220","q_thornton2525@outlook.conz","6:00:23","19:09:11"),
    ("Shay","Mason","Mrs","1928-07-04","female","(307) 718-5607","7072 Duis Rd.","Timaru","North Island","6362","m-shay@google.com","7:55:12","23:37:44"),
  ("Chava","Bryan","Mrs","1923-06-23","female","(354) 404-3503","936-7361 Lorem St.","Motueka","North Island","1575","bryan_chava@icloud.conz","8:39:38","19:54:33"),
  ("Cathleen","Pace","Mrs","1942-10-28","female","(817) 528-7266","534-2312 Semper, Rd.","Wanaka","North Island","5938","pace.cathleen@aol.net","7:57:43","19:09:32"),
  ("Jena","Whitley","Mrs","1938-06-24","female","(325) 336-0213","493-9964 Scelerisque Av.","Porirua","South Island","3718","whitley-jena@aol.org","7:02:53","20:29:30"),
  ("Jana","Cohen","Mrs","1948-07-06","female","(317) 820-9652","P.O. Box 203, 7164 Bibendum St.","Ashburton","North Island","5002","j.cohen@aol.org","6:37:09","19:53:53"),
("Deborah","Drake","Mrs","1934-12-15","female","(471) 875-8218","Ap #782-507 Dictum Ave","Matamata","North Island","7950","ddrake@yahoo.ca","7:29:30","17:31:50"),
  ("Giselle","King","Mrs","1944-02-01","female","(434) 587-2744","647-5653 Metus. St.","Nelson","North Island","5790","giselleking7930@protonmail.conz","7:08:32","20:26:48"),
  ("Bianca","Rosario","Mrs","1940-11-29","female","(446) 886-7614","Ap #639-5097 Eu, St.","Manukau","North Island","4323","b-rosario@outlook.com","6:31:56","21:25:23"),
  ("Medge","Hamilton","Mrs","1926-10-27","female","(668) 484-8937","P.O. Box 711, 8849 Ac Road","Whakatane","North Island","8836","medge_hamilton2072@aol.ca","7:12:01","21:21:40"),
  ("Destiny","Barnes","Mrs","1945-04-22","female","(387) 630-2163","P.O. Box 371, 3358 Mauris Street","Queenstown","South Island","4931","barnesdestiny3743@protonmail.conz","8:00:02","22:40:08"),
    ("Serina","Mcconnell","Mrs","1981-05-26","female","(296) 358-4275","P.O. Box 720, 4948 Aliquet. Road","Alexandra","North Island","4544","mcconnell_serina@aol.ca","6:47:01","23:32:09"),
  ("Phoebe","Freeman","Mrs","1981-03-14","female","(777) 826-4618","5506 Enim, Avenue","Whangarei","North Island","9441","phoebefreeman215@yahoo.ca","8:38:08","17:50:58"),
  ("Bryar","Baker","Mrs","1980-04-29","female","(776) 884-1541","9809 Cursus St.","Oamaru","North Island","1101","b.baker@yahoo.net","8:43:32","18:19:27"),
  ("Tamekah","Weaver","Mrs","1987-09-10","female","(929) 347-7225","Ap #260-5977 Convallis Ave","Queenstown","South Island","6862","t.weaver8395@aol.org","8:25:27","21:10:00"),
  ("Shelby","Wilson","Mrs","1983-05-20","female","(581) 737-0723","302-7509 Urna. Ave","Hamilton","South Island","1359","s.wilson@google.ca","8:00:32","17:56:35");
  
  SELECT * FROM Worker;
  
  INSERT INTO PatientCarer (carerNumber,patientNumber,relationship,dateStarted,primaryCarer)
VALUES
  (10,19,"Daughter","2021-11-19",true),
  (2,8,"Daughter","2021-01-14",true),
  (5,6,"Daughter","2021-02-12",true),
  (8,12,"Daughter","2022-06-26",true),
  (2,12,"Daughter","2020-09-14",false),
  (4,14,"Son","2021-12-01",true),
  (10,17,"Son","2021-01-22",false),
  (2,18,"Son","2021-01-25",true),
  (3,1,"Son","2022-02-25",true),
  (7,13,"Son","2021-11-08",false),
  (13,11,"Brother","2021-03-29",true),
  (15,19,"Brother","2022-02-17",false),
  (3,3,"Brother","2022-07-19",true),
  (7,1,"Brother","2021-02-15",false),
  (1,14,"Brother","2022-02-12",false),
  (5,2,"Sister","2022-05-22",true),
  (13,18,"Sister","2020-11-03",false),
  (4,16,"Sister","2021-01-23",false),
  (8,20,"Sister","2021-06-10",true),
  (9,9,"Sister","2022-06-14",true),
  (6,4,"Husband","2021-09-20",true),
  (13,3,"Husband","2020-11-09",false),
  (14,10,"Husband","2021-05-16",true),
  (5,5,"Husband","2020-10-26",true),
  (2,3,"Husband","2021-01-26",false),
  (1,9,"Wife","2021-09-15",false),
  (12,17,"Wife","2022-02-01",true),
  (7,13,"Wife","2020-10-08",true),
  (3,15,"Wife","2022-05-05",true),
  (2,16,"Wife","2021-11-26",true);
  
  SELECT * FROM PatientCarer;
  
  
  INSERT INTO Contactor (carerNumber)
  VALUES
  (1),
  (2),
  (3),
  (4),
  (5),
  (6),
  (7),
  (8),
  (9),
  (10),
  (11),
  (12),
  (13),
  (14),
  (15);
  SELECT * FROM Contactor;
  
  INSERT INTO Contact (contactorNumber,patientNumber,workerNumber,dateOfContact,reasonForContact,actionsTaken)
VALUES
  (1,14,10,"2022-01-13 06:04:34","velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras","tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat"),
  (2,8,4,"2020-10-15 16:49:07","felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed","eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh."),
  (3,1,15,"2022-01-24 08:09:07","sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac","elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed"),
  (4,14,14,"2021-01-12 11:58:44","ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam","dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et"),
  (5,6,4,"2022-07-21 15:39:08","porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent","Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer"),
  (6,4,15,"2020-12-05 16:05:22","tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis","arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim"),
  (7,13,2,"2021-05-01 16:57:53","sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque","dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu"),
  (8,12,14,"2022-02-12 13:20:01","rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id","Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis"),
  (9,9,4,"2021-07-20 16:16:56","lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras","quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In"),
  (10,19,14,"2022-06-03 21:28:57","eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat,","neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer"),
    (11,17,12,"2022-01-02 03:04:49","non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium","placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed"),
  (12,17,9,"2021-12-25 01:47:53","cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu","Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem"),
  (13,11,4,"2021-07-06 08:20:52","semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et","risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc"),
  (14,10,12,"2022-01-18 02:09:42","magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis","et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla"),
  (15,19,1,"2021-12-30 10:38:03","nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis","luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt");
  
  SELECT * FROM Contact;
