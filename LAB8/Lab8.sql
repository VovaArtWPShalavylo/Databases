--SELECT id , [name] , surname , full_name , passport_id from [User] order by [name] ASC;

--SELECT TOP 3 [User].id , [User].full_name , [Order].UserID , [Order].TourID , Tour.id , Tour.[start_date] , Tour.end_date , Tour.[type] from [User], [Order], Tour
--WHERE [User].id = [Order].UserID AND [dbo].[Order].TourID = Tour.id
--ORDER BY Tour.[start_date] 

SELECT Tour.[type] , Hotel.[name] , Hotel.stars 
from (Tour INNER JOIN Tour_Rout ON Tour.id = Tour_Rout.tour_id) INNER JOIN Hotel ON Tour_Rout.HotelID = Hotel.id
group by Tour.[type],Hotel.stars,Hotel.[name];