--SELECT [User].name , [User].surname , [User].passport_id		1
	--FROM [User] WHERE id = 19;	

--SELECT [User].name , [User].surname , [User].passport_id ,[Order].DateBooking , [Order].TourPayment			2
	--FROM [User] LEFT JOIN [Order] ON [User].id = [Order].UserID; 

--SELECT [User].name , [User].surname , [Order].TourPayment					3
	--FROM [User] INNER JOIN [Order] ON [Order].UserID = [User].id 
	--WHERE [Order].TourPayment = 1; 

--SELECT Hotel.name , Hotel.stars , Place.city , Place.country
	--FROM Hotel INNER JOIN  Place ON Hotel.placeID = Place.id
	--WHERE Hotel.stars IN (4,5);

SELECT [Order].UserID , [Order].TourID ,[Order].ID FROM [Order]
	WHERE NOT EXISTS
	(SELECT * FROM [User] WHERE [Order].UserID = [User].id);
