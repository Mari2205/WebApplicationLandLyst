select * from dbo.Room
join dbo.RoomServices
on dbo.Room.RoomNo = dbo.RoomServices.RoomNo
join dbo.Booking
on dbo.Booking.RoomNo = dbo.Room.RoomNo
where dbo.RoomServices.SerName = 'Doubletseng' and dbo.Room.Cleaned = 'true' and 
'2020/05/03' between Booking.CheckIn and Booking.CheckOut and 
'2020/10/01' between Booking.CheckIn and Booking.CheckOut and 
dbo.Room.RoomNo = 506 

select * from dbo.Room
join dbo.RoomServices
on dbo.Room.RoomNo = dbo.RoomServices.RoomNo
join dbo.Booking
on dbo.Booking.RoomNo = dbo.Room.RoomNo
where '2020-04-05' not between Booking.CheckIn and Booking.CheckOut and 
'2020-12-30' between Booking.CheckIn and Booking.CheckOut 

select * from dbo.Room
join dbo.RoomServices
on dbo.Room.RoomNo = dbo.RoomServices.RoomNo
join dbo.Booking
on dbo.Booking.RoomNo = dbo.Room.RoomNo
--where Booking.CheckIn not between '2020-05-01' and '2020-06-20' and 
--Booking.CheckOut not between '2020-10-01' and '2021-11-20'

select * from dbo.Room
join dbo.RoomServices
on dbo.Room.RoomNo = dbo.RoomServices.RoomNo


select * from Booking

--SELECT *FROM Room
--where room.Cleaned = 'True' AND NOT EXISTS 
--(SELECT * FROM Booking
--WHERE Booking.CheckOut >= )
--AND Booking.CheckIn <= 

select * from Room
where EXISTS (
select * from Booking 
where Booking.CheckIn >= '05/02/2020'
and Booking.CheckOut <= '12/04/2020')







select dbo.RoomServices.RoomNo, dbo.Room.Price from dbo.Room
join dbo.RoomServices
on dbo.Room.RoomNo = dbo.RoomServices.RoomNo
where dbo.RoomServices.SerName = 'Doubletseng' and dbo.Room.Cleaned = 'true' and Room.RoomNo <> 506


select dbo.Booking.RoomNo from dbo.Booking
where Booking.CheckIn between '2020-05-01' and '2020-10-03'

select * from dbo.Room
where RoomNo <> 506

select * from Booking

