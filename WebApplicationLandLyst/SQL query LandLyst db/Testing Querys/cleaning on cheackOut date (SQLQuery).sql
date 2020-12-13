UPDATE dbo.Room
SET Cleaned = 0
from Room
join dbo.Booking
on dbo.Room.RoomNo = dbo.Booking.RoomNo
where Booking.CheckOut = CONVERT(date, getdate())




