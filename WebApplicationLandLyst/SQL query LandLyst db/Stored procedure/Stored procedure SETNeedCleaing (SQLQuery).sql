-- UPDATE ROOM TABLE
CREATE PROCEDURE SETNeedCleaing 
@RoomNo INT
AS
BEGIN
UPDATE Room 
SET Room.Cleaned = 0
WHERE Room.RoomNo = @RoomNo;
END;
