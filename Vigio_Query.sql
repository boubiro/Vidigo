--Login
SELECT USERNAME, PASSWORD
FROM VIGICLIENT
WHERE '+emailToCheck'=USERNAME AND '+passwordToCheck'=PASSWORD;

SELECT USERNAME, PASSWORD
FROM VIGICLIENT
WHERE '+email'=USERNAME;
--SearchName
SELECT Title
FROM movie;
--Not sure if need '%name%' value here for comparision or if it will be taken care of in GUI code

--Search Genre
SELECT Title
FROM movie;
--Not sure if need '%genre%' value here for comparision or if it will be taken care of in GUI code

--AddMovie
INSERT INTO movie VALUES 
  ('12345','Hulk','1994,09,24','Horror','Night Jones','Nicholas Cage','3.80','Scary movie','234567890','345678901','3.99','1');

--RemoveMovie
DELETE FROM movie
WHERE MovieID=givenValue;

--GetDescription
SELECT description
FROM movie;

--AddCreditCard
UPDATE client
SET paymentInfo=newCard;