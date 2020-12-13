-- ADD GUESTS
CREATE PROCEDURE AddNewGuests @Forename VARCHAR(30), @Lastname VARCHAR(30),
@Address VARCHAR(30), @Email VARCHAR(30), @TelefonNo INTEGER, @ZipCode INTEGER
AS
BEGIN
INSERT INTO Guests 
(ForeName,LastName,Address,Email,TelephoneNo,ZipCode)
VALUES 
(@Forename,@Lastname,@Address,@Email,@TelefonNo,@ZipCode)
END;




