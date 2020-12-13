--DROP VIEW EmergingGursts;

CREATE VIEW EmergingGursts 
AS
SELECT * FROM Booking
WHERE Booking.CheckIn >= GETDATE()
-- one can use order by in a view so it does when calling the view



