--CREATE TABLE RoomAudit
--(
--RoomNo INTEGER,
--Cleaned BIT,
--Price INTEGER,
--Audit_Action varchar(100),
--Audit_Timestamp datetime
--)



-- After trigger (using FOR/AFTER CLAUSE) - insert, update, or delete

--Instead of Trigger (using INSTEAD OF CLAUSE) - insert, update, or delete


--Drop trigger trgAfterRoomChanges

CREATE TRIGGER trgAfterRoomChanges ON dbo.Room
FOR INSERT, UPDATE, DELETE  
AS  
declare @roomNo int;  
declare @cleaned BIT;  
declare @price INTEGER; 
declare @type VARCHAR(1)

if exists (select * from inserted) and exists (select * from deleted)
    select @type = 'U'
else if exists (select * from inserted)
    select @type = 'I'
else
    select @type = 'D'

declare @audit_action varchar(100); 
select @roomNo = i.RoomNo from inserted i;   
select @cleaned = i.Cleaned from inserted i;   
select @price = i.Price from inserted i;   
set @audit_action = SYSTEM_USER;

insert into dbo.RoomAudit  
(RoomNo,Cleaned,Price,Audit_Action,Audit_Timestamp)   
values(@roomNo,@cleaned,@price,@audit_action,getdate());  

PRINT 'AFTER INSERT trigger fired.'  
GO  

 