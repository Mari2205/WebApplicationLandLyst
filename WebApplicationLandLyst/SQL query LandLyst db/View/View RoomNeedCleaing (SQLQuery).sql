CREATE VIEW RoomNeedCleaing 
AS
SELECT RoomNo FROM Room
WHERE Room.Cleaned = 0;



