--Create Clients
INSERT INTO vigiclient VALUES ('CID456789','KingJohn','peasant','John','Doe','Athens, GA','25','1','45667');
INSERT INTO vigiclient VALUES ('CID654321','LordStark','Winter','Ned','Stark','The North','40','1','67789');
INSERT INTO vigiclient VALUES ('CID333333','Trippington','help','Tripp','Guinn','Elberton','21','0','58585');
INSERT INTO vigiclient VALUES ('CID444444','Jeremyguy','chicken','Jeremy','Holmes','Sesame Street','21','1','55555');
INSERT INTO vigiclient VALUES ('CID555555','SirJosh','Lion','Josh','DeLeon','Swagville','21','1','89899');
INSERT INTO vigiclient VALUES ('CID666666','MagicMike','pole','Mike','Magic','The Club','25','0','67890');
INSERT INTO vigiclient VALUES ('CID777777','LordVader','Deathstar','Anakin','Skywalker','Deathstar','42','1','10104');
INSERT INTO vigiclient VALUES ('CID888888','Zero','Sword','Zero','Ninja','Borderlands','22','0','00000');
INSERT INTO vigiclient VALUES ('CID999999','Biscuit','bread','Ben','Bun','Bakersville','18','1','89965');
INSERT INTO vigiclient VALUES ('CID121212','Goku','saiyan','Goku','Name','Namek','30','1','90000');

--Create Contracts
INSERT INTO vigicontract VALUES ('CON369456','4000','45','MAN890567','STU468579');
INSERT INTO vigicontract VALUES ('CON787879','3567','36','MAN899854','STU468580');
INSERT INTO vigicontract VALUES ('CON456798','8745','23','MAN887634','STU468581');
INSERT INTO vigicontract VALUES ('CON765443','1256','49','MAN890567','STU468582');
INSERT INTO vigicontract VALUES ('CON569064','8946','68','MAN567123','STU468583');
INSERT INTO vigicontract VALUES ('CON548095','2432','23','MAN857236','STU468584');
INSERT INTO vigicontract VALUES ('CON376549','7895','49','MAN214356','STU468585');
INSERT INTO vigicontract VALUES ('CON438906','4000','45','MAN890567','STU468586');
INSERT INTO vigicontract VALUES ('CON394390','3000','44','MAN845624','STU468587');
INSERT INTO vigicontract VALUES ('CON789347','1200','12','MAN098345','STU468588');

--Create Purchases
INSERT INTO vigipurchases VALUES ('PUR456789','CID456789','HD');
INSERT INTO vigipurchases VALUES ('PUR456790','CID456789','HD');
INSERT INTO vigipurchases VALUES ('PUR456791','CID456789','HD');
INSERT INTO vigipurchases VALUES ('PUR456792','CID444444','HD');
INSERT INTO vigipurchases VALUES ('PUR456793','CID456789','HD');
INSERT INTO vigipurchases VALUES ('PUR456794','CID666666','HD');
INSERT INTO vigipurchases VALUES ('PUR456795','CID456789','HD');
INSERT INTO vigipurchases VALUES ('PUR456796','CID444444','HD');
INSERT INTO vigipurchases VALUES ('PUR456797','CID456789','HD');
INSERT INTO vigipurchases VALUES ('PUR456798','CID555555','HD');
  
--Create Rentals
INSERT INTO vigirental VALUES ('REN456789','CID654321','25');
INSERT INTO vigirental VALUES ('REN456790','CID555555','35');
INSERT INTO vigirental VALUES ('REN456791','CID666666','89');
INSERT INTO vigirental VALUES ('REN456792','CID777777','41');
INSERT INTO vigirental VALUES ('REN456793','CID654321','30');
INSERT INTO vigirental VALUES ('REN456794','CID654321','39');
INSERT INTO vigirental VALUES ('REN456795','CID888888','23');
INSERT INTO vigirental VALUES ('REN456796','CID999999','32');
INSERT INTO vigirental VALUES ('REN456797','CID777777','45');
INSERT INTO vigirental VALUES ('REN456798','CID654321','67');
INSERT INTO vigirental VALUES ('REN456799','CID654321','43');
  
--Create Subscriptions
INSERT INTO vigisubscription VALUES ('SUB456789','CID654321','1');
INSERT INTO vigisubscription VALUES ('SUB456790','CID654321','0');
INSERT INTO vigisubscription VALUES ('SUB456791','CID333333','0');
INSERT INTO vigisubscription VALUES ('SUB456792','CID444444','1');
INSERT INTO vigisubscription VALUES ('SUB456793','CID555555','1');
INSERT INTO vigisubscription VALUES ('SUB456794','CID666666','1');
INSERT INTO vigisubscription VALUES ('SUB456795','CID777777','0');
INSERT INTO vigisubscription VALUES ('SUB456796','CID888888','0');
INSERT INTO vigisubscription VALUES ('SUB456797','CID999999','1');
INSERT INTO vigisubscription VALUES ('SUB456798','CID121212','0');
INSERT INTO vigisubscription VALUES ('SUB456799','CID654321','1');

--Create Studios
INSERT INTO vigistudio VALUES ('STU678901','CON369456','Prlando Studio','678 Freedom Way','Psycho');
INSERT INTO vigistudio VALUES ('STU678911','CON456798','Make You Smil Films','347 West Cambridge','Love');
INSERT INTO vigistudio VALUES ('STU678922','CON369456','ChickenScratch Films','88 Free Avenue','Goody');
INSERT INTO vigistudio VALUES ('STU678933','CON456798','Disney Studios','2 What Street','Psych');
INSERT INTO vigistudio VALUES ('STU678944','CON456798','MoneyMaker Studios','3 Who Street','Now');
INSERT INTO vigistudio VALUES ('STU678955','CON438906','LionInTheDoor Films','876 Heart Bypass','Reuse');
INSERT INTO vigistudio VALUES ('STU678966','CON369456','Mcdonalds Cow Studios','098 Huffington Post','Uknown');
INSERT INTO vigistudio VALUES ('STU678977','CON369456','MakingAFilm Films','22 Moody Ways','Fickle');
INSERT INTO vigistudio VALUES ('STU678988','CON438906','Justice Studios','132 MissMe Avenue','Madness');
INSERT INTO vigistudio VALUES ('STU678999','CON438906','FreeTraevon Videos','542 Sadness Way','Sorrow');
INSERT INTO vigistudio VALUES ('STU678000','CON456798','Black Tragedy Movie','675 Missing Street','Runaway');

--Create Managers
INSERT INTO vigimanager VALUES ('MAN456789','STU678901');
INSERT INTO vigimanager VALUES ('MAN456790','STU678999');
INSERT INTO vigimanager VALUES ('MAN456791','STU678901');
INSERT INTO vigimanager VALUES ('MAN456792','STU678999');
INSERT INTO vigimanager VALUES ('MAN456793','STU678901');
INSERT INTO vigimanager VALUES ('MAN456794','STU678999');
INSERT INTO vigimanager VALUES ('MAN456795','STU678944');
INSERT INTO vigimanager VALUES ('MAN456796','STU678944');
INSERT INTO vigimanager VALUES ('MAN456797','STU678966');
INSERT INTO vigimanager VALUES ('MAN456798','STU678966');

--Create Admins
INSERT INTO vigiadministrator VALUES ('ADM567890','MAN456789','DareDevil');
INSERT INTO vigiadministrator VALUES ('ADM567891','MAN456789','Iron Man');
INSERT INTO vigiadministrator VALUES ('ADM567892','MAN456789','Iron Man 2');
INSERT INTO vigiadministrator VALUES ('ADM567893','MAN456789','Iron Man 3');
INSERT INTO vigiadministrator VALUES ('ADM567894','MAN456796','Captain America');
INSERT INTO vigiadministrator VALUES ('ADM567895','MAN456796','Dark Knight');
INSERT INTO vigiadministrator VALUES ('ADM567896','MAN456789','Batman Begins');
INSERT INTO vigiadministrator VALUES ('ADM567897','MAN456796','Avengers');
INSERT INTO vigiadministrator VALUES ('ADM567898','MAN456792','Suckerpunch');
INSERT INTO vigiadministrator VALUES ('ADM567899','MAN456792','Help me, I may cry');

--Create Transactions
INSERT INTO vigitransactions VALUES ('TRA567890','CID456789','876','28-NOV-1988','MOV456789');  
INSERT INTO vigitransactions VALUES ('TRA567891','CID333333','678','02-MAY-1994','MOV234563');
INSERT INTO vigitransactions VALUES ('TRA567892','CID333333','588','22-FEB-1993','MOV092833');
INSERT INTO vigitransactions VALUES ('TRA567893','CID555555','885','14-JAN-1990','MOV863743');
INSERT INTO vigitransactions VALUES ('TRA567894','CID444444','899','10-DEC-1979','MOV091872');
INSERT INTO vigitransactions VALUES ('TRA567895','CID777777','988','09-NOV-1980','MOV123234');
INSERT INTO vigitransactions VALUES ('TRA567896','CID888888','878','27-AUG-1984','MOV877332');
INSERT INTO vigitransactions VALUES ('TRA567897','CID121212','808','24-MAR-1983','MOV092231');
INSERT INTO vigitransactions VALUES ('TRA567898','CID666666','890','01-APR-1988','MOV997855');
INSERT INTO vigitransactions VALUES ('TRA567899','CID999999','865','12-JAN-1992','MOV092844');
INSERT INTO vigitransactions VALUES ('TRA567800','CID654321','000','19-NOV-1986','MOV112235');
  
--Create Movies
INSERT INTO vigimovie VALUES ('MOV456789','Hulk','11-NOV-1999','Horror','Night Jones','Nicholas Cage','3.8','Scary movie','ADM567890','STU678922','3.9','1');
INSERT INTO vigimovie VALUES ('MOV234563','Daredevil','02-MAY-1994','Action','Annie May','Keanu Reeves','2.2','Hero movie','ADM567890','STU678922','3.9','1');
INSERT INTO vigimovie VALUES ('MOV112235','Iron Man','11-MAR-1994','Scifi','Misty Call','Orlando Bloom','2.8','Hero saves the day','ADM567890','STU678901','3.9','1');
INSERT INTO vigimovie VALUES ('MOV092844','Iron Man 2','07-NOV-1977','Scifi','Days Johnson','Orlando Jones','1.9','Heroe saves the day again','ADM567894','STU678922','3.9','1');
INSERT INTO vigimovie VALUES ('MOV997855','Iron Man 3','23-MAY-1990','Scifi','Murder Victim','Robert Downey Jr.','2.6','Hero settles down','ADM567894','STU678901','3.9','1');
INSERT INTO vigimovie VALUES ('MOV092231','Avengers','01-APR-1991','War','Mood','Johnny Depp','7.3','All the heroes combine','ADM567894','STU678922','3.9','1');
INSERT INTO vigimovie VALUES ('MOV877332','Batman Begins','12-FEB-1995','Crime','Usetess Man','Christian Bale','5.4','Origin of Batman','ADM567894','STU678901','3.9','1');
INSERT INTO vigimovie VALUES ('MOV123234','Dark Knight','02-JUN-1992','Crime','Cuddle Bun','Heath Ledger','0.1','Batman is now a force to be reckoned with','ADM567899','STU678999','3.9','1');
INSERT INTO vigimovie VALUES ('MOV091872','Captain America','18-JUL-1993','Action','Boss Man','Yony Hills','2.2','Origins of the legendary hero','ADM567894','STU678999','3.9','1');
INSERT INTO vigimovie VALUES ('MOV863743','Suckerpunch','14-SEP-1983','Comedy','Frozen Yogurt','Christina Hendrix','3.1','Guy getting beaten repeatedly','ADM567894','STU678944','3.9','1');
INSERT INTO vigimovie VALUES ('MOV092833','Help me, I may cry','11-SEP-1979','Drama','Catch Me','Dakota Fanning','3.0','The sad story of a young girl growing into a woman','ADM567899','STU678901','3.9','1');

--Create Billing
INSERT INTO vigibilling VALUES ('123456789123','Master Card','11-SEP-1979','123','John Stark','123 North Ave.','CID456789');
INSERT INTO vigibilling VALUES ('123456789124','Visa','14-SEP-1979','456','King Ned','123 North Ave.','CID456789');
INSERT INTO vigibilling VALUES ('123456789125','Visa','19-SEP-1979','983','Lord Vader','123 North Ave.','CID456789');
INSERT INTO vigibilling VALUES ('123456789126','Discover','11-SEP-1979','333','Johnny Bravo','123 North Ave.','CID333333');
INSERT INTO vigibilling VALUES ('123456789127','Master Card','25-SEP-1994','444','John Stark','123 North Ave.','CID444444');
INSERT INTO vigibilling VALUES ('123456789128','Master Card','11-SEP-1979','890','Tony Stark','123 North Ave.','CID555555');
INSERT INTO vigibilling VALUES ('123456789129','American Express','11-SEP-2013','123','John Stark','123 North Ave.','CID456789');
INSERT INTO vigibilling VALUES ('123456789130','Master Card','11-SEP-1979','123','Lord James','123 North Ave.','CID456789');
INSERT INTO vigibilling VALUES ('123456789131','Chase','11-SEP-1979','123','John Stark','123 North Ave.','CID456789');
INSERT INTO vigibilling VALUES ('123456789132','Master Card','11-SEP-1979','123','John Stark','123 North Ave.','CID456789');

