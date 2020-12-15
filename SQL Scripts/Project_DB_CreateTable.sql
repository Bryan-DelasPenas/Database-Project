USE ProjectDB;
CREATE TABLE Employee( 
Employee_Num        INT NOT NULL UNIQUE,  
Supervisor_Num      INT NOT NULL, 
Employee_Name       VARCHAR(45) NOT NULL UNIQUE,
Employee_Email      VARCHAR(45) UNIQUE, 
Employee_Street     VARCHAR(45) NOT NULL,
Employee_City       VARCHAR(45) NOT NULL, 
Employee_State      VARCHAR(45) NOT NULL,
Employee_Zip_Code   INT NOT NULL, 
Employee_Unit_Num   INT, 
Employee_Home_Phone   VARCHAR(11),
Employee_Work_Phone   VARCHAR(11), 
Employee_Mobile_Phone VARCHAR(11), 
PRIMARY KEY (Employee_Num, Supervisor_Num) ,
CHECK(Employee_Home_Phone NOT LIKE '%[^0-9]%'), 
CHECK(Employee_Work_Phone NOT LIKE '%[^0-9]%'), 
CHECK(Employee_Mobile_Phone NOT LIKE '%[^0-9]%') 
);
CREATE TABLE Associates( 
Employee_Num     INT NOT NULL UNIQUE,
Employee_Name    VARCHAR(45) NOT NULL UNIQUE,
Property_Amount  INT NOT NULL,
CHECK(Property_Amount <= 12),
PRIMARY KEY(Employee_Num),
FOREIGN KEY(Employee_Num) REFERENCES Employee(Employee_Num)
);
CREATE TABLE Partners( 
Employee_Num       INT NOT NULL UNIQUE,
Employee_Name      VARCHAR(45) NOT NULL UNIQUE,
Property_Owner_Num INT NOT NULL,
CHECK(Property_Owner_Num <= 1),
PRIMARY KEY(Employee_Num),
FOREIGN KEY(Employee_Num) REFERENCES Employee(Employee_Num)
); 
CREATE TABLE Lease(
Lease_Num          INT NOT NULL UNIQUE,
Lease_Date         DATE  NULL, 
Lease_Deposit      INT, 
Lease_Monthly_Rent INT NOT NULL,
Lease_Start_Date   DATE NOT NULL, 
Lease_End_Date     DATE NOT NULL, 
PRIMARY KEY(Lease_NUM),
CHECK(DATEDIFF(Lease_End_Date, Lease_Start_Date) > 0),
CHECK(Lease_Monthly_Rent > 0), 
CHECK(DATEDIFF(Lease_End_Date, Lease_Start_Date ) >= 91), 
CHECK(DATEDIFF(Lease_End_Date, Lease_Start_Date) <= 1095)
);
CREATE TABLE Property_Owner(
Owner_Num          INT NOT NULL UNIQUE,
Employee_Num       INT NOT NULL,
Owner_Name         VARCHAR(45) NOT NULL UNIQUE,
Owner_Email        VARCHAR(45), 
Owner_Street       VARCHAR(45) NOT NULL,
Owner_City         VARCHAR(45) NOT NULL,
Owner_State        VARCHAR(45) NOT NULL,
Owner_Zip_Code     INT NOT NULL,
Owner_Unit_Num     INT, 
Owner_Home_Phone   INT,
Owner_Work_Phone   INT,
Owner_Mobile_Phone INT,  
PRIMARY KEY(Owner_Num, Employee_Num),
FOREIGN KEY(Employee_Num) REFERENCES Partners(Employee_Num),
CHECK(Owner_Home_Phone NOT LIKE '%[^0-9]%'), 
CHECK(Owner_Work_Phone NOT LIKE '%[^0-9]%'), 
CHECK(Owner_Mobile_Phone NOT LIKE '%[^0-9]%') 
);
CREATE TABLE Client(
Client_Num          Int NOT NULL UNIQUE, 
Client_Name         VARCHAR(45) NOT NULL UNIQUE, 
Client_Email        VARCHAR(45), 
Maxium_Willing_Rent INT NOT NULL, 
Property_Pref       VARCHAR(45) NOT NULL,
Client_Street       VARCHAR(45) NOT NULL,
CLient_City         VARCHAR(45) NOT NULL, 
Client_State        VARCHAR(45) NOT NULL,
CLient_Zip_Code     INT NOT NULL,
Client_Unit_Num     INT, 
Client_Home_Phone   INT,
Client_Work_Phone   INT,
Client_Mobile_Phone INT, 
PRIMARY KEY(Client_Num),
CHECK(Property_Pref IN ('Residential', 'Commerical', 'Industrial')),
CHECK(Maxium_Willing_Rent > 0), 
CHECK(Client_Home_Phone NOT LIKE '%[^0-9]%'), 
CHECK(Client_Work_Phone NOT LIKE '%[^0-9]%'), 
CHECK(Client_Mobile_Phone NOT LIKE '%[^0-9]%') 
);
CREATE TABLE Rental_Properties(
Property_Num        INT NOT NULL UNIQUE, 
Property_Name       VARCHAR(45) NOT NULL UNIQUE, 
Area_Square_Footing INT NOT NULL, 
Monthly_Manage_Fee  INT NOT NULL, 
Advertised          BOOLEAN, 
Property_Type       VARCHAR(45) NOT NULL, 
Property_Street     VARCHAR(45) NOT NULL,
Property_City       VARCHAR(45) NOT NULL, 
Property_State      VARCHAR(45) NOT NULL,
Property_Zip_Code   INT NOT NULL,
Property_Unit_Num   INT, 
PRIMARY KEY(Property_Num)
);
CREATE TABLE Residential(
Property_Num INT NOT NULL UNIQUE, 
Property_Name VARCHAR(45),
Bathroom_Num INT NOT NULL, 
Bedroom_Num  INT NOT NULL,
PRIMARY KEY(Property_Num),
FOREIGN KEY(Property_Num) REFERENCES Rental_Properties(Property_Num), 
Check(Bathroom_Num > 0),
Check(Bedroom_Num > 0)
);
CREATE TABLE Commerical(
Property_Num    INT NOT NULL UNIQUE,
Property_Name VARCHAR(45),
Coperation_Name VARCHAR(45) NOT NULL,
PRIMARY KEY(Property_NUM),
FOREIGN KEY(Property_Num) REFERENCES Rental_Properties(Property_Num)
);
CREATE TABLE Industrial(
Property_Num    INT NOT NULL UNIQUE,
Property_Name VARCHAR(45),
Industrial_Name VARCHAR(45) NOT NULL,
PRIMARY KEY(Property_Num),
FOREIGN KEY(Property_Num) REFERENCES Rental_Properties(Property_Num)
);
CREATE TABLE Property_Viewing(
Property_Num       INT NOT NULL, 
Property_Name      VARCHAR(45)  NOT NULL,
Viewing_Date       DATE NOT NULL,
-- Viewing_Date_Check BOOL NOT NULL,
Viewing_Time       TIME  NOT NULL,
FOREIGN KEY(Property_Num) REFERENCES Rental_Properties(Property_Num),
UNIQUE(Viewing_Date, Viewing_Time)
);
CREATE TABLE Arranges(
Employee_Num  INT NOT NULL,
Employee_Name VARCHAR(45) NOT NULL,
Property_Num  INT NOT NULL,
Property_Name VARCHAR(45) NOT NULL,
Viewing_Date       DATE NOT NULL,
Viewing_Time       TIME  NOT NULL,
FOREIGN KEY(Employee_Num) REFERENCES Employee(Employee_Num),
FOREIGN KEY(Property_Num) REFERENCES Rental_Properties(Property_Num)
);
CREATE TABLE Assigned_Partner(
Employee_Num       INT NOT NULL,
Employee_Name      VARCHAR(45) NOT NULL,
Owner_Num          INT NOT NULL UNIQUE,
Owner_Name         VARCHAR(45) NOT NULL, 
PRIMARY KEY(Owner_Num), 
FOREIGN KEY(Employee_Num) REFERENCES Employee(Employee_Num),
FOREIGN KEY(Owner_Num) REFERENCES Property_Owner(Owner_Num)

);
CREATE TABLE Assigned_Property(
Employee_Num    INT NOT NULL, 
Employee_Name   VARCHAR(45) NOT NULL,
Property_Num    INT NOT NULL UNIQUE, 
Property_Name   VARCHAR(45) NOT NULL, 
Property_Status BOOLEAN NOT NULL, 
PRIMARY KEY(Property_Num),
FOREIGN KEY(Employee_Num) REFERENCES Employee(Employee_Num), 
FOREIGN KEY(Property_Num) REFERENCES Rental_Properties(Property_Num)
);
CREATE TABLE Contract(
Lease_Num    INT NOT NULL UNIQUE,
Property_Name VARCHAR(45) NOT NULL, 
Property_Num INT NOT NULL UNIQUE,
PRIMARY KEY(Lease_Num, Property_Num),
FOREIGN KEY(Lease_Num) REFERENCES Lease(Lease_Num),
FOREIGN KEY(Property_Num) REFERENCES Rental_Properties(Property_Num)
);
CREATE TABLE Owned_By(
Property_Num INT NOT NULL UNIQUE,
Property_Name VARCHAR(45) NOT NULL,
Owner_Num    INT NOT NULL,
Owner_Name   VARCHAR(45) NOT NULL,
PRIMARY KEY(Property_Num),
FOREIGN KEY(Property_Num) REFERENCES Rental_Properties(Property_Num), 
FOREIGN KEY(Owner_Num) REFERENCES Property_Owner(Owner_Num)
);
CREATE TABLE Tours(
Owner_Num     INT NOT NULL,
Owner_Name    VARCHAR(45) NOT NULL,
Property_Num  INT NOT NULL,
Property_Name  VARCHAR(45) NOT NULL,
Tour_Date     DATE NOT NULL,
Tour_Time     TIME NOT NULL,
FOREIGN KEY(Owner_Num) REFERENCES Property_Owner(Owner_Num),
UNIQUE(Tour_Date, Tour_Time)
);
CREATE TABLE Views(
Client_Num         INT NOT NULL,
Client_Name        VARCHAR(45) NOT NULL,
Property_Num       INT NOT NULL,
Property_Name      VARCHAR(45) NOT NULL, 
View_Date          DATE NOT NULL,
View_Time          TIME NOT NULL,

FOREIGN KEY(Client_Num) REFERENCES Client(Client_Num),
FOREIGN KEY(Property_Num) REFERENCES Rental_Properties(Property_Num),
UNIQUE(Client_Num, View_Date),
UNIQUE(View_Date, View_Time)
);

CREATE TABLE Sign_Lease(
Client_Num INT NOT NULL,
Client_Name VARCHAR(45) NOT NULL,
Lease_Num  INT NOT NULL,
PRIMARY KEY(Client_Num, Lease_Num),
FOREIGN KEY(Lease_Num) REFERENCES Lease(Lease_Num),
FOREIGN KEY(Client_Num) REFERENCES Client(Client_Num),
Unique(Client_Num, Client_Name, Lease_Num)
);
CREATE TABLE Writes_Lease(
Employee_Num INT NOT NULL, 
Employee_Name VARCHAR(45) NOT NULL, 
Lease_Num    INT NOT NULL UNIQUE,
PRIMARY KEY(Employee_Num, Lease_Num), 
FOREIGN KEY(Employee_Num) REFERENCES Employee(Employee_Num), 
FOREIGN KEY(Lease_Num) REFERENCES Lease(Lease_Num)
);
