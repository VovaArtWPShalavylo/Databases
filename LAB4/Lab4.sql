use Tour_firm;

INSERT INTO [User]
VALUES ( 'Ivan','Borislavov','Ivan Borislavov',228),
		( 'Andrew', 'Andrewich' , 'Andrew Andrewich',229),
		( 'Oleg','Olegovich','Oleg Olegovich',230),
		( 'Semen','Semenovich','Semen Semenovich',231);

INSERT INTO Tour
VALUES (1, 1500 , '2019.06.21','2019.07.01', 40 ,'all inclusive'),
		(2, 2400 , '2019.07.01', '2019.07.11', 31 , 'ultra all inclusive' ),
		(3, 1000 , '2019.07.02', '2019.07.9', 40 , 'all inclusive' ),
		(4, 3500 , '2019.07.03', '2019.07.17', 21 , 'ultra all inclusive' ),
		(5, 900 , '2019.07.04', '2019.07.11', 50 , 'all inclusive' ),
		(6, 1200 , '2019.07.05', '2019.07.13', 37 , 'all inclusive' ),
		(7, 800 , '2019.07.06', '2019.07.12', 49 , 'mid' );

INSERT INTO [Order]
VALUES (201, 17, 4, 1, 'Cash','2019.03.11','2019.07.03'),
		(101, 18, 5, 1, 'Card','2019.02.15','2019.07.04'),
		(560, 19, 7, 1, 'Cash','2019.05.14','2019.07.06'),
		(98, 20, 2, 0, 'Card','2019.01.19','2019.07.01');

Bulk insert Hotel from 'D:Hotel.txt'
with(
fieldterminator = ',',
rowterminator='\n'
)

Bulk insert Place from 'D:Place.txt'
with(
fieldterminator = ',',
rowterminator='\n'
)

Bulk insert Tour_Rout from 'D:Tour_Rout.txt'
with(
fieldterminator = ',',
rowterminator='\n'
)

update Place set city='Ankara'
	where id = 4