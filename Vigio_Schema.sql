--DROP TABLE employee CASCADE CONSTRAINTS;
--DROP TABLE department CASCADE CONSTRAINTS;
--DROP TABLE dept_locations CASCADE CONSTRAINTS;
--DROP TABLE project CASCADE CONSTRAINTS;
--DROP TABLE works_on CASCADE CONSTRAINTS;
--CREATE SCHEMA COMPANY AUTHORIZATION glee;


CREATE TABLE vigiclient (
  CustomerID  char(9),
  UserName    varchar(20),
  Password    varchar(20),
  FirstName   varchar2(15) not null, 
  LastName    varchar2(15),
  BillingInfo varchar2(15) not null,
  Age         varchar2(3),
  Subscriber  char(1),
  PaymentInfo varchar2(9),
  primary key (CustomerID)
);


CREATE TABLE vigimovie (
  MovieID     char(9),
  Title       varchar(20),
  ReleaseDate  date, 
  Genre       varchar(10),
  Directors   varchar(20),
  Actors      varchar(20),
  Length      varchar(3),
  Description varchar(200),
  AdminID    char(9),
  StudioID   char(9),
  Prices      varchar(6),
  Subscribable char(1),
  primary key (MovieID)
);


CREATE TABLE vigiadministrator (
  AdminID       char(9),
  ManagerID     char(9), 
  MoviesManaged varchar(20),
  primary key (AdminID)
);

CREATE TABLE vigimanager (
  ManagerID     char(9),
  StudioID      char(9),
  primary key   (ManagerID)
);

CREATE TABLE vigistudio (
  StudioID   char(9),
  ContractID    char(9),
  StudioName  varchar(25),
  ManagerID   char(9),
  Address     varchar(25),
  MovieTitles varchar(25),
  primary key (StudioID),
  foreign key (ManagerID) references vigimanager(ManagerID)
);


CREATE TABLE vigicontract (
  ContractID  char(9),
  StudioFee  varchar(7),
  LengthOfContract varchar(2),
  ManagerID    char(9),
  StudioID   char(9),
  primary key (ContractID)
);

CREATE TABLE vigitransactions (
  TransID     char(9),
  CustomerID  char(9),
  MovieID     char(9),
  Payment     varchar(3),
  PaymentDate date,
  primary key (TransID),
  foreign key (MovieID) references vigimovie(MovieID),
  foreign key (CustomerID) references vigiclient(CustomerID)
);

CREATE TABLE vigipurchases (
  PurID      char(9),
  CustomerID char(9),
  Quality char(2),
  primary key(PurID),
  foreign key(CustomerID) references vigiclient(CustomerID)
);

CREATE TABLE vigirental (
  RentID     char(9),
  CustomerID char(9),
  RentalLength varchar(2),
  primary key (RentID),
  foreign key(CustomerID) references vigiclient(CustomerID)
);

CREATE TABLE vigisubscription (
  SubID      char(9),
  CustomerID char(9),
  Subscriber char(1),
  primary key(SubID),
  foreign key(CustomerID) references vigiclient(CustomerID)
  );
  
  CREATE TABLE vigibilling (
  CardNumber  char(12),
  CardType    varchar(20),
  ExpDate     date,
  CustomerID  char(9),
  CVN         varchar(3),
  NameOnCard  varchar(30),
  BillingAddr varchar(75),
  primary key (CardNumber),
  foreign key(CustomerID) references vigiclient(CustomerID)
  );
  
  ALTER TABLE vigibilling DROP (
  CustomerID
  );
  
  ALTER TABLE vigibilling ADD (
  CustomerID  char(9),
  foreign key (CustomerID) references vigiclient(CustomerID)
  );
  
  ALTER TABLE vigistudio ADD (
  foreign key (ContractID) references vigicontract(ContractID)
  );
  
  ALTER TABLE vigimovie ADD(
  foreign key (AdminID) references vigiadministrator(AdminID),
  foreign key (StudioID) references vigistudio(StudioID)
  );
  
  ALTER TABLE vigiadministrator ADD(
  foreign key (ManagerID) references vigimanager(ManagerID)
  );
  
  ALTER TABLE vigimanager ADD(
  foreign key (StudioID) references vigistudio(StudioID)
  );

  ALTER TABLE vigistudio DROP(
  ManagerID
  );
  
  ALTER TABLE vigitransactions DROP(
  MovieID
  );
  
    ALTER TABLE vigitransactions ADD(
  MovieID char(9)
  );
  