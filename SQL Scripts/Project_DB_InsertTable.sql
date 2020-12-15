USE ProjectDB; 
-- The database must be all to be populated with the following requirements: 
-- •	6 employees  
-- •	12 clients  
-- •	6 private owners 
-- •	6 rental properties of each type (residential, commercial, industrial)  
-- •	12 property viewings 
-- •	6 leases and appropriate relationship instances among them.

-- 6 employees  
INSERT INTO Employee(Employee_Num, Supervisor_Num, Employee_Name, Employee_Email, Employee_Street, Employee_City, Employee_State, 
                     Employee_Zip_Code, Employee_Unit_Num, Employee_Home_Phone, Employee_Work_Phone, Employee_Mobile_Phone)
VALUES(1, 1, "John Bill", "jbill@umbc.edu", "45 Wise Avn", "Baltimore", "Maryland", "21223", 4,  "445", "4443", "5565");

INSERT INTO Employee(Employee_Num, Supervisor_Num, Employee_Name, Employee_Email, Employee_Street, Employee_City, Employee_State, 
                     Employee_Zip_Code, Employee_Unit_Num, Employee_Home_Phone, Employee_Work_Phone, Employee_Mobile_Phone)
VALUES(2, 1, "Bob Bell", "bbell@umbc.edu", "423 Merrit", "Baltimore", "Maryland", "21223", 5, "332", "4242", "42424"); 

INSERT INTO Employee(Employee_Num, Supervisor_Num, Employee_Name, Employee_Email, Employee_Street, Employee_City, Employee_State, 
                     Employee_Zip_Code, Employee_Unit_Num, Employee_Home_Phone, Employee_Work_Phone, Employee_Mobile_Phone)
VALUES(3, 1,  "Jimmy Red", "jred@umbc.edu", "231 Mid", "Baltimore", "Maryland", "21223", 1, NULL, NULL, NULL); 

INSERT INTO Employee(Employee_Num, Supervisor_Num, Employee_Name, Employee_Email, Employee_Street, Employee_City, Employee_State, 
                     Employee_Zip_Code, Employee_Unit_Num, Employee_Home_Phone, Employee_Work_Phone, Employee_Mobile_Phone)
VALUES(4,2,"Sam Green", "sgreen@umbc.edu", "1234 Top", "Baltimore", "Maryland", "21223", 6, NULL, NULL, NULL);

INSERT INTO Employee(Employee_Num, Supervisor_Num, Employee_Name, Employee_Email, Employee_Street, Employee_City, Employee_State, 
                     Employee_Zip_Code, Employee_Unit_Num, Employee_Home_Phone, Employee_Work_Phone, Employee_Mobile_Phone)
VALUES(5,3, "Quinn Blue", "qblue@umbc.edu", "543 GreenWay", "Baltimore", "Maryland", "21223", 9, NULL, NULL, NULL);

INSERT INTO Employee(Employee_Num, Supervisor_Num, Employee_Name, Employee_Email, Employee_Street, Employee_City, Employee_State, 
                     Employee_Zip_Code, Employee_Unit_Num, Employee_Home_Phone, Employee_Work_Phone, Employee_Mobile_Phone)
VALUES(6,4, "Tom Pink", "tpink@umbc.edu", "1345 RedWay", "Baltimore", "Maryland", "21223", NULL, NULL, NULL, NULL);

-- 3 Associates 
INSERT INTO Associates(Employee_Num, Employee_Name, Property_Amount)
VALUES(1, "John Bill", 10);

INSERT INTO Associates(Employee_Num, Employee_Name, Property_Amount)
VALUES(2, "Bob Bell", 4);

INSERT INTO Associates(Employee_Num, Employee_Name, Property_Amount)
VALUES(3, "Jimmy Red", 4);

-- 3 Partners 
INSERT INTO Partners(Employee_Num, Employee_Name, Property_Owner_Num)
Values(4, "Sam Green", 0);

INSERT INTO Partners(Employee_Num, Employee_Name, Property_Owner_Num)
Values(5, "Quinn Blue", 0);

INSERT INTO Partners(Employee_Num, Employee_Name, Property_Owner_Num)
Values(6, "Tom Pink", 0);
-- 12 clients
INSERT INTO Client(Client_Num, Client_Name, Client_Email, Maxium_Willing_Rent, Property_Pref, Client_Street, Client_City, 
                   Client_State, Client_Zip_Code, Client_Unit_Num, Client_Home_Phone, Client_Work_Phone, Client_Mobile_Phone) 
VALUES(1, "Stan Brown", "sbrown@umbc.edu", 10000, "Commerical", "563 A Street", "Baltimore", "Maryland", "21223", NULL, NULL, "3232", "232323");

INSERT INTO Client(Client_Num, Client_Name, Client_Email, Maxium_Willing_Rent, Property_Pref, Client_Street, Client_City, 
                   Client_State, Client_Zip_Code, Client_Unit_Num, Client_Home_Phone, Client_Work_Phone, Client_Mobile_Phone) 
VALUES(2, "James Pro", "jpro@umbc.edu", 100000, "Commerical", "56 B Street", "Baltimore", "Maryland", "21223", NULL, NULL, "322432", "23623");

INSERT INTO Client(Client_Num, Client_Name, Client_Email, Maxium_Willing_Rent, Property_Pref, Client_Street, Client_City, 
                   Client_State, Client_Zip_Code, Client_Unit_Num, Client_Home_Phone, Client_Work_Phone, Client_Mobile_Phone) 
VALUES(3, "Lance Bo", "lbo@umbc.edu", 12000, "Commerical", "63 C Street", "Baltimore", "Maryland", "21223", NULL, NULL, "3232", "232323");

INSERT INTO Client(Client_Num, Client_Name, Client_Email, Maxium_Willing_Rent, Property_Pref, Client_Street, Client_City, 
                   Client_State, Client_Zip_Code, Client_Unit_Num, Client_Home_Phone, Client_Work_Phone, Client_Mobile_Phone) 
VALUES(4, "Nanes Po", "npo@umbc.edu", 40000, "Commerical", "578 D Street", "Baltimore", "Maryland", "21223", NULL, NULL, "320032", "234212323");

INSERT INTO Client(Client_Num, Client_Name, Client_Email, Maxium_Willing_Rent, Property_Pref, Client_Street, Client_City, 
                   Client_State, Client_Zip_Code, Client_Unit_Num, Client_Home_Phone, Client_Work_Phone, Client_Mobile_Phone) 
VALUES(5, "Krames Taq", "ktaq@umbc.edu", 990, "Residential", "123 E Street", "Baltimore", "Maryland", "21223", NULL, NULL, "329932", "25632323");

INSERT INTO Client(Client_Num, Client_Name, Client_Email, Maxium_Willing_Rent, Property_Pref, Client_Street, Client_City, 
                   Client_State, Client_Zip_Code, Client_Unit_Num, Client_Home_Phone, Client_Work_Phone, Client_Mobile_Phone) 
VALUES(6, "Ame Un", "aun@umbc.edu", 1000, "Residential", "104 F Street", "Baltimore", "Maryland", "211223", NULL, NULL, "323652", "232323");

INSERT INTO Client(Client_Num, Client_Name, Client_Email, Maxium_Willing_Rent, Property_Pref, Client_Street, Client_City, 
                   Client_State, Client_Zip_Code, Client_Unit_Num, Client_Home_Phone, Client_Work_Phone, Client_Mobile_Phone) 
VALUES(7, "Suzanne Joseph", "sjoseph@umbc.edu", 109700, "Residential", "101 G Street", "Baltimore", "Maryland", "211223", NULL, NULL, "362", "555");

INSERT INTO Client(Client_Num, Client_Name, Client_Email, Maxium_Willing_Rent, Property_Pref, Client_Street, Client_City, 
                   Client_State, Client_Zip_Code, Client_Unit_Num, Client_Home_Phone, Client_Work_Phone, Client_Mobile_Phone) 
VALUES(8, "Valentino Castro", "vcastro@umbc.edu", 523000, "Residential", "190 H Street", "Baltimore", "Maryland", "211223", NULL, NULL, "309", "194");

INSERT INTO Client(Client_Num, Client_Name, Client_Email, Maxium_Willing_Rent, Property_Pref, Client_Street, Client_City, 
                   Client_State, Client_Zip_Code, Client_Unit_Num, Client_Home_Phone, Client_Work_Phone, Client_Mobile_Phone) 
VALUES(9, "Bethany Devlin", "bdevlin@umbc.edu", 344500, "Industrial", "063 I Street", "Baltimore", "Maryland", "211223", NULL, NULL, "321394", "234523");

INSERT INTO Client(Client_Num, Client_Name, Client_Email, Maxium_Willing_Rent, Property_Pref, Client_Street, Client_City, 
                   Client_State, Client_Zip_Code, Client_Unit_Num, Client_Home_Phone, Client_Work_Phone, Client_Mobile_Phone) 
VALUES(10, "Cem Vega", "cvega@umbc.edu", 1043200, "Industrial", "103 J Street", "Baltimore", "Maryland", "211223", NULL, NULL, "3362", "2378");

INSERT INTO Client(Client_Num, Client_Name, Client_Email, Maxium_Willing_Rent, Property_Pref, Client_Street, Client_City, 
                   Client_State, Client_Zip_Code, Client_Unit_Num, Client_Home_Phone, Client_Work_Phone, Client_Mobile_Phone) 
VALUES(11, "Aiysha Gamble", "agamble@umbc.edu", 140500, "Industrial", "987 K Street", "Baltimore", "Maryland", "211223", NULL, NULL, "334552", "687323");

INSERT INTO Client(Client_Num, Client_Name, Client_Email, Maxium_Willing_Rent, Property_Pref, Client_Street, Client_City, 
                   Client_State, Client_Zip_Code, Client_Unit_Num, Client_Home_Phone, Client_Work_Phone, Client_Mobile_Phone) 
VALUES(12, "Kasim Milne", "kmilne@umbc.edu", 96000, "Industrial", "987 I Street", "Baltimore", "Maryland", "211223", NULL, NULL, "32952", "232303");

-- 6 private owners 
INSERT INTO Property_Owner(Owner_Num, Employee_Num, Owner_Name, Owner_Email,  Owner_Street,Owner_City,
						   Owner_State, Owner_Zip_Code, Owner_Unit_Num, Owner_Home_Phone, Owner_Work_Phone, Owner_Mobile_Phone)
VALUES(1, 4,"Henry White", "hwhite@umbc.edu", "525 J Road", "Baltimore", "Maryland", 212223, 7, NULL, 23455, NULL);

INSERT INTO Property_Owner(Owner_Num, Employee_Num, Owner_Name, Owner_Email,  Owner_Street,Owner_City,
						   Owner_State, Owner_Zip_Code, Owner_Unit_Num, Owner_Home_Phone, Owner_Work_Phone, Owner_Mobile_Phone)
VALUES(2, 4,"Cindy Morse", "cMorse@umbc.edu", "5253 K Road", "Baltimore", "Maryland", 212223, 44, NULL, 424244, NULL);

INSERT INTO Property_Owner(Owner_Num, Employee_Num, Owner_Name, Owner_Email,  Owner_Street,Owner_City,
						   Owner_State, Owner_Zip_Code, Owner_Unit_Num, Owner_Home_Phone, Owner_Work_Phone, Owner_Mobile_Phone)
VALUES(3, 5,"Eleni Cohen", "eCohen@umbc.edu", "35 L Road", "Baltimore", "Maryland", 212223, NULL, NULL, NULL, 41445);

INSERT INTO Property_Owner(Owner_Num, Employee_Num, Owner_Name, Owner_Email,  Owner_Street,Owner_City,
						   Owner_State, Owner_Zip_Code, Owner_Unit_Num, Owner_Home_Phone, Owner_Work_Phone, Owner_Mobile_Phone)
VALUES(4, 5,"Pat Doe", "pDoe@umbc.edu", "525 M Road", "Baltimore", "Maryland", 212223, NULL, 13456, NULL, 24244);

INSERT INTO Property_Owner(Owner_Num, Employee_Num, Owner_Name, Owner_Email,  Owner_Street,Owner_City,
						   Owner_State, Owner_Zip_Code, Owner_Unit_Num, Owner_Home_Phone, Owner_Work_Phone, Owner_Mobile_Phone)
VALUES(5, 6,"Jonah Ho", "jho@umbc.edu", "525 N Road", "Baltimore", "Maryland", 212223, NULL, NULL, 3636, NULL);

INSERT INTO Property_Owner(Owner_Num, Employee_Num, Owner_Name, Owner_Email,  Owner_Street,Owner_City,
						   Owner_State, Owner_Zip_Code, Owner_Unit_Num, Owner_Home_Phone, Owner_Work_Phone, Owner_Mobile_Phone)
VALUES(6, 6,"Derek Burn", "dburn@umbc.edu", "525 O Road", "Baltimore", "Maryland", 212223, 4, 152, NULL, 5355);

-- 6 properties of each type 
INSERT INTO Rental_Properties(Property_Num, Property_Name, Area_Square_Footing, Monthly_Manage_Fee, Advertised, Property_Type, 
							  Property_Street, Property_City, Property_State, Property_Zip_Code, Property_Unit_Num)
VALUES(1, "Oak Hill", 13300, 10000,True, "Residential" , "234 A street", "Baltimore", "Maryland", "212223", 4);

INSERT INTO Rental_Properties(Property_Num, Property_Name, Area_Square_Footing, Monthly_Manage_Fee, Advertised, Property_Type,
							  Property_Street, Property_City, Property_State, Property_Zip_Code, Property_Unit_Num)
VALUES(2, "Willow Hill", 24500, 50000, True,"Residential", "2445 B street", "Baltimore", "Maryland", "212223", 1);

INSERT INTO Rental_Properties(Property_Num, Property_Name, Area_Square_Footing, Monthly_Manage_Fee, Advertised, Property_Type,
							  Property_Street, Property_City, Property_State, Property_Zip_Code, Property_Unit_Num)
VALUES(3, "Honey Hill", 11450, 102450,  True,"Residential", "3 C street", "Baltimore", "Maryland", "212223", 2);

INSERT INTO Rental_Properties(Property_Num, Property_Name, Area_Square_Footing, Monthly_Manage_Fee, Advertised, Property_Type,
							  Property_Street, Property_City, Property_State, Property_Zip_Code, Property_Unit_Num)
VALUES(4, "Coco Hill", 13300, 20000,  True, "Residential",  "4 D street", "Baltimore", "Maryland", "212223", 3);

INSERT INTO Rental_Properties(Property_Num, Property_Name, Area_Square_Footing, Monthly_Manage_Fee, Advertised, Property_Type,
							  Property_Street, Property_City, Property_State, Property_Zip_Code, Property_Unit_Num)
VALUES(5, "Ash Hill", 25000, 30000, True, "Residential","6 F street", "Baltimore", "Maryland", "212223", 5);

INSERT INTO Rental_Properties(Property_Num, Property_Name, Area_Square_Footing, Monthly_Manage_Fee, Advertised, Property_Type,
							  Property_Street, Property_City, Property_State, Property_Zip_Code, Property_Unit_Num)
VALUES(6, "Bay Hill", 45000, 40000,  True, "Residential", "7 G street", "Baltimore", "Maryland", "212223", 6);

INSERT INTO Rental_Properties(Property_Num, Property_Name, Area_Square_Footing, Monthly_Manage_Fee, Advertised, Property_Type,
							  Property_Street, Property_City, Property_State, Property_Zip_Code, Property_Unit_Num)
VALUES(7, "Rubber Hill", 35000, 50000,  True, "Commerical", "8 H street", "Baltimore", "Maryland", "212223", 7);

INSERT INTO Rental_Properties(Property_Num, Property_Name, Area_Square_Footing, Monthly_Manage_Fee, Advertised, Property_Type,
							  Property_Street, Property_City, Property_State, Property_Zip_Code, Property_Unit_Num)
VALUES(8, "Fig Hill", 55000, 25000,  True, "Commerical", "9 I street", "Baltimore", "Maryland", "212223", 8);

INSERT INTO Rental_Properties(Property_Num, Property_Name, Area_Square_Footing, Monthly_Manage_Fee, Advertised, Property_Type,
							  Property_Street, Property_City, Property_State, Property_Zip_Code, Property_Unit_Num)
VALUES(9, "Locust Hill", 50000, 35000, True, "Commerical", "10 J street", "Baltimore", "Maryland", "212223", 9);

INSERT INTO Rental_Properties(Property_Num, Property_Name, Area_Square_Footing, Monthly_Manage_Fee, Advertised, Property_Type,
							  Property_Street, Property_City, Property_State, Property_Zip_Code, Property_Unit_Num)
VALUES(10, "American Hill", 60000, 45000, False, "Commerical", "11 K street", "Baltimore", "Maryland", "212223", 10);

INSERT INTO Rental_Properties(Property_Num, Property_Name, Area_Square_Footing, Monthly_Manage_Fee, Advertised, Property_Type,
							  Property_Street, Property_City, Property_State, Property_Zip_Code, Property_Unit_Num)
VALUES(11, "Dragon Hill", 70000, 55000, False,"Commerical", "12 L street", "Baltimore", "Maryland", "212223", 11);

INSERT INTO Rental_Properties(Property_Num, Property_Name, Area_Square_Footing, Monthly_Manage_Fee, Advertised, Property_Type,
							  Property_Street, Property_City, Property_State, Property_Zip_Code, Property_Unit_Num)
VALUES(12, "Tree Hill", 80000, 65000, False, "Commerical", "13 M street", "Baltimore", "Maryland", "212223", 12);

INSERT INTO Rental_Properties(Property_Num, Property_Name, Area_Square_Footing, Monthly_Manage_Fee, Advertised, Property_Type,
							  Property_Street, Property_City, Property_State, Property_Zip_Code, Property_Unit_Num)
VALUES(13, "Beech Hill", 45000, 75000, False, "Industrial", "14 N street", "Baltimore", "Maryland", "212223", 13);

INSERT INTO Rental_Properties(Property_Num, Property_Name, Area_Square_Footing, Monthly_Manage_Fee, Advertised, Property_Type,
							  Property_Street, Property_City, Property_State, Property_Zip_Code, Property_Unit_Num)
VALUES(14, "Black Hill", 32000, 85000, False, "Industrial", "15 O street", "Baltimore", "Maryland", "212223", 14);

INSERT INTO Rental_Properties(Property_Num, Property_Name, Area_Square_Footing, Monthly_Manage_Fee, Advertised, Property_Type,
							  Property_Street, Property_City, Property_State, Property_Zip_Code, Property_Unit_Num)
VALUES(15, "White Hill", 43000, 95000, False, "Industrial", "16 P street", "Baltimore", "Maryland", "212223", 15);

INSERT INTO Rental_Properties(Property_Num, Property_Name, Area_Square_Footing, Monthly_Manage_Fee, Advertised, Property_Type,
							  Property_Street, Property_City, Property_State, Property_Zip_Code, Property_Unit_Num)
VALUES(16, "Grey Hill", 40500, 100000, False, "Industrial", "17 Q street", "Baltimore", "Maryland", "212223", 16);

INSERT INTO Rental_Properties(Property_Num, Property_Name, Area_Square_Footing, Monthly_Manage_Fee, Advertised, Property_Type,
							  Property_Street, Property_City, Property_State, Property_Zip_Code, Property_Unit_Num)
VALUES(17, "Blue Hill", 190000, 1000, False, "Industrial","18 P street", "Baltimore", "Maryland", "212223", 17);

INSERT INTO Rental_Properties(Property_Num, Property_Name, Area_Square_Footing, Monthly_Manage_Fee, Advertised, Property_Type,
							  Property_Street, Property_City, Property_State, Property_Zip_Code, Property_Unit_Num)
VALUES(18, "Red Hill", 150000, 980000, False, "Industrial", "19 Q street", "Baltimore", "Maryland", "212223", 18);

-- 6 Residential
INSERT INTO Residential(Property_Num, Property_Name, Bathroom_Num, Bedroom_Num)
VALUES(1, "Oak Hill", 2, 2); 

INSERT INTO Residential(Property_Num, Property_Name, Bathroom_Num, Bedroom_Num)
VALUES(2, "Willow Hill", 4, 3); 

INSERT INTO Residential(Property_Num, Property_Name, Bathroom_Num, Bedroom_Num)
VALUES(3, "Honey Hill", 5, 3); 

INSERT INTO Residential(Property_Num, Property_Name, Bathroom_Num, Bedroom_Num)
VALUES(4, "Coco Hill", 3, 3); 

INSERT INTO Residential(Property_Num, Property_Name, Bathroom_Num, Bedroom_Num)
VALUES(5, "Ash Hill", 4, 4); 

INSERT INTO Residential(Property_Num, Property_Name, Bathroom_Num, Bedroom_Num)
VALUES(6, "Bay Hill", 5, 5); 

-- 6 Commerical 
INSERT INTO Commerical(Property_Num, Property_Name, Coperation_Name)
VALUES(7, "Rubber Hill", "Burger King");

INSERT INTO Commerical(Property_Num, Property_Name, Coperation_Name)
VALUES(8, "Fig Hill", "Burger King");

INSERT INTO Commerical(Property_Num, Property_Name, Coperation_Name)
VALUES(9, "Locust Hill", "Five Guys");

INSERT INTO Commerical(Property_Num, Property_Name, Coperation_Name)
VALUES(10, "American Hill", "Five Guys");

INSERT INTO Commerical(Property_Num, Property_Name, Coperation_Name)
VALUES(11, "Dragon Hill", "KFC");

INSERT INTO Commerical(Property_Num, Property_Name, Coperation_Name)
VALUES(12, "Tree Hill", "KFC");

-- 6 Industrial properties  
INSERT INTO Industrial(Property_Num, Property_Name, Industrial_Name)
VALUES(13, "Beech Hill", "Amazon");

INSERT INTO Industrial(Property_Num, Property_Name, Industrial_Name)
VALUES(14, "Black Hill", "Amazon");

INSERT INTO Industrial(Property_Num, Property_Name, Industrial_Name)
VALUES(15, "White Hill", "Apple");

INSERT INTO Industrial(Property_Num, Property_Name, Industrial_Name)
VALUES(16, "Grey Hill", "Apple");

INSERT INTO Industrial(Property_Num, Property_Name, Industrial_Name)
VALUES(17, "Blue Hill", "Microsoft");

INSERT INTO Industrial(Property_Num, Property_Name, Industrial_Name)
VALUES(18, "Red Hill", "Microsoft");

-- 12 property viewing 
INSERT INTO Property_Viewing(Property_Num, Property_Name, Viewing_Date, Viewing_Time)
VALUES(1, "Oak Hill", "2020-06-15", "6:00:00");

INSERT INTO Property_Viewing(Property_Num, Property_Name, Viewing_Date, Viewing_Time)
VALUES(1, "Oak Hill", "2020-06-15", "7:00:00");

INSERT INTO Property_Viewing(Property_Num, Property_Name, Viewing_Date, Viewing_Time)
VALUES(1, "Oak Hill", "2020-06-15", "8:00:00");

INSERT INTO Property_Viewing(Property_Num, Property_Name, Viewing_Date, Viewing_Time)
VALUES(1, "Oak Hill", "2020-06-15", "9:00:00");

INSERT INTO Property_Viewing(Property_Num, Property_Name, Viewing_Date, Viewing_Time)
VALUES(1, "Oak Hill", "2020-06-16", "10:00:00");

INSERT INTO Property_Viewing(Property_Num, Property_Name, Viewing_Date, Viewing_Time)
VALUES(2, "Willow Hill", "2020-06-16", "7:00:00");

INSERT INTO Property_Viewing(Property_Num, Property_Name, Viewing_Date, Viewing_Time)
VALUES(2, "Willow Hill", "2020-06-16", "8:00:00");

INSERT INTO Property_Viewing(Property_Num, Property_Name, Viewing_Date, Viewing_Time)
VALUES(2, "Willow Hill", "2020-06-16", "9:00:00");

INSERT INTO Property_Viewing(Property_Num, Property_Name, Viewing_Date, Viewing_Time)
VALUES(3, "Honey Hill", "2020-06-17", "6:00:00");

INSERT INTO Property_Viewing(Property_Num, Property_Name, Viewing_Date, Viewing_Time)
VALUES(3, "Honey Hill", "2020-06-17", "7:00:00");

INSERT INTO Property_Viewing(Property_Num, Property_Name, Viewing_Date, Viewing_Time)
VALUES(3, "Honey Hill", "2020-06-18", "8:00:00");

INSERT INTO Property_Viewing(Property_Num, Property_Name, Viewing_Date, Viewing_Time)
VALUES(3, "Honey Hill", "2020-06-18", "9:00:00");

-- 6 Leaseas
INSERT INTO Lease(Lease_Num, Lease_Date, Lease_Deposit, Lease_Monthly_Rent, Lease_Start_Date, Lease_End_Date) 
VALUES(1, "2020-06-15", 4000, 1200,"2020-06-16", "2020-10-16");

INSERT INTO Lease(Lease_Num, Lease_Date, Lease_Deposit, Lease_Monthly_Rent, Lease_Start_Date, Lease_End_Date) 
VALUES(2, "2020-05-15", 5000, 1200,"2020-05-16", "2020-09-16");

INSERT INTO Lease(Lease_Num, Lease_Date, Lease_Deposit, Lease_Monthly_Rent, Lease_Start_Date, Lease_End_Date) 
VALUES(3, "2020-04-15", 6000, 1200,"2020-04-16", "2020-08-16");

INSERT INTO Lease(Lease_Num, Lease_Date, Lease_Deposit, Lease_Monthly_Rent, Lease_Start_Date, Lease_End_Date) 
VALUES(4, "2020-03-15", 8000, 1200,"2020-03-16", "2020-07-16");

INSERT INTO Lease(Lease_Num, Lease_Date, Lease_Deposit, Lease_Monthly_Rent, Lease_Start_Date, Lease_End_Date) 
VALUES(5, "2020-07-15", 7000, 6200,"2020-07-16", "2020-11-16");

INSERT INTO Lease(Lease_Num, Lease_Date, Lease_Deposit, Lease_Monthly_Rent, Lease_Start_Date, Lease_End_Date) 
VALUES(6, "2020-08-15", 9000, 7200,"2020-08-16", "2020-12-16");

-- Arranges Relationship 
INSERT INTO Arranges(Employee_Num, Employee_Name, Property_Num, Property_Name, Viewing_Date, Viewing_Time) 
VALUES(1, "John Bill", 1 , "Oak Hill", "2020-06-15", "6:00:00");

INSERT INTO Arranges(Employee_Num, Employee_Name, Property_Num, Property_Name, Viewing_Date, Viewing_Time) 
VALUES(1, "John Bill" ,1 , "Oak Hill", "2020-06-15", "7:00:00");

INSERT INTO Arranges(Employee_Num, Employee_Name, Property_Num, Property_Name, Viewing_Date, Viewing_Time) 
VALUES(1, "John Bill" ,1 , "Oak Hill", "2020-06-15", "8:00:00");

INSERT INTO Arranges(Employee_Num, Employee_Name, Property_Num, Property_Name, Viewing_Date, Viewing_Time) 
VALUES(1, "John Bill" ,1 , "Oak Hill", "2020-06-15", "9:00:00");

INSERT INTO Arranges(Employee_Num, Employee_Name, Property_Num, Property_Name, Viewing_Date, Viewing_Time) 
VALUES(2, "Bob Bell" , 2 , "Willow Hill", "2020-06-15", "6:00:00");

INSERT INTO Arranges(Employee_Num, Employee_Name, Property_Num, Property_Name, Viewing_Date, Viewing_Time) 
VALUES(2, "Bob Bell" , 2 , "Willow Hill", "2020-06-15", "7:00:00");

INSERT INTO Arranges(Employee_Num, Employee_Name, Property_Num, Property_Name, Viewing_Date, Viewing_Time) 
VALUES(2, "Bob Bell" , 2 , "Willow Hill", "2020-06-15", "8:00:00");

INSERT INTO Arranges(Employee_Num, Employee_Name, Property_Num, Property_Name, Viewing_Date, Viewing_Time) 
VALUES(2, "Bob Bell" , 2 , "Willow Hill", "2020-06-15", "9:00:00");

INSERT INTO Arranges(Employee_Num, Employee_Name, Property_Num, Property_Name, Viewing_Date, Viewing_Time) 
VALUES(3, "Jimmy Red" , 3 , "Willow Hill", "2020-06-15", "6:00:00");

INSERT INTO Arranges(Employee_Num, Employee_Name, Property_Num, Property_Name, Viewing_Date, Viewing_Time) 
VALUES(3, "Jimmy Red" , 3 , "Willow Hill", "2020-06-15", "7:00:00");

INSERT INTO Arranges(Employee_Num, Employee_Name, Property_Num, Property_Name, Viewing_Date, Viewing_Time) 
VALUES(3, "Jimmy Red" , 3 , "Willow Hill", "2020-06-15", "8:00:00");

INSERT INTO Arranges(Employee_Num, Employee_Name, Property_Num, Property_Name, Viewing_Date, Viewing_Time) 
VALUES(3, "Jimmy Red" , 3 , "Willow Hill", "2020-06-15", "9:00:00");

-- Assigned Partner
INSERT INTO Assigned_Partner(Employee_Num, Employee_Name, Owner_Num, Owner_Name)
VALUES(4, "Sam Green", 1, "Henry White");

INSERT INTO Assigned_Partner(Employee_Num, Employee_Name, Owner_Num, Owner_Name)
VALUES(4, "Sam Green", 2, "Cindy Morse");

INSERT INTO Assigned_Partner(Employee_Num, Employee_Name, Owner_Num, Owner_Name)
VALUES(5, "Quinn Blue", 3, "Eleni Cohen");

INSERT INTO Assigned_Partner(Employee_Num, Employee_Name, Owner_Num, Owner_Name)
VALUES(5, "Quinn Blue", 4, "Pat Doe");

INSERT INTO Assigned_Partner(Employee_Num, Employee_Name, Owner_Num, Owner_Name)
VALUES(6, "Tom Pink", 5, "Johan Ho");

INSERT INTO Assigned_Partner(Employee_Num, Employee_Name, Owner_Num, Owner_Name)
VALUES(6, "Tom Pink", 6, "Derek Burn");

-- Assigned Property
INSERT INTO Assigned_Property(Employee_Num, Employee_Name,Property_Num , Property_Name, Property_Status)
VALUES(1, "John Bill", 1, "Oak Hill",True);

INSERT INTO Assigned_Property(Employee_Num, Employee_Name,Property_Num , Property_Name, Property_Status)
VALUES(1, "John Bill", 2, "Willow Hill",True);

INSERT INTO Assigned_Property(Employee_Num, Employee_Name,Property_Num , Property_Name, Property_Status)
VALUES(1, "John Bill", 3, "Honey Hill",True);

INSERT INTO Assigned_Property(Employee_Num, Employee_Name,Property_Num , Property_Name, Property_Status)
VALUES(1, "John Bill", 4, "Coco Hill",True);

INSERT INTO Assigned_Property(Employee_Num, Employee_Name,Property_Num , Property_Name, Property_Status)
VALUES(2, "Bob Bell", 5, "Ash Hill",True);

INSERT INTO Assigned_Property(Employee_Num, Employee_Name,Property_Num , Property_Name, Property_Status)
VALUES(2, "Bob Bell", 6, "Bay Hill",True);

INSERT INTO Assigned_Property(Employee_Num, Employee_Name,Property_Num , Property_Name, Property_Status)
VALUES(2, "Bob Bell", 7, "Rubber Hill",True);

INSERT INTO Assigned_Property(Employee_Num, Employee_Name,Property_Num , Property_Name, Property_Status)
VALUES(2, "Bob Bell", 8, "Fig Hill",True);

INSERT INTO Assigned_Property(Employee_Num, Employee_Name,Property_Num , Property_Name, Property_Status)
VALUES(3, "Jimmy Red", 9, "Locust Hill",True);

INSERT INTO Assigned_Property(Employee_Num, Employee_Name,Property_Num , Property_Name, Property_Status)
VALUES(3, "Jimmy Red", 10, "American Hill",True);

INSERT INTO Assigned_Property(Employee_Num, Employee_Name,Property_Num , Property_Name, Property_Status)
VALUES(3, "Jimmy Red", 11, "Dragon Hill",True);

INSERT INTO Assigned_Property(Employee_Num, Employee_Name,Property_Num , Property_Name, Property_Status)
VALUES(3, "Jimmy Red", 12, "Tree Hill",True);

INSERT INTO Assigned_Property(Employee_Num, Employee_Name,Property_Num , Property_Name, Property_Status)
VALUES(1, "John Bill", 13, "Beech Hill Hill",True);

INSERT INTO Assigned_Property(Employee_Num, Employee_Name,Property_Num , Property_Name, Property_Status)
VALUES(1, "John Bill", 14, "Black Hill",True);

INSERT INTO Assigned_Property(Employee_Num, Employee_Name,Property_Num , Property_Name, Property_Status)
VALUES(1, "John Bill", 15, "White Hill",True);

INSERT INTO Assigned_Property(Employee_Num, Employee_Name,Property_Num , Property_Name, Property_Status)
VALUES(1, "John Bill", 16, "Grey Hill",True);

INSERT INTO Assigned_Property(Employee_Num, Employee_Name,Property_Num , Property_Name, Property_Status)
VALUES(1, "John Bill", 17, "Blue Hill",True);

INSERT INTO Assigned_Property(Employee_Num, Employee_Name,Property_Num , Property_Name, Property_Status)
VALUES(1, "John Bill", 18, "Red Hill",True);

-- Contract
INSERT INTO Contract(Lease_Num, Property_Name, Property_Num)
VALUES(1, "Ash Hill", 5); 

INSERT INTO Contract(Lease_Num, Property_Name, Property_Num)
VALUES(2, "Bay Hill", 6); 

INSERT INTO Contract(Lease_Num, Property_Name, Property_Num)
VALUES(3, "Rubber Hill", 7); 

INSERT INTO Contract(Lease_Num, Property_Name, Property_Num)
VALUES(4, "Fig Hill", 8); 

INSERT INTO Contract(Lease_Num, Property_Name, Property_Num)
VALUES(5, "Locust Hill", 9); 

INSERT INTO Contract(Lease_Num, Property_Name, Property_Num)
VALUES(6, "American Hill", 10); 

-- Owned By
INSERT INTO Owned_By(Property_Num, Property_Name, Owner_Num, Owner_Name) 
VALUES( 1, "Oak Hill", 1, "Henry White");

INSERT INTO Owned_By(Property_Num, Property_Name, Owner_Num, Owner_Name) 
VALUES( 2, "Willow Hill", 1, "Henry White");

INSERT INTO Owned_By(Property_Num, Property_Name, Owner_Num, Owner_Name) 
VALUES( 3, "Honey Hill", 1, "Henry White");

INSERT INTO Owned_By(Property_Num, Property_Name, Owner_Num, Owner_Name) 
VALUES( 4, "Coco Hill", 2, "Cindy Morse");

INSERT INTO Owned_By(Property_Num, Property_Name, Owner_Num, Owner_Name) 
VALUES( 5, "Ash", 2, "Cindy Morse");

INSERT INTO Owned_By(Property_Num, Property_Name, Owner_Num, Owner_Name) 
VALUES( 6, "Bay Hill", 2, "Cindy Morse");

INSERT INTO Owned_By(Property_Num, Property_Name, Owner_Num, Owner_Name) 
VALUES( 7, "Rubber Hill", 3, "Eleni Cohen");

INSERT INTO Owned_By(Property_Num, Property_Name, Owner_Num, Owner_Name) 
VALUES( 8, "Fig Hill", 3, "Eleni Cohen");

INSERT INTO Owned_By(Property_Num, Property_Name, Owner_Num, Owner_Name) 
VALUES( 9, "Locust Hill", 3, "Eleni Cohen");

INSERT INTO Owned_By(Property_Num, Property_Name, Owner_Num, Owner_Name) 
VALUES( 10, "American Hill", 4, "Pat Doe");

INSERT INTO Owned_By(Property_Num, Property_Name, Owner_Num, Owner_Name) 
VALUES( 11, "Dragon Hill", 4, "Pat Doe");

INSERT INTO Owned_By(Property_Num, Property_Name, Owner_Num, Owner_Name) 
VALUES( 12, "Tree Hill", 4, "Pat Doe");

INSERT INTO Owned_By(Property_Num, Property_Name, Owner_Num, Owner_Name) 
VALUES( 13, "Beech Hill", 5, "Johan Ho");

INSERT INTO Owned_By(Property_Num, Property_Name, Owner_Num, Owner_Name) 
VALUES( 14, "Black Hill", 5, "Johan Ho");

INSERT INTO Owned_By(Property_Num, Property_Name, Owner_Num, Owner_Name) 
VALUES( 15, "White Hill", 5, "Johan Ho");

INSERT INTO Owned_By(Property_Num, Property_Name, Owner_Num, Owner_Name) 
VALUES( 16, "Grey Hill", 6, "Derek Burn");

INSERT INTO Owned_By(Property_Num, Property_Name, Owner_Num, Owner_Name) 
VALUES( 17, "Blue Hill", 6, "Derek Burn");

INSERT INTO Owned_By(Property_Num, Property_Name, Owner_Num, Owner_Name) 
VALUES( 18, "Red Hill", 6, "Derek Burn");

-- Tours 
INSERT INTO Tours(Owner_Num, Owner_Name, Property_Num, Property_Name, Tour_Date, Tour_Time)
VALUES(1, "Henry White", 1, "Oak Hill", "2020-06-15", "06:00:00");

INSERT INTO Tours(Owner_Num, Owner_Name, Property_Num, Property_Name, Tour_Date, Tour_Time)
VALUES(1, "Henry White", 1, "Oak Hill", "2020-06-15", "07:00:00");

INSERT INTO Tours(Owner_Num, Owner_Name, Property_Num, Property_Name, Tour_Date, Tour_Time)
VALUES(1, "Henry White", 1, "Oak Hill", "2020-06-15", "08:00:00");

INSERT INTO Tours(Owner_Num, Owner_Name, Property_Num, Property_Name, Tour_Date, Tour_Time)
VALUES(1, "Henry White", 1, "Oak Hill", "2020-06-15", "09:00:00");

INSERT INTO Tours(Owner_Num, Owner_Name, Property_Num, Property_Name, Tour_Date, Tour_Time)
VALUES(1, "Henry White", 2, "Willow Hill", "2020-06-16", "06:00:00");

INSERT INTO Tours(Owner_Num, Owner_Name, Property_Num, Property_Name, Tour_Date, Tour_Time)
VALUES(1, "Henry White", 2, "Willow Hill", "2020-06-16", "07:00:00");

INSERT INTO Tours(Owner_Num, Owner_Name, Property_Num, Property_Name, Tour_Date, Tour_Time)
VALUES(1, "Henry White", 2, "Willow Hill", "2020-06-16", "08:00:00");

INSERT INTO Tours(Owner_Num, Owner_Name, Property_Num, Property_Name, Tour_Date, Tour_Time)
VALUES(1, "Henry White", 2, "Willow Hill", "2020-06-16", "09:00:00");

INSERT INTO Tours(Owner_Num, Owner_Name, Property_Num, Property_Name, Tour_Date, Tour_Time)
VALUES(1, "Henry White", 3, "Honey Hill", "2020-06-17", "06:00:00");

INSERT INTO Tours(Owner_Num, Owner_Name, Property_Num, Property_Name, Tour_Date, Tour_Time)
VALUES(1, "Henry White", 3, "Honey Hill", "2020-06-17", "07:00:00");

INSERT INTO Tours(Owner_Num, Owner_Name, Property_Num, Property_Name, Tour_Date, Tour_Time)
VALUES(1, "Henry White", 3, "Honey Hill", "2020-06-17", "08:00:00");

INSERT INTO Tours(Owner_Num, Owner_Name, Property_Num, Property_Name, Tour_Date, Tour_Time)
VALUES(1, "Henry White", 3, "Honey Hill", "2020-06-17", "09:00:00");

-- Views 
INSERT INTO Views(Client_Num, Client_Name, Property_Num, Property_Name, View_Date, View_Time)
VALUES(1, "Stan Brown", 1, "Oak Hill", "2020-06-15", "06:00:00");

INSERT INTO Views(Client_Num, Client_Name, Property_Num, Property_Name, View_Date, View_Time)
VALUES(2, "James Pro", 1, "Oak Hill", "2020-06-15", "07:00:00");

INSERT INTO Views(Client_Num, Client_Name, Property_Num, Property_Name, View_Date, View_Time)
VALUES(3, "Lance Bo", 1, "Oak Hill", "2020-06-15", "08:00:00");

INSERT INTO Views(Client_Num, Client_Name, Property_Num, Property_Name, View_Date, View_Time)
VALUES(4, "Nanes Po", 1, "Oak Hill", "2020-06-15", "09:00:00");

INSERT INTO Views(Client_Num, Client_Name, Property_Num, Property_Name, View_Date, View_Time)
VALUES(5, "Krames Taq", 2, "Willow Hill", "2020-06-16", "06:00:00");

INSERT INTO Views(Client_Num, Client_Name, Property_Num, Property_Name, View_Date, View_Time)
VALUES(6, "Ame Un", 2, "Willow Hill", "2020-06-16", "07:00:00");

INSERT INTO Views(Client_Num, Client_Name, Property_Num, Property_Name, View_Date, View_Time)
VALUES(7, "Suzanne Joseph", 2, "Willow Hill", "2020-06-16", "08:00:00");

INSERT INTO Views(Client_Num, Client_Name, Property_Num, Property_Name, View_Date, View_Time)
VALUES(8, "Valention Castro", 2, "Willow Hill", "2020-06-16", "09:00:00");

INSERT INTO Views(Client_Num, Client_Name, Property_Num, Property_Name, View_Date, View_Time)
VALUES(9, "Bethany Devlin", 3, "Honey Hill", "2020-06-17", "06:00:00");

INSERT INTO Views(Client_Num, Client_Name, Property_Num, Property_Name, View_Date, View_Time)
VALUES(10, "Cem Vega", 3, "Honey Hill", "2020-06-17", "07:00:00");

INSERT INTO Views(Client_Num, Client_Name, Property_Num, Property_Name, View_Date, View_Time)
VALUES(11, "Aiysha Gamble", 3, "Honey Hill", "2020-06-17", "08:00:00");

INSERT INTO Views(Client_Num, Client_Name, Property_Num, Property_Name, View_Date, View_Time)
VALUES(12, "Kasim Milne", 3, "Honey Hill", "2020-06-17", "09:00:00");

-- Signs Leases
INSERT INTO Sign_Lease(Client_Num, Client_Name, Lease_Num)
VALUES(1, "Stan Brown", 1); 

INSERT INTO Sign_Lease(Client_Num, Client_Name, Lease_Num)
VALUES(1, "Stan Brown", 2); 

INSERT INTO Sign_Lease(Client_Num, Client_Name, Lease_Num)
VALUES(1, "Stan Brown", 3); 

INSERT INTO Sign_Lease(Client_Num, Client_Name, Lease_Num)
VALUES(1, "Stan Brown", 4); 

INSERT INTO Sign_Lease(Client_Num, Client_Name, Lease_Num)
VALUES(1, "Stan Brown", 5); 

INSERT INTO Sign_Lease(Client_Num, Client_Name, Lease_Num)
VALUES(1, "Stan Brown", 6); 

-- Writes Lease 
INSERT INTO Writes_Lease(Employee_Num, Employee_Name, Lease_Num)
VALUES(1, "John Bill", 1); 

INSERT INTO Writes_Lease(Employee_Num, Employee_Name, Lease_Num)
VALUES(1, "John Bill", 2); 

INSERT INTO Writes_Lease(Employee_Num, Employee_Name, Lease_Num)
VALUES(2, "Bob Bell", 3); 

INSERT INTO Writes_Lease(Employee_Num, Employee_Name, Lease_Num)
VALUES(2, "Bob Bell", 4); 

INSERT INTO Writes_Lease(Employee_Num, Employee_Name, Lease_Num)
VALUES(3, "Jimmy Red", 5); 

INSERT INTO Writes_Lease(Employee_Num, Employee_Name, Lease_Num)
VALUES(3, "Bob Bell", 6); 