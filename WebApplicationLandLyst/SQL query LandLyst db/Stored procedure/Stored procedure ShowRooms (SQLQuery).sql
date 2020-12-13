CREATE PROCEDURE ShowRooms @usrCheckInDate Date, @usrCheckOutDate Date, @usrService Varchar(30), @usrRoomNo Integer
AS
select * from dbo.Room
join dbo.RoomServices
on dbo.Room.RoomNo = dbo.RoomServices.RoomNo
join dbo.Booking
on dbo.Booking.RoomNo = dbo.Room.RoomNo
where dbo.RoomServices.SerName = @usrService and dbo.Room.Cleaned = 'true' and 
@usrCheckInDate between Booking.CheckIn and Booking.CheckOut and 
@usrCheckOutDate between Booking.CheckIn and Booking.CheckOut and 
dbo.Room.RoomNo = @usrRoomNo 




