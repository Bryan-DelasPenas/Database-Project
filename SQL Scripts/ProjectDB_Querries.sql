USE ProjectDB; 
-- 1) List the names of all the unique clients
SELECT DISTINCT Client_Name
FROM Client; 

-- 2) Find the unique names of owners and total square footage of all the properties they own
SELECT DISTINCT Owner_Name, SUM(Area_Square_Footing) as 'Total Square Footage'
FROM Owned_By NATURAL JOIN Rental_Properties 
GROUP BY Owner_Name; 

-- 3) Find the properties shown by each associate in a given month. 
SELECT Employee_Name, Property_Name
FROM Arranges
WHERE MONTH(Viewing_Date) = '06'
GROUP BY Employee_Name;

-- 4) Find the most popular properties (in terms of number of viewings in a given year)
--    This querry can be changed for any valid year you want
SELECT Property_Name, Count(Property_Name) as 'Viewing Per Year in 2020'
FROM Property_Viewing
WHERE Year(Viewing_Date) = '2020'
GROUP BY Property_Name;

-- 5) Find the total rent due to each property owner.
SELECT Owner_Name as 'Property Owner', Sum(Lease_Monthly_Rent) as 'Total Rent'
FROM(Lease NATURAL JOIN Contract), Rental_Properties, Owned_By
WHERE (Contract.Property_Num = Rental_Properties.Property_Num) AND Rental_Properties.Property_Num = Owned_By.Property_Num
Group BY Owner_Name;

-- 6) Find the unique names of associates supervised (directly or indirectly) by a given employee. 
--    This querry can be changed to any valid employee number
SELECT DISTINCT Employee_Name
FROM Associates NATURAL JOIN Employee 
WHERE (Supervisor_Num = 1) and (Employee_Num != Supervisor_Num); 

-- 7)  Find the unique names of owners that have a residential property in every city where Pat Doe owns a commercial property
SELECT DISTINCT Owner_Name
FROM Owned_By NATURAL JOIN Rental_Properties
WHERE(Property_City in (SELECT Property_City
FROM Owned_By NATURAL JOIN Rental_Properties
WHERE(Owner_Name = 'Pat Doe' and Property_Type = 'Commerical')))
GROUP BY Owner_Name;

-- 8) Find the top-3 partners with respect to number of properties leased in the current year
--    This querry can be changed to any valid year 
SELECT Employee_Name, Count(*) as ' Number of Properties'
FROM Writes_Lease NATURAL JOIN Lease
WHERE YEAR(Lease_Date) = '2020'
GROUP BY Employee_Name
Order BY Count(*) DESC
LIMIT 3; 





