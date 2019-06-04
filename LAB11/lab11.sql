use Tour_firm;

--Begin Transaction Transaction1;
	
--	Create table TransTable1(
--		id int,
--		name varchar(50)
--	)
--	insert into TransTable1
--	values(1, 'Vova')

--commit;

--Select TransTable1.id , TransTable1.name
--from TransTable1

--Begin transaction Transaction2;

--	select top(2) * from Hotel where stars = 5
--	order by name ASC

--	select * from Hotel where stars = 4
--	order by price desc

--commit;

--Викликати минулу процедуру з 10 лаби , точка збереження , заповнити даними коректними і не коректними , точка відкату

Begin transaction Transaction3;
	execute spHotel 1
	Save transaction temp3;
	--Insert into Hotel Values('King Hotel', 3, 500, 6);
	SAVE TRANSACTION temp1;
	Insert into Hotel Values('Lviv Hotel', 3, 500, 6);
	SAVE TRANSACTION temp2;
	Rollback transaction temp2



select*from Hotel;