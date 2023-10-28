-- data retrival
-- 1) FOR SELECTING SPECFIC COLUMN
SELECT  
	name ,
    phone,
    otp_verified
FROM 
	User_info;

-- 2) FOR SELECTING EVERY COLUMN 
-- (IT SHOULD BE AVOIDED BECAUSE IT RETRIVE ALL DATA THAT INCREASE TRAFFIC)
SELECT *
FROM
	User_info;
    
-- 3) TASK : FIND THE UNIQUE ITEM IN THE MENUITEMS TABLE
-- IF YOU WANT TO SHOW UNIQUE VALUE YOU HAVE TO USE THE KEYWORD 'DISTINCT'
SELECT 
	DISTINCT name 
FROM 
	MenuItems;
-- This distict column only shows the unique item name in the
-- MenuItems table
	
