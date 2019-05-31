--SELECT [User].full_name , COUNT([Order].UserID) as AmountOfUsers
--FROM [Order] INNER JOIN [User]
--ON [User].id = [Order].UserID
--group by full_name;

--SELECT YEAR(start_date) as YearC ,MONTH(start_date) as MonthC, COUNT(id) as Tours
--FROM Tour
--group by start_date,MONTH(start_date) with rollup;

SELECT Place.city as City_Name , AVG(LEN (Hotel.[name])) as avgHotelName
from Place INNER JOIN Hotel
ON Place.id = Hotel.placeID
group by Place.city, Hotel.[name];