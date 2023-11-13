-- INNER JOIN ONLY TAKE THE COMMON VALUE
-- OUTER JOIN TAKES BOTH COMMON AND UN COMMON VALUE
-- THREE TYPES OF OUTER JOIN
-- LEFT JOIN  (ALL FROM LEFT TABLE AND COMMON FROM THE RIGHT TABLE)
-- RIGHT JOIN (ALL FROM RIGHT TABLE AND COMON FROM THE LEFT)
-- FULL OUTER JOIN (TABLE DATA FROM BOTH TABLE AND ALSO THE COMMON) IT WILL TAKE ALL THE DATA
-- IT ISA  UNION BETWEEN LEFT JOIN AND RIGHT JOIN


-- LEFT JOIN TASK:
-- 1) FIND ALL  USERS AND WHO ORDER 
-- 2)  FIND THE USERS WHO ORDERED ALSO NOT ORDERED
-- 3) FIND ALL THE USRS WHO DONT ORDERED

-- 1)
SELECT * FROM User_info U
INNER JOIN Orders O
ON U.ID = O.user_id;

-- 2) 
SELECT DISTINCT U.name , O.restaurant_id  FROM User_info U LEFT JOIN Orders O
ON U.ID = O.User_id;

-- 3) 
SELECT DISTINCT U.name ,O.restaurant_id  FROM User_info U LEFT JOIN Orders O
ON U.ID = O.User_id
WHERE O.restaurant_id IS NULL;
 
 -- RIGHT JOIN
 -- SAME THING
 -- FETCH EVERYTHING FROM THE RIGHT TABLE AND COMMON FROM THE LEFT TABLE
 SELECT COUNT(Distinct city_id) FROM city; ## THERE ARAE 10 city in city table
 SELECT COUNT(DISTINCT city_id) FROM User_info; ## it is 9
 -- so we have 10 city and make ti right table
 -- and 9 city entry in the user table
 -- right join will take everything from the right table alter
 -- and commn fromthe left table
 
 SELECT U.name,C.city_name FROM User_info U
 RIGHT JOIN city C ON
 U.CITY_ID = C.city_id;
 
