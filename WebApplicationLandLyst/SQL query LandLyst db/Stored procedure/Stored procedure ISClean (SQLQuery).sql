-- UPDATE ROOM TABLE
CREATE PROCEDURE ISClean 
@RoomNo INT
AS
BEGIN
UPDATE Room 
SET Room.Cleaned = 1
WHERE Room.RoomNo = @RoomNo;
END;