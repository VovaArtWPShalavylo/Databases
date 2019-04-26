use Tour_firm;

--select * into Hotel1 from Hotel
--where stars > 4

--select * into Hotel2 from Hotel
--where stars <= 4

--select * from Hotel1 UNION select  * from Hotel2

--select * from Hotel1 where placeID in (select placeID from Hotel2)

--select * from Hotel1 where placeID not in (select placeID from Hotel2)

select * from Hotel1,Hotel2 
