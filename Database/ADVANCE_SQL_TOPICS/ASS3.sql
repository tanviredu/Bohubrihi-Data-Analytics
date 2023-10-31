SELECT name FROM User_info;

SELECT name FROM User_info
WHERE SUBSTRING_INDEX(name," ",-1)  LIKE "S%" OR SUBSTRING_INDEX(name," ",-1) LIKE "%e" ;

