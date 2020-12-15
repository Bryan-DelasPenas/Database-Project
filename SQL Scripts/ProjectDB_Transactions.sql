-- My own trigger that I created, after before each insertion of a Rental Property
-- Changes the advertised boolean to be 1 or True 
DROP TRIGGER IF EXISTS IntialAdvertisment; 
DELIMITER $$ 
CREATE TRIGGER IntialAdvertisment 
	before INSERT ON Rental_Properties FOR EACH ROW
Begin
    Set new.Advertised = 1;
END$$
DELIMITER ;  

-- 10) Create a SQL trigger to automatically set to FALSE the advertisement flag of a property when it is
--     leased. This Trigger is written so that every time a new contract is formed, changes the property 
--     advertised to be 0 or False 
DROP TRIGGER IF EXISTS UpdateAdvertisment; 
DELIMITER $$ 
CREATE TRIGGER UpdateAdvertisment 
AFTER INSERT ON Contract FOR EACH ROW
 Begin
     UPDATE Rental_Properties
     Set Advertised = 0 
  Where Property_Num = new.Property_Num;
END$$
DELIMITER ;  

-- 9) Write a SQL function to compute the total management fees due to Pluto in the last 3 months.
--    Change the function to be any set of 3 consequent months that you need. 
DROP FUNCTION IF EXISTS MonthlyManagmentFees;
DELIMITER $$
CREATE FUNCTION MonthlyManagmentFees(Property_Num int) 
	RETURNS INTEGER
	CONTAINS SQL READS SQL DATA
BEGIN 
	DECLARE amount_one INTEGER;
	DECLARE amount_two INTEGER;
    DECLARE amount_three INTEGER;
    SELECT SUM(Monthly_Manage_Fee) INTO amount_one
	FROM(Lease NATURAL JOIN Contract), Rental_Properties
	WHERE (Contract.Property_Num = Rental_Properties.Property_Num) 
    AND (Month(Lease_Date) = '04' AND Month(Lease_End_Date) > '06' );
	
	SELECT SUM(Monthly_Manage_Fee) INTO amount_two
	FROM(Lease NATURAL JOIN Contract), Rental_Properties
	WHERE (Contract.Property_Num = Rental_Properties.Property_Num) 
    AND (Month(Lease_Date) = '05' OR Month(Lease_Date) = '04') AND (Month(Lease_End_Date) > '06');
    
	SELECT SUM(Monthly_Manage_Fee) INTO amount_three
	FROM(Lease NATURAL JOIN Contract), Rental_Properties
	WHERE (Contract.Property_Num = Rental_Properties.Property_Num) 
    AND (Month(Lease_Date) = '06' OR Month(Lease_Date) = '05' OR Month(Lease_Date) = '04') AND (Month(Lease_End_Date) > '06' );
    
    Return amount_one + amount_two + amount_three;
END$$
DELIMITER ; 

