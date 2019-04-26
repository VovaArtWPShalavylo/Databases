
--CREATE VIEW Tour2 AS SELECT DISTINCT id, price, type FROM Tour;

--SELECT *
	--FROM Tour2
	--WHERE price >= 1000 AND price <= 2000

--SELECT Tour_Rout.HotelID , Tour_Rout.tour_id , Tour_Rout.transport , Tour2.price , Tour2.type
	--FROM Tour_Rout, Tour2 
	--WHERE Tour_Rout.tour_id = Tour2.id

SELECT Tour_Rout.HotelID , Tour_Rout.tour_id , Tour_Rout.transport , Tour2.price , Tour2.type
	FROM Tour_Rout, Tour2
	WHERE Tour_Rout.tour_id = Tour2.id AND Tour_Rout.HotelID = 5
