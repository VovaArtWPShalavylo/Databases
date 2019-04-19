IF EXISTS(SELECT * FROM sys.databases where name = 'Tour_firm')
DROP DATABASE Tour_firm;

create database Tour_firm;

use Tour_firm;

Create table Place(
	id INT not null identity(1,1),
	city nvarchar(50),
	country nvarchar(50),
	Primary key (id)
);

Create table Hotel(
	id INT not null identity(1,1),
	name nvarchar(50),
	stars INT,
	price INT,
	placeID INT,
	Primary key (id),
	Constraint Place_Hotel FOREIGN KEY (placeID)
	REFERENCES Place(id) ON DELETE NO ACTION ON UPDATE NO ACTION 
);


Create table Tour(
	id INT not null,
	price INT,
	start_date date,
	end_date date,
	user_amount INT,
	type nvarchar(50),
	Primary key (id)
);

Create table Tour_Rout(
	HotelID INT,
	tour_id INT,
	transport nvarchar(50),
	
	Constraint Hotel_Tour_Rout FOREIGN KEY (HotelID)
	REFERENCES Hotel(id) ON DELETE NO ACTION ON UPDATE NO ACTION, 
	
	Constraint Tour_Rout_Tour FOREIGN KEY (tour_id)
	REFERENCES Tour(id) ON DELETE NO ACTION ON UPDATE NO ACTION 

);

Create table [User](
	id INT not null identity(1,1),
	name nvarchar(50),
	surname nvarchar(50),
	full_name nvarchar(50),
	passport_id INT,
	Primary key (id)
);

Create table [Order](
	ID INT not null,
	UserID INT,
	TourID INT,
	TourPayment bit,
	TypePayment nvarchar(50),
	DateBooking date,
	DateTrip date,
	Primary key (id),

	Constraint Order_Tour FOREIGN KEY (TourID)
	REFERENCES Tour(id) ON DELETE NO ACTION ON UPDATE NO ACTION 
	

);

Create table Squad(
	UserID INT,
	OrderID INT,
	TourID INT,
	AgeState nvarchar(50),
	sex nvarchar(50),
	Constraint User_Squad FOREIGN KEY (UserID)
	REFERENCES [User](id) ON DELETE NO ACTION ON UPDATE NO ACTION,
	
	Constraint Order_Squad FOREIGN KEY (OrderID)
	REFERENCES [Order](id) ON DELETE NO ACTION ON UPDATE NO ACTION ,

	Constraint Tour_Squad FOREIGN KEY (TourID)
	REFERENCES Tour(id) ON DELETE NO ACTION ON UPDATE NO ACTION 

);




