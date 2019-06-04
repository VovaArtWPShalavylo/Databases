-- ================================================
-- Template generated from Template Explorer using:
-- Create Trigger (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- See additional Create Trigger templates for more
-- examples of different Trigger statements.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
--CREATE TRIGGER <Schema_Name, sysname, Schema_Name>.<Trigger_Name, sysname, Trigger_Name> 
--   ON  <Schema_Name, sysname, Schema_Name>.<Table_Name, sysname, Table_Name> 
--   AFTER <Data_Modification_Statements, , INSERT,DELETE,UPDATE>
--AS 
--BEGIN
--	-- SET NOCOUNT ON added to prevent extra result sets from
--	-- interfering with SELECT statements.
--	SET NOCOUNT ON;

--    -- Insert statements for trigger here

--END
--GO

Create trigger trig1 
	ON Tour after update 
	as begin set nocount on;
	declare @price int
	declare @id int
	set @price = (select price from inserted)
	set @id = (select id from inserted)

	if @price > 2100
		update Tour
		set price = @price - 300
		where id = @id 

	declare @price2 int
	set @price2 = @price - 300

	if @price2 >= 2000
	update [Tour_Rout]
		set transport = 'plane'
		where @id = tour_id
	end
	go

--drop trigger trig1