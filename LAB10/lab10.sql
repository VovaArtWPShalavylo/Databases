---- ================================================
---- Template generated from Template Explorer using:
---- Create Procedure (New Menu).SQL
----
---- Use the Specify Values for Template Parameters 
---- command (Ctrl-Shift-M) to fill in the parameter 
---- values below.
----
---- This block of comments will not be included in
---- the definition of the procedure.
---- ================================================
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
---- =============================================
---- Author:		<Author,,Name>
---- Create date: <Create Date,,>
---- Description:	<Description,,>
---- =============================================
--CREATE PROCEDURE <Procedure_Name, sysname, ProcedureName> 
--	-- Add the parameters for the stored procedure here
--	<@Param1, sysname, @p1> <Datatype_For_Param1, , int> = <Default_Value_For_Param1, , 0>, 
--	<@Param2, sysname, @p2> <Datatype_For_Param2, , int> = <Default_Value_For_Param2, , 0>
--AS
--BEGIN
--	-- SET NOCOUNT ON added to prevent extra result sets from
--	-- interfering with SELECT statements.
--	SET NOCOUNT ON;

--    -- Insert statements for procedure here
--	SELECT <@Param1, sysname, @p1>, <@Param2, sysname, @p2>
--END
--GO

--drop procedure spHotel

CREATE PROCEDURE spHotel  
  @HotelID int

AS
BEGIN
   SET NOCOUNT ON 
   
   Select Hotel.[name] as HotelName, count(Tour_Rout.HotelID) from Tour_Rout inner join Hotel on Hotel.id = Tour_Rout.HotelID 
   where Hotel.id = @HotelID
   group by Hotel.[name] 
   
    
END
GO
exec spHotel 1;

--CREATE PROCEDURE spTest
--  @id int ,
--  @TourID int

--AS
--BEGIN
--   SET NOCOUNT ON 
--   select * from [User] inner join [Order] on [Order].UserID = [User].id
    
--END
--GO
--exec spTest 1,1;