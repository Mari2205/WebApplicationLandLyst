-- AddBooking
CREATE PROCEDURE AddBooking @CheckIn DATE,@CheckOut DATE,@GuestsID INTEGER, @RoomNo INTEGER
AS
BEGIN
INSERT INTO Booking 
(CheckIn,CheckOut,GuestsID,RoomNo)
VALUES 
(@CheckIn,@CheckOut,@GuestsID,@RoomNo)
END;




