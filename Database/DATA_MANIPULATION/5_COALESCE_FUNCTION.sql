-- THE COALESCE FUNCTION ALLOW YOU TO REPLACE NULL 
-- VALUES WITH SUITABLE ALTERNATIVE
-- EXAMPLE
-- COALESCE FUNCTION CAN TAKE MULTIPLE PARAMETER
-- IF THE FIRST ONE IS NULL THEN IT GO TO SECOND
-- IF THE SECOND ONE IS NULL THEN IT FO TO THIRD AND SO ON

-- COALESCE(FIRST,SECOND,THIRD,FOURTH)
-- ALL CAN BE EXPRESSION OR VALUES 


SELECT C.city_name,COALESCE(O.name,"N/A") AS NAME,COALESCE(O.phone,"N/A") AS PhoneNumber from city C 
LEFT JOIN User_info O
ON C.city_id = O.CITY_ID; 